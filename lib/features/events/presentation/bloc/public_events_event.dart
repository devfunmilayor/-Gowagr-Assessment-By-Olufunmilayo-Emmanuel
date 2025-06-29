import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_events_event.freezed.dart';

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
