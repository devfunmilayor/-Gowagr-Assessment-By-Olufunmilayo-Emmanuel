// import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';

// final List<EventEntity> dummyEvents = [
//   EventEntity(
//     id: '45e726f3-561a-45fb-bf78-8941cf6716e2',
//     name: 'Will Gyokeres sign for Arsenal?',
//     description:
//         'Viktor Gyökeres, the prolific Swedish striker currently starring for Sporting CP, has been heavily linked with a move to the Premier League following a standout season in Portugal. With Arsenal in the market for a new number 9 and reportedly monitoring the forward closely, could the Gunners make a marquee move for Gyökeres this summer?',
//     image:
//         'https://gowagr.s3.eu-west-2.amazonaws.com/event-images/1747339843020_event_will_gyokeres_sign_for_arsenal_512x512.webp',
//     category: 'SPORTS',
//     eventState: 'open',
//     endDate: '2025-08-31T23:00:00.000Z',
//     trending: true,
//     trades: (94 + 180).toInt(),
//     options: [
//       const OptionEntity(name: 'Yes', value: 0.3694, transactionType: 'buy'),
//       const OptionEntity(name: 'No', value: 0.6807, transactionType: 'buy'),
//     ],
//     minAmount: 0.0,
//     maxAmount: 0.0,
//     sourceCurrencySymbol: '₦',
//     destinationCurrencySymbol: '₦',
//   ),
//   ...List.generate(
//       9,
//       (index) => EventEntity(
//         title: '',
//             id: 'market-${index + 2}',
//             name: 'Generic Market ${index + 2}',
//             description: 'Description for generic market ${index + 2}',
//             image:
//                 'https://placehold.co/40x40/${(index * 100).toString().padLeft(6, '0')}/FFFFFF?text=E',
//             category: index % 2 == 0 ? 'Entertainment' : 'Technology',
//             eventState: 'open',
//             endDate:
//                 DateTime.now().add(Duration(days: 5 + index)).toIso8601String(),
//             trending: index % 3 == 0,
//             trades: 100 + index * 10,
//             options: [
//               OptionEntity(
//                   name: 'Yes',
//                   value: 0.5 + index * 0.01,
//                   transactionType: 'buy'),
//               OptionEntity(
//                   name: 'No',
//                   value: 0.4 - index * 0.005,
//                   transactionType: 'buy'),
//             ],
//             minAmount: 0.0,
//             maxAmount: 0.0,
//             sourceCurrencySymbol: '\$',
//             destinationCurrencySymbol: '\$',
//           )),
// ];

// final EventListEntity dummyEventListEntity = EventListEntity(
//   data: dummyEvents,
//   pagination: const PaginationEntity(
//     page: 1,
//     size: 10,
//     totalCount: 10,
//     lastPage: 1,
//   ),
// );
