import 'package:gowagr_assessment/core/network/network_check.dart';
import 'package:gowagr_assessment/features/events/data/datasources/event_local_data_source.dart';
import 'package:gowagr_assessment/features/events/domain/usecases/gowagr_events_usecases.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart';
import 'package:gowagr_assessment/features/events/data/datasources/event_remote_data_source.dart';

@GenerateMocks([
  EventRepository,
  EventRemoteDataSource,
  EventLocalDataSource,
  NetworkInfo,
  GetPublicEventsUsecase,
  PublicEventBloc,
])
void main() {}
