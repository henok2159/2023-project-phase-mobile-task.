enum Status{
  completed,
  pending
}
class Task {
  String title;
  String description;
  DateTime dueDate;
  Status status;

  Task(this.title, this.description, this.dueDate, this.status);
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }
  void viewAllTasks() {
    if (tasks.isEmpty) {
      
      return;
    }

    for (var task in tasks) {
      print(task);
    }
  }
  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid index.");
      return;
    }

    tasks.removeAt(index);
    print("Task deleted");
  }
  void viewPendingTasks() {
 
  var pendingTasks = tasks.where((task) => task.status == Status.pending);

 
  pendingTasks.forEach((task) => print(task));
}
 void editTask(int index, String title, String description, DateTime dueDate) {
 
  if (index < 0 || index >= tasks.length) {
    print("Invalid task index.");
    return;
  }
    var task = tasks[index];
    task.title = title;
    task.description = description;
    task.dueDate = dueDate;

  print("Task edited successfully.");
} 
}
