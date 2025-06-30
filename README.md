# Gowagr Assessment Project README

This README provides a detailed explanation of the architectural choices, state management strategy, caching implementation, and key design decisions made for the Gowagr mobile engineer assessment Flutter project.

## Architecture and Folder Structure

This project is structured based on **Clean Architecture principles**, aiming to promote high cohesion and loose coupling between different parts of the application. This approach ensures better maintainability, scalability, and testability.

**Layer Responsibilities:**

* **Presentation Layer (`lib/features/events/presentation`):** This layer is responsible for displaying data and handling user interactions. It consists of:
  * **UI (Pages & Widgets):** The visual components of the application. They are "dumb" and only responsible for rendering based on the state they receive and dispatching events to the BLoC.
  * **BLoC:** Acts as an intermediary between the UI and the Domain layer. It receives events from the UI, processes them using use cases, and emits new states back to the UI.
* **Domain Layer (`lib/features/events/domain`):** This is the core of the application, housing the essential business logic and rules. It is completely independent of any frameworks (Flutter, HTTP, Hive) or external concerns. It defines:
  * **Entities:** Immutable plain Dart objects that represent the business concepts (e.g., `EventEntity`).
  * **Use Cases:** Specific operations or business rules that orchestrate interactions between different parts of the application (e.g., `GetEvents`).
  * **Repositories (Abstract):** Define contracts for data operations that the domain layer needs, without specifying how those operations are performed.
* **Data Layer (`lib/features/events/data`):** This layer is responsible for retrieving and storing data. It consists of:
  * **Models:** Data structures that are specific to external data sources (e.g., API JSON response, Hive objects). They contain methods for mapping to and from domain entities.
  * **Data Sources:** Implement the actual mechanisms for fetching data, such as `EventRemoteDataSourceImpl` for HTTP requests and `EventLocalDataSourceImpl` for Hive operations.
  * **Repositories (Concrete):** Implement the abstract repository interfaces defined in the domain layer. They decide *where* to get the data from (remote or local) based on business rules (e.g., network connectivity).

**Core Layer (`lib/core`):** This layer holds foundational components that are reused across all features, ensuring consistency and preventing code duplication (e.g., common error classes, network utility).

**Dependency Management:**
The project uses **`GetIt`** for dependency injection and **`Injectable`** for compile-time code generation. This setup simplifies dependency resolution, makes the codebase more modular, and significantly improves testability by allowing easy mocking of dependencies.

## State Management Approach

The project utilizes **BLoC (Business Logic Component)** for managing the application's state. BLoC is chosen for its emphasis on predictable state management, clear separation of concerns, and robust testability.

**Key Aspects of BLoC Implementation:**

* **Events (`events_event.dart`):** These are abstract representations of actions or intents from the UI or other parts of the application. Events are dispatched to the BLoC (e.g., `EventsEvent.fetchEvents()`, `EventsEvent.searchEvents()`). `freezed` is used here to create sealed classes for immutable event objects, providing union types and reducing boilerplate.
* **States (`events_state.dart`):** These represent the different states the UI can be in (e.g., `EventsState.initial()`, `EventsState.loading()`, `EventsState.loaded()`, `EventsState.error()`, `EventsState.empty()`). Each state carries the necessary data for the UI to render. `freezed` is also used for states, ensuring immutability and easy pattern matching in the UI (`state.map()` or `state.when()`).
* **BLoC (`events_bloc.dart`):** This is the core component that processes events and emits new states. It listens to incoming `Events`, executes business logic (via `UseCases`), and then transforms the results into new `States` that are streamed to the UI. The BLoC is annotated with `@injectable` for automatic dependency injection.

This event-state pattern ensures that all state changes are explicit, traceable, and testable, leading to a more stable and maintainable application.

## Caching Implementation

An **offline-first experience** is a key requirement, and it is achieved through local data caching using **Hive**, a lightweight and highly performant NoSQL database.

**Implementation Details:**

