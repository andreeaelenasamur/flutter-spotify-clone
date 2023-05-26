import 'package:flutter/material.dart';
import 'package:spotify_clone/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  const PlaylistHeader({Key? key, required this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Playlist',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 12.0),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    playlist.name,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    playlist.description,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Created by ${playlist.creator} · ${playlist.songs.length} songs, ${playlist.duration}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        _PlaylistButtons(followers: playlist.followers),
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String followers;
  const _PlaylistButtons({Key? key, required this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).iconTheme.color,
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {},
          child: const Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 30,
          ),
        ),
        const SizedBox(width: 8.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
          iconSize: 30.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
          iconSize: 30.0,
        ),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style:
              Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12.0),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
