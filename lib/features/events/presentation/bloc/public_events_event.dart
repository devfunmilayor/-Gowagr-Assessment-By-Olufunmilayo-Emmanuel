import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_events_event.freezed.dart';

// @freezed
// class EventsEvent with _$EventsEvent {
//   const factory EventsEvent.fetchEvents({
//     @Default(1) int page,
//     String? keyword,
//     String? category,
//     bool? trending,
//   }) = _FetchEvents;

//   const factory EventsEvent.searchEvents({
//     required String keyword,
//   }) = _SearchEvents;

//   const factory EventsEvent.filterByCategory({
//     required String category,
//   }) = _FilterByCategory;

//   const factory EventsEvent.loadMoreEvents() = _LoadMoreEvents;

//   const factory EventsEvent.toggleTheme() = _ToggleTheme;
// }

@freezed
class PublicEventsEvent with _$PublicEventsEvent {
  const factory PublicEventsEvent.loadEvents(
      {String? keyword,
      String? category,
      bool? trending,
      bool? initialLoad}) = _LoadEvents;
  const factory PublicEventsEvent.loadMoreEvents() = _LoadMoreEvents;
  const factory PublicEventsEvent.filterByCategory(String category) =
      _FilterByCategory;
  const factory PublicEventsEvent.searchEvents(String keyword) = _SearchEvents;
  const factory PublicEventsEvent.toggleTheme() = _ToggleTheme;
}
