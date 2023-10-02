import 'exercise.dart';

class WorkoutSession {
  List<Exercise> exercises = [];
  bool isPaused = false;

  void startNewSession() {
    exercises.clear();
    isPaused = false; // Ensure the session starts in an active state
  }

  void resumeSession(List<Exercise> selectedExercises) {
    exercises.addAll(selectedExercises);
    isPaused = false; // Resume the session in an active state
  }

  void pauseSession() {
    isPaused = true; // Pause the session
  }

  void addExerciseToSession(Exercise exercise) {
    if (!isPaused) {
      exercises.add(exercise);
    } else {
      // Handle paused session logic, e.g., show a message or log that the session is paused
      print("Cannot add exercises to a paused session.");
    }
  }

  void recordPerformance(int index, int sets, int repetitions, double weight) {
    if (isPaused) {
      // Handle paused session logic, e.g., show a message or log that the session is paused
      print("Cannot record performance in a paused session.");
      return;
    }

    if (index < 0 || index >= exercises.length) {
      throw ArgumentError("Invalid index");
    }

    if (sets < 0 || repetitions < 0 || weight < 0) {
      throw ArgumentError("Negative values are not allowed.");
    }

    final exercise = exercises[index] as ExerciseImpl;
    exercise.sets = sets;
    exercise.repetitions = repetitions;
    exercise.weight = weight;
  }
}
