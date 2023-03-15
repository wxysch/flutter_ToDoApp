class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  }); 

  static List<ToDo> todoList() {
    return[
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Walk with Nazik', isDone: true),
      ToDo(id: '03', todoText: 'Dinner with N',),
      ToDo(id: '04', todoText: 'wxysch',),
      ToDo(id: '05', todoText: 'zhumabai',),
      ToDo(id: '06', todoText: 'todoText',),
      ToDo(id: '06', todoText: 'todoText123',),
    ];
  }
}