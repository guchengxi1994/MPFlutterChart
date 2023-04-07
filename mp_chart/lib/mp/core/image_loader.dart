import 'dart:async';
import 'dart:ui';

import 'package:flutter/services.dart';

abstract class ImageLoader {
  // images/start.jpg
  static Future<Image> loadImage(String path) async {
    final ByteData data = await rootBundle.load(path);
    Uint8List img = Uint8List.view(data.buffer);
    final Completer<Image> completer = Completer();
    decodeImageFromList(img, (Image img) {
      return completer.complete(img);
    });
    return await completer.future;
  }
}
