import 'package:midi_player/note.dart';

class Notes {
  List<Note> notes;
  Notes() {
    notes = [];
    // Octave 0
    notes.add(new Note(name: 'C', value: 0, octave: 0));
    notes.add(new Note(name: 'C#', value: 1, octave: 0));
    notes.add(new Note(name: 'D', value: 2, octave: 0));
    notes.add(new Note(name: 'D#', value: 3, octave: 0));
    notes.add(new Note(name: 'E', value: 4, octave: 0));
    notes.add(new Note(name: 'F', value: 5, octave: 0));
    notes.add(new Note(name: 'F#', value: 6, octave: 0));
    notes.add(new Note(name: 'G', value: 7, octave: 0));
    notes.add(new Note(name: 'G#', value: 8, octave: 0));
    notes.add(new Note(name: 'A', value: 9, octave: 0));
    notes.add(new Note(name: 'A#', value: 10, octave: 0));
    notes.add(new Note(name: 'B', value: 11, octave: 0));
    // Octave 1
    notes.add(new Note(name: 'C', value: 12, octave: 1));
    notes.add(new Note(name: 'C#', value: 13, octave: 1));
    notes.add(new Note(name: 'D', value: 14, octave: 1));
    notes.add(new Note(name: 'D#', value: 15, octave: 1));
    notes.add(new Note(name: 'E', value: 16, octave: 1));
    notes.add(new Note(name: 'F', value: 17, octave: 1));
    notes.add(new Note(name: 'F#', value: 18, octave: 1));
    notes.add(new Note(name: 'G', value: 19, octave: 1));
    notes.add(new Note(name: 'G#', value: 20, octave: 1));
    notes.add(new Note(name: 'A', value: 21, octave: 1));
    notes.add(new Note(name: 'A#', value: 22, octave: 1));
    notes.add(new Note(name: 'B', value: 23, octave: 1));
    // Octave 2
    notes.add(new Note(name: 'C', value: 24, octave: 2));
    notes.add(new Note(name: 'C#', value: 25, octave: 2));
    notes.add(new Note(name: 'D', value: 26, octave: 2));
    notes.add(new Note(name: 'D#', value: 27, octave: 2));
    notes.add(new Note(name: 'E', value: 28, octave: 2));
    notes.add(new Note(name: 'F', value: 29, octave: 2));
    notes.add(new Note(name: 'F#', value: 30, octave: 2));
    notes.add(new Note(name: 'G', value: 31, octave: 2));
    notes.add(new Note(name: 'G#', value: 32, octave: 2));
    notes.add(new Note(name: 'A', value: 33, octave: 2));
    notes.add(new Note(name: 'A#', value: 34, octave: 2));
    notes.add(new Note(name: 'B', value: 35, octave: 2));
    // Octave 3
    notes.add(new Note(name: 'C', value: 36, octave: 3));
    notes.add(new Note(name: 'C#', value: 37, octave: 3));
    notes.add(new Note(name: 'D', value: 38, octave: 3));
    notes.add(new Note(name: 'D#', value: 39, octave: 3));
    notes.add(new Note(name: 'E', value: 40, octave: 3));
    notes.add(new Note(name: 'F', value: 41, octave: 3));
    notes.add(new Note(name: 'F#', value: 42, octave: 3));
    notes.add(new Note(name: 'G', value: 43, octave: 3));
    notes.add(new Note(name: 'G#', value: 44, octave: 3));
    notes.add(new Note(name: 'A', value: 45, octave: 3));
    notes.add(new Note(name: 'A#', value: 46, octave: 3));
    notes.add(new Note(name: 'B', value: 47, octave: 3));
    // Octave 4
    notes.add(new Note(name: 'C', value: 48, octave: 4));
    notes.add(new Note(name: 'C#', value: 49, octave: 4));
    notes.add(new Note(name: 'D', value: 50, octave: 4));
    notes.add(new Note(name: 'D#', value: 51, octave: 4));
    notes.add(new Note(name: 'E', value: 52, octave: 4));
    notes.add(new Note(name: 'F', value: 53, octave: 4));
    notes.add(new Note(name: 'F#', value: 54, octave: 4));
    notes.add(new Note(name: 'G', value: 55, octave: 4));
    notes.add(new Note(name: 'G#', value: 56, octave: 4));
    notes.add(new Note(name: 'A', value: 57, octave: 4));
    notes.add(new Note(name: 'A#', value: 58, octave: 4));
    notes.add(new Note(name: 'B', value: 59, octave: 4));
    // Octave 5
    notes.add(new Note(name: 'C', value: 60, octave: 5));
    notes.add(new Note(name: 'C#', value: 61, octave: 5));
    notes.add(new Note(name: 'D', value: 62, octave: 5));
    notes.add(new Note(name: 'D#', value: 63, octave: 5));
    notes.add(new Note(name: 'E', value: 64, octave: 5));
    notes.add(new Note(name: 'F', value: 65, octave: 5));
    notes.add(new Note(name: 'F#', value: 66, octave: 5));
    notes.add(new Note(name: 'G', value: 67, octave: 5));
    notes.add(new Note(name: 'G#', value: 68, octave: 5));
    notes.add(new Note(name: 'A', value: 69, octave: 5));
    notes.add(new Note(name: 'A#', value: 70, octave: 5));
    notes.add(new Note(name: 'B', value: 71, octave: 5));
    // Octave 6
    notes.add(new Note(name: 'C', value: 72, octave: 6));
    notes.add(new Note(name: 'C#', value: 73, octave: 6));
    notes.add(new Note(name: 'D', value: 74, octave: 6));
    notes.add(new Note(name: 'D#', value: 75, octave: 6));
    notes.add(new Note(name: 'E', value: 76, octave: 6));
    notes.add(new Note(name: 'F', value: 77, octave: 6));
    notes.add(new Note(name: 'F#', value: 78, octave: 6));
    notes.add(new Note(name: 'G', value: 79, octave: 6));
    notes.add(new Note(name: 'G#', value: 80, octave: 6));
    notes.add(new Note(name: 'A', value: 81, octave: 6));
    notes.add(new Note(name: 'A#', value: 82, octave: 6));
    notes.add(new Note(name: 'B', value: 83, octave: 6));
    // Octave 7
    notes.add(new Note(name: 'C', value: 84, octave: 7));
    notes.add(new Note(name: 'C#', value: 85, octave: 7));
    notes.add(new Note(name: 'D', value: 86, octave: 7));
    notes.add(new Note(name: 'D#', value: 87, octave: 7));
    notes.add(new Note(name: 'E', value: 88, octave: 7));
    notes.add(new Note(name: 'F', value: 89, octave: 7));
    notes.add(new Note(name: 'F#', value: 90, octave: 7));
    notes.add(new Note(name: 'G', value: 91, octave: 7));
    notes.add(new Note(name: 'G#', value: 92, octave: 7));
    notes.add(new Note(name: 'A', value: 93, octave: 7));
    notes.add(new Note(name: 'A#', value: 94, octave: 7));
    notes.add(new Note(name: 'B', value: 95, octave: 7));
    // Octave 8
    notes.add(new Note(name: 'C', value: 96, octave: 8));
    notes.add(new Note(name: 'C#', value: 97, octave: 8));
    notes.add(new Note(name: 'D', value: 98, octave: 8));
    notes.add(new Note(name: 'D#', value: 99, octave: 8));
    notes.add(new Note(name: 'E', value: 100, octave: 8));
    notes.add(new Note(name: 'F', value: 101, octave: 8));
    notes.add(new Note(name: 'F#', value: 102, octave: 8));
    notes.add(new Note(name: 'G', value: 103, octave: 8));
    notes.add(new Note(name: 'G#', value: 104, octave: 8));
    notes.add(new Note(name: 'A', value: 105, octave: 8));
    notes.add(new Note(name: 'A#', value: 106, octave: 8));
    notes.add(new Note(name: 'B', value: 107, octave: 8));
    // Octave 9
    notes.add(new Note(name: 'C', value: 108, octave: 9));
    notes.add(new Note(name: 'C#', value: 109, octave: 9));
    notes.add(new Note(name: 'D', value: 110, octave: 9));
    notes.add(new Note(name: 'D#', value: 111, octave: 9));
    notes.add(new Note(name: 'E', value: 112, octave: 9));
    notes.add(new Note(name: 'F', value: 113, octave: 9));
    notes.add(new Note(name: 'F#', value: 114, octave: 9));
    notes.add(new Note(name: 'G', value: 115, octave: 9));
    notes.add(new Note(name: 'G#', value: 116, octave: 9));
    notes.add(new Note(name: 'A', value: 117, octave: 9));
    notes.add(new Note(name: 'A#', value: 118, octave: 9));
    notes.add(new Note(name: 'B', value: 119, octave: 9));
    // Octave 10
    notes.add(new Note(name: 'C', value: 120, octave: 10));
    notes.add(new Note(name: 'C#', value: 121, octave: 10));
    notes.add(new Note(name: 'D', value: 122, octave: 10));
    notes.add(new Note(name: 'D#', value: 123, octave: 10));
    notes.add(new Note(name: 'E', value: 124, octave: 10));
    notes.add(new Note(name: 'F', value: 125, octave: 10));
    notes.add(new Note(name: 'F#', value: 126, octave: 10));
    notes.add(new Note(name: 'G', value: 127, octave: 10));
  }

  List<Note> getOctave(int octave) {
    return notes.where((note) => note.octave == octave).toList();
  }
}
