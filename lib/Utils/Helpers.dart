import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:creativedesign/Json_API/sqlite_all_jsondata.dart';

class Helper{
  static Database _db;
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String TABLE = 'Student';
  static const String DB_NAME = 'stud.db';

  Future<Database> get db async{
    if(_db !=null){
      return _db;
    }
    _db = await initDB();
    return _db;
  }
  // Craete And Open Database
  initDB() async{
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    print(path);
    return await openDatabase(path, version:1, onCreate: _onCreate, onOpen: (_db){});
  }
  // Craete Table In SQLite
  _onCreate(Database db, int version) async{
    await db.execute("CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY,$NAME TEXT)");
    print("Success");
  }

  // Insert Data In Table
  Future<Student> save(Student student) async{
    var dbClient = await db;
    student.id = await dbClient.insert(TABLE, student.toMap());
    print(student.toMap());
    return student;
    // await dbClient.transaction((txt) async{
    //   var query = "INSERT INTO $TABLE ($NAME) VALUES('"+ student.name+ "')";
    //   return await txt.rawInsert(query);
    // });
  }

  Future<Student> data() async{
    var dbClient = await db;
    await dbClient.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO $TABLE($NAME) VALUES("some name")');
      print('inserted1: $id1');
    });
  }

  Future<Student> remove() async{
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,"students.db");
    await deleteDatabase(path);
    print("Remove");
  }

  // Student Get Data Into Database
  Future<List<Student>> getStudent() async{
    var dbClient = await db;
    //List<Map> maps = await dbClient.query(TABLE, columns: [ID,NAME]);
    List<Map> maps = await dbClient.rawQuery("SELECT * FROM $TABLE");
    List<Student> student = [];
      for(int i=0; i < maps.length; i++){
          student.add(Student.fromMap(maps[i]));
          //print(student[i].name);
      }
    return student;
  }

  // Delete Record In Student Table
  Future<int> delete(int id) async{
    var dbClient = await db;
    return await dbClient.delete(TABLE,where: '$ID = ?',whereArgs: [id]);
  }

  // Update Record In Student Table
  Future<int> update(Student student) async{
    var dbClient = await db;
    return await dbClient.update(TABLE, student.toMap(),where: '$ID = ?',whereArgs: [student.id]);
  }

  // Close The Database
  Future close() async{
    var dbClient = await db;
    dbClient.close();
  }
}