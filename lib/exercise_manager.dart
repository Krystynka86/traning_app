import 'exercise.dart';

class ExerciseManager {
  List<Exercise> exercises = [];

  void createExercise(String name, String description, int repetitions,
      int restTime, int sets, double weight) {
    if (repetitions < 0 || restTime < 0 || sets < 0 || weight < 0) {
      throw ArgumentError("Negative values are not allowed.");
    }

    final exercise =
        ExerciseImpl(name, description, repetitions, restTime, sets, weight);
    exercises.add(exercise);
  }

  List<Exercise> listExercises() {
    return exercises;
  }

  void updateExercise(int index, String name, String description,
      int repetitions, int restTime, int sets, double weight) {
    if (index < 0 || index >= exercises.length) {
      throw ArgumentError("Invalid index");
    }

    if (repetitions < 0 || restTime < 0 || sets < 0 || weight < 0) {
      throw ArgumentError("Negative values are not allowed.");
    }

    exercises[index] =
        ExerciseImpl(name, description, repetitions, restTime, sets, weight);
  }

  void deleteExercise(int index) {
    if (index < 0 || index >= exercises.length) {
      throw ArgumentError("Invalid index");
    }

    exercises.removeAt(index);
  }
}
