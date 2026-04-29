import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../theme/app_colors.dart';

class YouTubeMark extends StatelessWidget {
  const YouTubeMark({super.key, this.width = 36, this.height = 24});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.brandRed,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: const Icon(Icons.play_arrow, color: Colors.white, size: 18),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
      ),
    );
  }
}

class FilterChipsBar extends StatelessWidget {
  const FilterChipsBar({super.key, required this.items, this.selectedIndex = 0});

  final List<String> items;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.textPrimary : AppColors.chip,
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Text(
              items[index],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isSelected ? Colors.black : AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          );
        },
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.title,
    required this.channel,
    required this.views,
    required this.time,
    required this.duration,
    this.compact = false,
    this.videoId,
  });

  final String title;
  final String channel;
  final String views;
  final String time;
  final String duration;
  final bool compact;
  final String? videoId;

  @override
  Widget build(BuildContext context) {
    final details = time.isEmpty ? '$channel · $views' : '$channel · $views · $time';

    if (compact) {
      return SizedBox(
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ThumbnailFrame(duration: duration, compact: true, videoId: videoId),
            const SizedBox(height: 8),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              details,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ThumbnailFrame(duration: duration, videoId: videoId),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.elevated,
                  child: Icon(Icons.person, color: AppColors.textPrimary, size: 18),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        details,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.more_vert, color: AppColors.textPrimary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThumbnailFrame extends StatelessWidget {
  const _ThumbnailFrame({required this.duration, this.compact = false, this.videoId});

  final String duration;
  final bool compact;
  final String? videoId;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(compact ? 14 : 0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                  color: AppColors.elevated,
                  alignment: Alignment.center,
                  child: videoId == null
                      ? const YouTubeMark()
                      : GestureDetector(
                          onTap: () {
                            final url = 'https://www.youtube.com/watch?v=$videoId';
                            launchUrlString(url);
                          },
                          child: Image.network(
                            'https://img.youtube.com/vi/$videoId/hqdefault.jpg',
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => const YouTubeMark(),
                          ),
                        ),
                ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              duration,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

class ShortCard extends StatelessWidget {
  const ShortCard({super.key, required this.title, required this.channel, this.videoId});

  final String title;
  final String channel;
  final String? videoId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                color: AppColors.elevated,
                alignment: Alignment.center,
                child: videoId == null
                    ? const YouTubeMark(width: 42, height: 28)
                    : GestureDetector(
                        onTap: () {
                          final url = 'https://www.youtube.com/watch?v=$videoId';
                          launchUrlString(url);
                        },
                        child: Image.network(
                          'https://img.youtube.com/vi/$videoId/hqdefault.jpg',
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const YouTubeMark(width: 42, height: 28),
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            channel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.elevated,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.textPrimary, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}
