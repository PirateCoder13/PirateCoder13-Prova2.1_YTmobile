class VideoModel {
  const VideoModel({
    required this.id,
    required this.thumbnailUrl,
    required this.title,
    required this.channelName,
    required this.channelAvatarUrl,
    required this.viewCount,
    required this.publishedTime,
    required this.duration,
    this.progress,
  });

  final String id;
  final String thumbnailUrl;
  final String title;
  final String channelName;
  final String channelAvatarUrl;
  final String viewCount;
  final String publishedTime;
  final String duration;
  final double? progress;
}

class ShortModel {
  const ShortModel({
    required this.id,
    required this.thumbnailUrl,
    required this.title,
    required this.channelName,
  });

  final String id;
  final String thumbnailUrl;
  final String title;
  final String channelName;
}

class PlaylistModel {
  const PlaylistModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.countLabel,
    required this.iconCodePoint,
  });

  final String id;
  final String title;
  final String thumbnailUrl;
  final String countLabel;
  final int iconCodePoint;
}
