// lib/features/events/presentation/widgets/event_card.dart

import 'package:flutter/material.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';

class EventCard extends StatelessWidget {
  final EventEntity event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (event.imageUrl != null && event.imageUrl!.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  event.imageUrl!,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 180,
                    width: double.infinity,
                    color: colorScheme.surfaceContainerHighest,
                    child: Icon(Icons.broken_image,
                        color: colorScheme.onSurfaceVariant.withOpacity(0.5)),
                  ),
                ),
              )
            else
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Icon(Icons.image_not_supported,
                      color: colorScheme.onSurfaceVariant.withOpacity(0.5)),
                ),
              ),
            const SizedBox(height: 12.0),
            Text(
              event.title,
              style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold, color: colorScheme.onSurface),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.calendar_today,
                    size: 16, color: colorScheme.onSurface.withOpacity(0.7)),
                const SizedBox(width: 4.0),
                Text(
                  '${event.createdAt.day}/${event.createdAt.month}/${event.createdAt.year}',
                  style: textTheme.bodySmall
                      ?.copyWith(color: colorScheme.onSurface.withOpacity(0.7)),
                ),
                const SizedBox(width: 16.0),
                Icon(Icons.location_on,
                    size: 16, color: colorScheme.onSurface.withOpacity(0.7)),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    '',
                    style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withOpacity(0.7)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            if (event.category.isNotEmpty)
              Chip(
                label: Text(event.category),
              ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '100 NGN',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary, // Use theme color
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Joining ${event.title}')),
                      );
                    },
                    child: const Text('Join Event')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
