const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts'
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'Motivation Gym',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song(
      {required this.id,
      required this.title,
      required this.artist,
      required this.album,
      required this.duration});
}

const _likedSongs = [
  Song(
    id: '0',
    title: 'Unholy',
    artist: 'Sam Smith, Kim Petras',
    album: 'Unholy (feat. Kim Petras)',
    duration: '2:36',
  ),
  Song(
    id: '1',
    title: 'Marea',
    artist: 'Fred again.., The Blessed Madonna',
    album: 'Marea (we\'ve lost dancing)',
    duration: '4:45',
  ),
  Song(
    id: '2',
    title: 'Hero',
    artist: 'Alan Walker, Sasha Alex Sloan',
    album: 'Hero',
    duration: '2:55',
  ),
  Song(
    id: '3',
    title: 'Faded',
    artist: 'Arc North, Cour, New Beat Order, Lunis',
    album: 'Faded',
    duration: '2:26',
  ),
  Song(
    id: '4',
    title: 'Sky High',
    artist: 'Alok, Nonô',
    album: 'Sky High (feat. Nonô)',
    duration: '2:14',
  ),
  Song(
    id: '5',
    title: 'Faded',
    artist: 'Crypto, Constance',
    album: 'Faded',
    duration: '2:20',
  ),
  Song(
    id: '6',
    title: 'How Deep Is Your Love',
    artist: 'Braaheim',
    album: 'How Deep Is Your Love',
    duration: '2:31',
  ),
  Song(
    id: '7',
    title: 'Before I Die',
    artist: 'Scott Rill, Dayana',
    album: 'Before I Die',
    duration: '2:48',
  ),
  Song(
    id: '8',
    title: 'Roadrunner',
    artist: 'Hopex',
    album: 'Roadrunner',
    duration: '2:50',
  ),
  Song(
    id: '9',
    title: 'Tension',
    artist: 'VINAI, Paradigm',
    album: 'Tension',
    duration: '2:39',
  ),
  Song(
    id: '10',
    title: 'Frozen',
    artist: 'Madonna, Sickick',
    album: 'Frozen',
    duration: '2:00',
  ),
  Song(
    id: '11',
    title: 'Safe With You',
    artist: 'Serhat Durmus, Camilia',
    album: 'Safe With You',
    duration: '3:17',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const likedSongsPlaylist = Playlist(
    id: 'liked-songs',
    name: 'Songs you like',
    imageURL: 'assets/liked-songs.png',
    description: 'Your favorite songs',
    creator: 'Andreea Elena Samur',
    duration: '28 min',
    followers: '400',
    songs: _likedSongs);
