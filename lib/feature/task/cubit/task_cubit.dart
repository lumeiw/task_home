import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_home/feature/task/cubit/task_state.dart';
import 'package:task_home/feature/task/model/task_model.dart';
import 'package:task_home/feature/task/repository/task_rep.dart';


class TasksCubit extends Cubit<TasksState> {
  final TasksRepository _repository;

  TasksCubit(this._repository) : super(TasksInitial());

  void loadTasks() {
    emit(TasksLoading());
    _repository.getTasks().listen(
      (tasks) {
        emit(TasksLoaded(tasks));
      },
      onError: (error) {
        emit(TasksError(error.toString()));
      },
    );
  }

  Future<void> addTask(String title, String description) async {
    try {
      await _repository.addTask(title, description);
    } catch (e) {
      emit(TasksError(e.toString()));
    }
  }

  Future<void> toggleTaskCompletion(TaskModel task) async {
    try {
      await _repository.updateTask(
        TaskModel(
          id: task.id,
          title: task.title,
          description: task.description,
          isCompleted: !task.isCompleted,
          createdAt: task.createdAt,
        ),
      );
    } catch (e) {
      emit(TasksError(e.toString()));
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await _repository.deleteTask(taskId);
    } catch (e) {
      emit(TasksError(e.toString()));
    }
  }
}