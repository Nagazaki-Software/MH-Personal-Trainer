// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:video_player/video_player.dart';

Future mutevideos(String video) async {
  // mute os  videos

  // Use the video_player package to load and play the video
  VideoPlayerController _controller = VideoPlayerController.asset(video);

  // Initialize the video player
  await _controller.initialize();

  // Mute the video
  _controller.setVolume(0.0);

  // Play the video
  _controller.play();
}
