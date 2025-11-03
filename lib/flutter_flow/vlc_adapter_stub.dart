import 'package:flutter/widgets.dart';

class VlcAdapterController {
  void dispose() {}
}

bool get vlcAvailable => false;

VlcAdapterController createVlcController(
  String url, {
  bool autoPlay = false,
  bool looping = false,
}) => VlcAdapterController();

Widget buildVlcPlayer({
  required VlcAdapterController controller,
  required double aspectRatio,
  required bool showControls,
  required double width,
  required double height,
}) {
  // Stub: show a simple error container when VLC is not available.
  return SizedBox(
    width: width,
    height: height,
    child: const Center(child: Text('Video error')),
  );
}