1. **Hive Setup and Model Integration:**
    * `hive_flutter` and `hive_generator` are included in `pubspec.yaml`.
    * `Hive.initFlutter()` is called early in `main.dart` to initialize the database.
    * All data models (`EventsApiResponse`, `EventAPIOuterModel`, `MarketModel`, `PaginationModel`) are annotated with `@HiveType` and their fields with `@HiveField`. This allows `hive_generator` to create specialized `TypeAdapter`s for efficient serialization/deserialization of these custom objects into Hive.
    * Crucially, all generated `TypeAdapter`s (e.g., `EventsApiResponseAdapter()`) are registered in `main.dart` *before* any Hive boxes are opened.
    * A dedicated Hive box (`AppConstants.EVENT_CACHE_BOX`) is opened and managed by `GetIt` through an `@preResolve` annotation in `di/injector.dart`, ensuring the box is ready when needed.

2. **Local Data Source (`EventLocalDataSourceImpl`):**
    * This class serves as the interface for all local cache operations.
    * `cacheEvents(EventsApiResponse response)`: Stores the complete `EventsApiResponse` object (representing the entire fetched page/response from the API) as a single entry in the Hive box. This ensures that all pagination and event data for a given request are cached together.
    * `getLastEvents()`: Retrieves the most recently cached `EventsApiResponse`. If no data is found (e.g., first launch or cleared cache), it throws a `CacheException`.
    * `clearCache()`: Provides functionality to clear all stored event data.

3. **Repository Caching Logic (`EventRepositoryImpl`):**
    * The `EventRepositoryImpl` is responsible for deciding the data fetching strategy based on network availability, implementing the "offline-first" principle.
    * **Network Check:** It first checks for internet connectivity using `NetworkInfo`.
    * **Online Scenario:**
        * If online, it attempts to fetch the latest data from `EventRemoteDataSource`.
        * Upon a successful remote fetch, this fresh data is immediately stored in the local cache using `localDataSource.cacheEvents()`.
        * If the remote fetch fails (e.g., a server error `ServerException`), the repository attempts a fallback: it tries to retrieve previously cached data from `localDataSource.getLastEvents()`. If fallback is successful, cached data is returned; otherwise, the original server error is propagated.
    * **Offline Scenario:**
        * If there is no internet connection, the repository directly attempts to retrieve data from `localDataSource.getLastEvents()`.
        * If cached data is available, it's immediately returned, providing a seamless offline experience.
        * If no cached data is found while offline, a `NetworkFailure` is returned, indicating that the app cannot display any data.

This comprehensive caching strategy ensures data persistence, faster loading times on subsequent launches, and a resilient user experience even in the absence of an internet connection.

## Decisions and Trade-offs Made

1. **Strict Clean Architecture Adoption:**
    * **Pros:** Highly modular, testable, and maintainable codebase. Promotes clear separation of concerns, making the project scalable and easier for team collaboration.
    * **Cons:** Introduces a higher initial setup overhead and more boilerplate code compared to simpler architectural patterns. For very small, single-feature applications, this might be considered over-engineering.

2. **BLoC with Freezed for State Management:**
    * **Pros:** Enforces immutability for states and events, leading to predictable state changes and fewer bugs. `freezed` significantly reduces manual boilerplate code for data classes (e.g., `copyWith`, `==`, `hashCode`, `toString`).
    * **Cons:** The learning curve for both BLoC and `freezed` combined can be steeper for developers unfamiliar with reactive programming and code generation. The event/state mechanism can add verbosity for very simple state changes.

3. **Hive for Local Caching:**
    * **Pros:** Renowned for its exceptional speed for local read/write operations, which is crucial for delivering a snappy offline-first experience. Its simple key-value API makes integration straightforward.
    * **Cons:** Not designed for complex relational queries. If the application required intricate database relationships or advanced querying capabilities locally, a relational database like `sqflite` might be more suitable. For caching API responses as a whole, Hive is an excellent fit.

