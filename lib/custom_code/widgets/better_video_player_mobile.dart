// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class BetterVideoPlayerMobile extends StatefulWidget {
  const BetterVideoPlayerMobile({
    Key? key,
    required this.width,
    required this.height,
    required this.videoUrl,
  }) : super(key: key);

  final double width;
  final double height;
  final String videoUrl;

  @override
  State<BetterVideoPlayerMobile> createState() =>
      _BetterVideoPlayerMobileState();
}

class _BetterVideoPlayerMobileState extends State<BetterVideoPlayerMobile> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isInitialized = false;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      print('🎥 Iniciando carregamento do vídeo...');
      print('🔗 URL recebida: ${widget.videoUrl}');

      _videoPlayerController = VideoPlayerController.network(widget.videoUrl);

      await _videoPlayerController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: true,
        aspectRatio: _videoPlayerController.value.isInitialized
            ? _videoPlayerController.value.aspectRatio
            : 16 / 9,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              'Erro ao carregar o vídeo: $errorMessage',
              style: const TextStyle(color: Colors.red),
            ),
          );
        },
      );

      setState(() {
        _isInitialized = true;
        _hasError = false;
      });

      print('✅ Vídeo inicializado com sucesso.');
    } catch (e) {
      print('❌ Erro ao carregar vídeo: $e');
      setState(() {
        _hasError = true;
      });
    }
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return const Center(
        child: Text(
          'Erro ao carregar o vídeo.',
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    if (!_isInitialized || _chewieController == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.black,
      child: AspectRatio(
        aspectRatio: _videoPlayerController.value.aspectRatio,
        child: Chewie(controller: _chewieController!),
      ),
    );
  }
}
