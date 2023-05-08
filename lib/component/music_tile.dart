import 'package:flutter/material.dart';

import 'music.dart';

class MusicTile extends StatelessWidget {
  Music music;
  void Function()? onTap;
  MusicTile({
    super.key,
    required this.music,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                music.imagepath,
                height: 160,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  music.music_name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  music.authors,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
