import 'exercise_manager.dart';
import 'exercise.dart';
import 'workout_session.dart';

void main() {
  // Create an ExerciseManager instance to manage exercises
  var exerciseManager = ExerciseManager();

  // Create some exercises
  exerciseManager.createExercise(
    "Push-up",
    "A basic upper body exercise",
    15,
    60,
    3,
    0,
  );

  exerciseManager.createExercise(
    "Squats",
    "A lower body exercise",
    12,
    45,
    4,
    0,
  );

  // List the exercises
  var exercises = exerciseManager.listExercises();
  print("List of exercises:");
  for (var exercise in exercises) {
    print("Name: ${exercise.name}, Repetitions: ${exercise.repetitions}");
  }

  // Create a WorkoutSession instance to manage workout sessions
  var workoutSession = WorkoutSession();

  // Start a new workout session
  workoutSession.startNewSession();

  // Add exercises to the session
  for (var exercise in exercises) {
    workoutSession.addExerciseToSession(exercise);
  }

  // Record performance for an exercise in the session
  workoutSession.recordPerformance(
      0, 3, 15, 0); // Updating the sets, repetitions, and weight

  // Check if the session is paused
  if (workoutSession.isPaused) {
    print("The workout session is paused.");
  } else {
    print("The workout session is active.");
  }

  // Resume the session (for example, after a pause)
  workoutSession.resumeSession(exercises);

  // Check if the session is now active
  if (workoutSession.isPaused) {
    print("The workout session is paused.");
  } else {
    print("The workout session is active.");
  }
}
