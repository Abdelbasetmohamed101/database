import "package:database/cubit/db_states.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:sqflite/sqflite.dart";

class ToDoCubit extends Cubit<ToDoStates> {
  ToDoCubit(super.InitialState);

  late Database database;
  void createDB() async {
    database = await openDatabase("todo.db", version: 1,
        onCreate: (database, version) {
      database
          .execute(
              "CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)")
          .then((value) => print('DB Created'));
    });
  }

// insert
  void insertDB({required String name, required int value}) async {
    emit(InsertLoadingState());
    await database
        .rawInsert('INSERT INTO Test(name, value) VALUES("$name", $value)')
        .then((value) {
      print("id $value Created");
      emit(InsertSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(InsertFailureState());
    });
  }

// update
  void updateDB(
      {required String name, required int value, required int id}) async {
    await database.rawUpdate('UPDATE Test SET name = ?, value = ? WHERE id = ?',
        ["$name", value, id]).then((value) {
      print("id $value Created");
    }).catchError((e) {
      print(e.toString());
    });
  }

//delete
  void deleteDB({required int id}) async {
    await database.rawDelete('DELETE FROM Test WHERE id = ?', [id]);
  }

  late List<Map<String, dynamic>> alltasks;
//get
  void getALLFromDB() async {
    await database.rawQuery('select * from test ').then((value) {
      alltasks = value;
    });
  }
}
