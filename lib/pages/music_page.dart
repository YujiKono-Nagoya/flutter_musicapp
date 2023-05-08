import 'package:flutter/material.dart';
import 'package:flutter_bottombar/component/music.dart';
import 'package:flutter_bottombar/pages/home_page.dart';

class MusicPage extends StatefulWidget {
  Music music;
  MusicPage({
    super.key,
    required this.music,
  });

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _CurrentValue = 0;
  bool isPlaying = false;

  void toggglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 4.0,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),

              Image.asset(
                widget.music.imagepath,
                height: 330,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.music.music_name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.music.authors,
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              SliderTheme(
                data: SliderThemeData(
                  thumbColor: Colors.white,
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Colors.grey[700],
                ),
                child: Slider(
                  value: _CurrentValue,
                  onChanged: (value) {
                    setState(() {
                      _CurrentValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0:00',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      '5:00',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.skip_previous,
                      size: 60,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: toggglePlayPause,
                      child: Icon(
                        isPlaying ? Icons.pause_circle : Icons.play_circle,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.skip_next,
                      size: 60,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
