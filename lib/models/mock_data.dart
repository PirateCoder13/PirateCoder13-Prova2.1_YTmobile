import 'content_models.dart';

class MockData {
  static const chips = <String>[
    'All',
    'Gaming',
    'Hyped',
    'Gaming computers',
  ];

  static const videos = <VideoModel>[
    VideoModel(
      id: 'video_1',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80',
      title: 'VÔ ACELEROU TUDO A PORSCHE GT3 RS DO NEYMAR!! ADOROU O CARRO?',
      channelName: 'PetrolHead',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=PH&background=000000&color=F2F2F2&size=128',
      viewCount: '58K views',
      publishedTime: '15 hours ago',
      duration: '32:33',
      progress: 0.86,
    ),
    VideoModel(
      id: 'video_2',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1487421812161-153cc9f6ad5a?auto=format&fit=crop&w=1200&q=80',
      title: 'IA aprende a controlar reator de fu...',
      channelName: 'Top Noticias Cientificas',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=TN&background=1f1f1f&color=F2F2F2&size=128',
      viewCount: '112K views',
      publishedTime: '1 day ago',
      duration: '12:41',
      progress: 0.34,
    ),
    VideoModel(
      id: 'video_3',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=1200&q=80',
      title: 'Como montar uma estação de games compacta',
      channelName: 'Setup Lab',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=SL&background=222222&color=F2F2F2&size=128',
      viewCount: '21K views',
      publishedTime: '2 days ago',
      duration: '18:09',
    ),
  ];

  static const shorts = <ShortModel>[
    ShortModel(
      id: 'short_1',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1504203700686-19f2a5a3a4ad?auto=format&fit=crop&w=900&q=80',
      title: '1700 Horsepower MX-5 in Forza Horizon 6!',
      channelName: 'Forza Clips',
    ),
    ShortModel(
      id: 'short_2',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1519681393784-d120267933ba?auto=format&fit=crop&w=900&q=80',
      title: 'Devon Larratt Entered And Advised His Son Milo Larratt...',
      channelName: 'Arm Wrestling Daily',
    ),
    ShortModel(
      id: 'short_3',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1493238792000-8113da705763?auto=format&fit=crop&w=900&q=80',
      title: 'Custom build reveal in 15 seconds',
      channelName: 'Garage Flash',
    ),
  ];

  static const history = <VideoModel>[
    VideoModel(
      id: 'video_1',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80',
      title: 'VÔ ACELEROU TUDO A PORSCHE GT3 RS DO NEYMAR!! ADOROU O CARRO?',
      channelName: 'PetrolHead',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=PH&background=000000&color=F2F2F2&size=128',
      viewCount: '58K views',
      publishedTime: '15 hours ago',
      duration: '32:33',
      progress: 0.86,
    ),
    VideoModel(
      id: 'video_2',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1487421812161-153cc9f6ad5a?auto=format&fit=crop&w=1200&q=80',
      title: 'IA aprende a controlar reator de fu...',
      channelName: 'Top Noticias Cientificas',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=TN&background=1f1f1f&color=F2F2F2&size=128',
      viewCount: '112K views',
      publishedTime: '1 day ago',
      duration: '12:41',
      progress: 0.34,
    ),
    VideoModel(
      id: 'video_4',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1506368083636-6defb67639a7?auto=format&fit=crop&w=1200&q=80',
      title: 'Console de bolso: o que vale a pena em 2025?',
      channelName: 'Tecno Atual',
      channelAvatarUrl:
          'https://ui-avatars.com/api/?name=TA&background=111111&color=F2F2F2&size=128',
      viewCount: '9.4K views',
      publishedTime: '3 days ago',
      duration: '09:58',
      progress: 0.58,
    ),
  ];

  static const playlists = <PlaylistModel>[
    PlaylistModel(
      id: 'playlist_1',
      title: 'servidor',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?auto=format&fit=crop&w=1200&q=80',
      countLabel: '2',
      iconCodePoint: 0xe8f1,
    ),
    PlaylistModel(
      id: 'playlist_2',
      title: 'Liked videos',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1460925895917-afdab827c52f?auto=format&fit=crop&w=1200&q=80',
      countLabel: '5,000',
      iconCodePoint: 0xe87d,
    ),
    PlaylistModel(
      id: 'playlist_3',
      title: 'Watch later',
      thumbnailUrl:
          'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?auto=format&fit=crop&w=1200&q=80',
      countLabel: '',
      iconCodePoint: 0xe425,
    ),
  ];
}