4. **Handling `trending` and `category` Filters:**
    * The latest API response structure primarily provides events and a pagination object, without explicit `trending` or direct `category` query parameters for the main endpoint.
    * **Decision & Trade-off:** The `trending` filter is implemented **client-side** within the `PublicEventBloc`. When the "Trending" chip is selected, the BLoC still fetches all events from the API (or cache), and then filters the received `EventEntity` list locally based on a `trending` flag (which is currently a placeholder in `EventEntity` as it's not directly provided by the new API at the market level). The `category` filter is also applied client-side.
    * **Impact:**
        * **Positive:** Enables the UI features ("Trending" and category filters) despite API limitations, providing a functional user experience.
        * **Negative:** Can lead to inefficient data transfer and client-side processing, especially if the total number of events is very large and only a small subset is actually "trending" or belongs to a specific category. For a production-grade application, the ideal solution would involve backend support for these filters via API query parameters to reduce network load. This was a necessary compromise given the provided API structure for rapid development.

5. **Trade-off , Decision & Reasoning:**
    * **Decision:** The `EventEntity` in the domain layer was adapted to reflect this by making these fields optional or by providing default/placeholder values. UI elements in `EventCard` that depended on these dynamic ranges were either adjusted.
    * **Trade-off:** Reduced data granularity in the domain layer and potentially less dynamic UI elements.
    * **Reasoning:** This decision prioritizes rapid adaptation to the new API structure and prevents immediate UI crashes. In a real-world scenario, this would necessitate communication with the backend team to understand if these crucial data points are still available via other means or if the UI design needs to be revised to accommodate their absence.

## Unit Testing

Unit tests are crucial for verifying the correctness of individual components in isolation, ensuring that specific pieces of business logic behave as expected. This project uses `flutter_test` for testing, `mockito` for creating mock objects, and `bloc_test` for simplifying BLoC testing.

**Tools Used:**

* **`flutter_test`**: Flutter's built-in testing framework.
* **`mockito`**: A mocking framework for Dart, allowing us to create mock implementations of dependencies. This is essential for isolating the unit under test from its real dependencies.
* **`bloc_test`**: A powerful package specifically designed for testing BLoCs. It provides a clean API to test BLoC states, events, and their interactions, allowing us to:
  * Define the initial state (`initial`).
  * Provide mock implementations for dependencies (`build`).
  * Trigger events (`act`).
  * Assert the expected sequence of states (`expect`).
  * Verify interactions with mocks (`verify`).

**Example Test (`test/features/events/presentation/bloc/events_bloc_test.dart`):**

The `PublicEventBloc` is a prime candidate for unit testing as it contains the core business logic for fetching, searching, and filtering events. The tests cover scenarios such as:

* **Initial State:** Verifying that the BLoC starts in the `EventsState.initial` state.
* **Successful Fetch (`FetchEvents`):**
  * Tests that when `FetchEvents` is added, the BLoC emits `EventsState.loading` followed by `EventsState.loaded` with the correct data.
  * Verifies that the `GetEvents` use case is called with the correct parameters.
* **Failed Fetch (`FetchEvents` with Server Error):**
  * Tests that if the `GetEvents` use case returns a `ServerFailure`, the BLoC emits `EventsState.loading` followed by `EventsState.error`.
* **Trending Filter:**
  * Demonstrates how the BLoC applies client-side filtering for "trending" events based on a parameter passed to the `FetchEvents` event.
* **Pagination (`LoadMoreEvents`):**
  * Tests that when `LoadMoreEvents` is added (and `hasMore` is true), the BLoC increments the page number and appends new events to the existing list, emitting `EventsState.loading` (with old data) and then `EventsState.loaded`.
  * Also tests that no event is emitted if `LoadMoreEvents` is called when `hasMore` is false.
* **Search (`SearchEvents`):**
  * Verifies that adding a `SearchEvents` event triggers a new fetch with the provided keyword and resets pagination/category.
* **Category Filter (`FilterByCategory`):**
  * Confirms that adding a `FilterByCategory` event updates the filter criteria and triggers a new fetch.

**How to Run Tests:**

To run all unit tests in your project, open your terminal in the project's root directory and execute:

```bash
flutter test
