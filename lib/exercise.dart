import 'dart:core';

abstract class Exercise {
  String name = "";
  String description = "";
  int repetitions = 0;
  int restTime = 0;
  int sets = 0;
  double weight = 0;
}

class ExerciseImpl implements Exercise {
  ExerciseImpl(this.name, this.description, this.repetitions, this.restTime,
      this.sets, this.weight);

  @override
  String name;
  @override
  String description;
  @override
  int repetitions;
  @override
  int restTime;
  @override
  int sets;
  @override
  double weight;
}
