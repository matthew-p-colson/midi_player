import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';
import 'package:midi_player/notes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade800,
          leading: Icon(
            Icons.music_note,
            color: Colors.blue,
          ),
          title: Text(
            'MIDI PLAYER',
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Hachi Maru Pop',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 1.0,
            ),
          ),
        ),
        body: Player(),
      ),
    );
  }
}

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  FlutterMidi flutterMidi = new FlutterMidi();
  int octave = 0;
  int instrument = 0;
  int noteValue = 0;
  List<String> instruments = [
    'Cello',
    'Guitar',
    'Piano',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: buildNotes(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.blueGrey.shade800,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'OCTAVE',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: 'Hachi Maru Pop',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                if (octave < 10) {
                                  octave++;
                                }
                              });
                            },
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.blueAccent,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            octave.toString(),
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'Hachi Maru Pop',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                if (octave > 0) {
                                  octave--;
                                }
                              });
                            },
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.blueAccent,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blueGrey.shade800,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'INSTRUMENT',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: 'Hachi Maru Pop',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Column(
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                if (instrument > 0) {
                                  instrument--;
                                  loadPlayer();
                                }
                              });
                            },
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.blueAccent,
                              size: 30.0,
                            ),
                          ),
                          Text(
                            instruments[instrument],
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontFamily: 'Hachi Maru Pop',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                if (instrument < instruments.length - 1) {
                                  instrument++;
                                  loadPlayer();
                                }
                              });
                            },
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.blueAccent,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<FlatButton> buildNotes() {
    var notes = Notes();
    var octaveNotes = notes.getOctave(octave);
    List<FlatButton> noteButtons = [];
    for (var note in octaveNotes) {
      noteButtons.add(
        FlatButton(
          color: Colors.blueGrey.shade800,
          onPressed: () {
            noteValue = note.value;
            playNote();
          },
          child: Text(
            note.name,
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'Hachi Maru Pop',
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
              letterSpacing: 1.0,
            ),
          ),
        ),
      );
    }
    return noteButtons;
  }

  void loadPlayer() async {
    flutterMidi.unmute();
    ByteData byte =
        await rootBundle.load('assets/${instruments[instrument]}.sf2');
    flutterMidi.prepare(sf2: byte);
  }

  void playNote() {
    flutterMidi.playMidiNote(midi: noteValue);
  }
}
