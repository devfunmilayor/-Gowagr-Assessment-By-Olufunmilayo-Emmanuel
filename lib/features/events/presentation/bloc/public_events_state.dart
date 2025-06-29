import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';

part 'public_events_state.freezed.dart';

// @freezed
// class EventsState with _$EventsState {
//   const factory EventsState.initial() = _Initial;
//   const factory EventsState.loading({
//     @Default([]) List<EventEntity> oldEvents,
//     @Default(true) bool isFirstFetch,
//   }) = _Loading;
//   const factory EventsState.loaded({
//     required List<EventEntity> events,
//     required bool hasMore,
//     required int currentPage,
//   }) = _Loaded;
//   const factory EventsState.error({required String message}) = _Error;
//   const factory EventsState.empty() = _Empty;
// }

@freezed
class PublicEventsState with _$PublicEventsState {
  const factory PublicEventsState.initial() = _Initial;
  const factory PublicEventsState.loading() = _Loading;
  const factory PublicEventsState.loadingMore({
    required List<EventEntity> events,
    required PaginationEntity pagination,
    String? currentKeyword,
    String? currentCategory,
  }) = PublicEventsStateLoadingMore;

  const factory PublicEventsState.loaded(
      {required List<EventEntity> events,
      required PaginationEntity pagination,
      String? currentKeyword,
      String? currentCategory}) = _Loaded;
  const factory PublicEventsState.error(String message) = _Error;
  const factory PublicEventsState.empty(String message) = _Empty;
}
