import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'carousel.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons(this._audioPlayer);

  final AudioPlayer _audioPlayer;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple.shade900,
          title: new Text("Music", style: TextStyle(color: Colors.white)),
        ),
        body: new Column(
          children: <Widget>[
            CarouselWithIndicator(),
            // Container(
            //   margin: EdgeInsets.fromLTRB(10, 50, 10, 25),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.all(Radius.circular(5.0)),
            //     child: Stack(children: <Widget>[
            //       Image.asset("assets/pic1.jpg",
            //           fit: BoxFit.fill, width: 700.0),
            //     ]),
            //   ),
            // ),
            Container(
                margin: EdgeInsets.fromLTRB(50, 25, 25, 25),
                child: Text(
                  "After silence, that which comes nearest to expressing the inexpressible is music. – Aldous Huxley",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.purple[900]),
                )),
            Container(
                child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                StreamBuilder<bool>(
                  stream: _audioPlayer.shuffleModeEnabledStream,
                  builder: (context, snapshot) {
                    return _shuffleButton(context, snapshot.data ?? false);
                  },
                ),
                StreamBuilder<SequenceState?>(
                  stream: _audioPlayer.sequenceStateStream,
                  builder: (_, __) {
                    return _previousButton();
                  },
                ),
                StreamBuilder<PlayerState>(
                  stream: _audioPlayer.playerStateStream,
                  builder: (_, snapshot) {
                    final playerState = snapshot.data;
                    return _playPauseButton(playerState!);
                  },
                ),
                StreamBuilder<SequenceState?>(
                  stream: _audioPlayer.sequenceStateStream,
                  builder: (_, __) {
                    return _nextButton();
                  },
                ),
                StreamBuilder<LoopMode>(
                  stream: _audioPlayer.loopModeStream,
                  builder: (context, snapshot) {
                    return _repeatButton(
                        context, snapshot.data ?? LoopMode.off);
                  },
                ),
              ],
            ))
          ],
        ));
  }

  Widget _playPauseButton(PlayerState playerState) {
    final processingState = playerState.processingState;
    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      return Container(
        margin: EdgeInsets.all(8.0),
        width: 64.0,
        height: 64.0,
        child: CircularProgressIndicator(),
      );
    } else if (_audioPlayer.playing != true) {
      return IconButton(
        icon: Icon(Icons.play_arrow),
        iconSize: 64.0,
        onPressed: _audioPlayer.play,
      );
    } else if (processingState != ProcessingState.completed) {
      return IconButton(
        icon: Icon(Icons.pause),
        iconSize: 64.0,
        onPressed: _audioPlayer.pause,
      );
    } else {
      return IconButton(
        icon: Icon(Icons.replay),
        iconSize: 64.0,
        onPressed: () => _audioPlayer.seek(Duration.zero,
            index: _audioPlayer.effectiveIndices?.first),
      );
    }
  }

  Widget _shuffleButton(BuildContext context, bool isEnabled) {
    return IconButton(
      icon: isEnabled
          ? Icon(Icons.shuffle, color: Colors.purple[900])
          : Icon(Icons.shuffle),
      onPressed: () async {
        final enable = !isEnabled;
        if (enable) {
          await _audioPlayer.shuffle();
        }
        await _audioPlayer.setShuffleModeEnabled(enable);
      },
    );
  }

  Widget _previousButton() {
    return IconButton(
      icon: Icon(Icons.skip_previous),
      onPressed: _audioPlayer.hasPrevious ? _audioPlayer.seekToPrevious : null,
    );
  }

  Widget _nextButton() {
    return IconButton(
      icon: Icon(Icons.skip_next),
      onPressed: _audioPlayer.hasNext ? _audioPlayer.seekToNext : null,
    );
  }

  Widget _repeatButton(BuildContext context, LoopMode loopMode) {
    final icons = [
      Icon(Icons.repeat),
      Icon(Icons.repeat, color: Colors.purple[900]),
      Icon(Icons.repeat_one, color: Colors.purple[900]),
    ];
    const cycleModes = [
      LoopMode.off,
      LoopMode.all,
      LoopMode.one,
    ];
    final index = cycleModes.indexOf(loopMode);
    return IconButton(
      icon: icons[index],
      onPressed: () {
        _audioPlayer.setLoopMode(
            cycleModes[(cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
      },
    );
  }
}
