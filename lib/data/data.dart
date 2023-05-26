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
  final String image;

  const Song(
      {required this.id,
      required this.title,
      required this.artist,
      required this.album,
      required this.duration,
      required this.image});
}

const _likedSongs = [
  Song(
    id: '0',
    title: 'Unholy',
    artist: 'Sam Smith, Kim Petras',
    album: 'Unholy (feat. Kim Petras)',
    duration: '2:36',
    image: 'assets/songs/Unholy.png',
  ),
  Song(
    id: '1',
    title: 'Marea',
    artist: 'Fred again.., The Blessed Madonna',
    album: 'Marea (we\'ve lost dancing)',
    duration: '4:45',
    image: 'assets/songs/Marea.png',
  ),
  Song(
    id: '2',
    title: 'Hero',
    artist: 'Alan Walker, Sasha Alex Sloan',
    album: 'Hero',
    duration: '2:55',
    image: 'assets/songs/Hero.jpg',
  ),
  Song(
    id: '3',
    title: 'Faded',
    artist: 'Arc North, Cour, New Beat Order, Lunis',
    album: 'Faded',
    duration: '2:26',
    image: 'assets/songs/Faded.jpg',
  ),
  Song(
    id: '4',
    title: 'Sky High',
    artist: 'Alok, Nonô',
    album: 'Sky High (feat. Nonô)',
    duration: '2:14',
    image: 'assets/songs/Sky_high.jpg',
  ),
  Song(
    id: '5',
    title: 'Faded',
    artist: 'Crypto, Constance',
    album: 'Faded',
    duration: '2:20',
    image: 'assets/songs/Faded_crypto.jpg',
  ),
  Song(
    id: '6',
    title: 'How Deep Is Your Love',
    artist: 'Braaheim',
    album: 'How Deep Is Your Love',
    duration: '2:31',
    image: 'assets/songs/How_deep_is_your_love.jpg',
  ),
  Song(
    id: '7',
    title: 'Before I Die',
    artist: 'Scott Rill, Dayana',
    album: 'Before I Die',
    duration: '2:48',
    image: 'assets/songs/Before_I_Die.jpeg',
  ),
  Song(
    id: '8',
    title: 'Roadrunner',
    artist: 'Hopex',
    album: 'Roadrunner',
    duration: '2:50',
    image: 'assets/songs/Roadrunner.jpg',
  ),
  Song(
    id: '9',
    title: 'Tension',
    artist: 'VINAI, Paradigm',
    album: 'Tension',
    duration: '2:39',
    image: 'assets/songs/Tension.jpg',
  ),
  Song(
    id: '10',
    title: 'Frozen',
    artist: 'Madonna, Sickick',
    album: 'Frozen',
    duration: '2:00',
    image: 'assets/songs/Frozen.jpg',
  ),
  Song(
    id: '11',
    title: 'Safe With You',
    artist: 'Serhat Durmus, Camilia',
    album: 'Safe With You',
    duration: '3:17',
    image: 'assets/songs/Before_I_Die.jpeg',
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
    name: 'Liked Songs',
    imageURL: 'assets/liked-songs.png',
    description: 'Your favorite songs',
    creator: 'Andreea Elena Samur',
    duration: '28 min',
    followers: '400',
    songs: _likedSongs);
