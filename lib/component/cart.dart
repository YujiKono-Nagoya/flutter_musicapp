import 'package:flutter/material.dart';

import 'music.dart';

class Cart {
  List<Music> musicShop = [
    Music(
      imagepath: 'lib/images/bump.jpeg',
      music_name: 'Aurora',
      authors: 'Bump of chiken',
    ),
    Music(
      imagepath: 'lib/images/Mr.children.jpeg',
      music_name: '花火',
      authors: 'Mr.children',
    ),
    Music(
      imagepath: 'lib/images/novel.jpeg',
      music_name: '愛とか恋とか',
      authors: 'Novel Bright',
    ),
    Music(
      imagepath: 'lib/images/hige.jpeg',
      music_name: 'ホワイトノイズ',
      authors: 'Official 髭男dism',
    ),
  ];

  List<Music> getShoeList() {
    return musicShop;
  }
}
