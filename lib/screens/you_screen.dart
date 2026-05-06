import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/youtube_clone_widgets.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  static const historyCards = [
    VideoCard(
      compact: true,
      title: 'BMW E39 POV Street Drifting at 1AM',
      channel: 'RWDPOV',
      views: '120 mil visualizações',
      time: 'há 2 dias',
      duration: '12:34',
    ),
    VideoCard(
      compact: true,
      title: 'O desafio da resina: morango e carne',
      channel: 'Manual do Mundo',
      views: '89 mil visualizações',
      time: 'há 5 dias',
      duration: '08:21',
    ),
    VideoCard(
      compact: true,
      title: 'PLATAFORMA PCR 50Km, AREA RESTRITA',
      channel: 'Pesca em Ação 🐟',
      views: '45 mil visualizações',
      time: 'há 1 semana',
      duration: '16:02',
    ),
    VideoCard(
      compact: true,
      title: 'I Found the Source of the Amazon River',
      channel: 'thePOVchannel',
      views: '31 mil visualizações',
      time: 'há 8 dias',
      duration: '09:47',
    ),
  ];

  static const playlistCards = [
    VideoCard(
      compact: true,
      title: 'Playlist 1',
      channel: '4 vídeos',
      views: 'Coleção',
      time: '',
      duration: '03:00',
    ),
    VideoCard(
      compact: true,
      title: 'Playlist 2',
      channel: '4 vídeos',
      views: 'Coleção',
      time: '',
      duration: '03:00',
    ),
    VideoCard(
      compact: true,
      title: 'Playlist 3',
      channel: '4 vídeos',
      views: 'Coleção',
      time: '',
      duration: '03:00',
    ),
    VideoCard(
      compact: true,
      title: 'Playlist 4',
      channel: '4 vídeos',
      views: 'Coleção',
      time: '',
      duration: '03:00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          const CircleAvatar(
            radius: 38,
            backgroundColor: AppColors.elevated,
            child: Icon(Icons.person, color: AppColors.textPrimary, size: 34),
          ),
          const SizedBox(height: 12),
          Text(
            'Seu canal',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            '@usuario',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.elevated,
              borderRadius: BorderRadius.circular(999),
            ),
            child: const Text(
              'Ver canal',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const SectionHeader(title: 'Histórico'),
          const SizedBox(height: 12),
          SizedBox(
            height: 210,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: historyCards.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) => historyCards[index],
            ),
          ),
          const SizedBox(height: 24),
          const SectionHeader(title: 'Playlists'),
          const SizedBox(height: 12),
          SizedBox(
            height: 210,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: playlistCards.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) => playlistCards[index],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                MenuTile(
                    icon: Icons.video_library_outlined, title: 'Seus vídeos'),
                MenuTile(icon: Icons.download_outlined, title: 'Downloads'),
                MenuTile(icon: Icons.school_outlined, title: 'Cursos'),
              ],
            ),
          ),
          const SizedBox(height: 96),
        ],
      ),
    );
  }
}
