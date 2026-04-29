import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/youtube_clone_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const filters = ['Todos', 'Jogos', 'Podcasts', 'Música', 'Ao vivo'];
  static const videoCards = [
    VideoCard(
      title: 'BMW E39 POV Street Drifting at 1AM',
      channel: 'Canal Exemplo 1',
      views: '120 mil visualizações',
      time: 'há 2 dias',
      duration: '12:34',
      videoId: 'dmF97khRbq0',
    ),
    VideoCard(
      title: 'O desafio da resina: morango e carne',
      channel: 'Canal Exemplo 2',
      views: '89 mil visualizações',
      time: 'há 5 dias',
      duration: '08:21',
      videoId: 'VExah8gqJkY',
    ),
    VideoCard(
      title: 'PLATAFORMA PCR 50Km, AREA RESTRITA',
      channel: 'Canal Exemplo 3',
      views: '45 mil visualizações',
      time: 'há 1 semana',
      duration: '16:02',
      videoId: '4_Tc-F6_D0Q',
    ),
    VideoCard(
      title: 'I Found the Source of the Amazon River',
      channel: 'Canal Exemplo 4',
      views: '31 mil visualizações',
      time: 'há 8 dias',
      duration: '09:47',
      videoId: 'eyLRPXzRiDo',
    ),
  ];

  static const shortsCards = [
    ShortCard(title: 'one off Devon Larratt', channel: 'Shorts 1', videoId: 'POmX6EHaSKY'),
    ShortCard(title: 'ALUGOU UM AUDI R8', channel: 'Shorts 2', videoId: 'nU_-zWIFTvA'),
    ShortCard(title: 'COMO UMA SCOOTER DEVE SER TRATADA', channel: 'Shorts 3', videoId: 'JE0o5QqmcpQ'),
    ShortCard(title: 'Aqui rampou alto hein', channel: 'Shorts 4', videoId: '4JK9coPMzhc'),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.scaffold,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 56,
          titleSpacing: 16,
          title: Row(
            children: const [
              YouTubeMark(),
              SizedBox(width: 8),
              Text(
                'YouTube',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          actions: const [
            Icon(Icons.cast_outlined, color: AppColors.textPrimary),
            SizedBox(width: 16),
            Icon(Icons.notifications_none, color: AppColors.textPrimary),
            SizedBox(width: 16),
            Icon(Icons.search, color: AppColors.textPrimary),
            SizedBox(width: 16),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(52),
            child: FilterChipsBar(items: filters),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 12, bottom: 24),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                ...videoCards,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Row(
                    children: [
                      YouTubeMark(width: 28, height: 18),
                      SizedBox(width: 8),
                      Text(
                        'Shorts',
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 320,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: shortsCards.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) => shortsCards[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
