import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/models/current_track_model.dart';
import 'package:spotify_clone/screens/playlist_screen.dart';
import 'package:spotify_clone/widgets/current_track.dart';
import 'package:spotify_clone/widgets/side_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isLinux || Platform.isWindows)) {
    await DesktopWindow.setMinWindowSize(const Size(600, 800));
  }
  runApp(ChangeNotifierProvider(
    create: (context) => CurrentTrackModel(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.grey, brightness: Brightness.dark)
            .copyWith(
              background: const Color(0xFF121212),
            )
            .copyWith(
              secondary: const Color(0xFF1DB954),
            ),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
            displayMedium: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              fontSize: 12.0,
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
            ),
            bodyLarge: TextStyle(
              color: Color(0xFFE0E0E0),
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
            bodyMedium: TextStyle(
              color: Color(0xFFE0E0E0),
              letterSpacing: 1.0,
            )),
      ),
      home: const Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width > 800) const SideMenu(),
                const Expanded(
                  child: PlaylistScreen(
                    playlist: likedSongsPlaylist,
                  ),
                )
              ],
            ),
          ),
          CurrentTrack(),
        ],
      ),
    );
  }
}
