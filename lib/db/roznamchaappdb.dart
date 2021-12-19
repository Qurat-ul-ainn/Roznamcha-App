import 'package:sqflite/sqflite.dart'; //sqflite package
import 'package:path_provider/path_provider.dart'; //path_provider package
import 'package:path/path.dart'; //used to join paths
import 'dart:io';
import 'dart:async';
import 'package:trade/constClass/configration.dart';
import 'package:trade/db/users_model.dart';

class DBProvider {
  Future<Database> init() async {
    Directory directory =
        await getApplicationDocumentsDirectory(); //returns a directory which stores permanent files
    final path = join(directory.path, dbName); //create path to database

    return await openDatabase(
        //open the database or create a database if there isn't any
        path,
        version: 1, onCreate: (Database db, int version) async {
      await db.execute("""
          CREATE TABLE users(
          sess_bp_user_id TEXT,
          sess_bp_week TEXT,
          sess_bp_username TEXT,
          sess_bp_name TEXT,
          sess_bp_adr TEXT,
          sess_bp_emp TEXT,
          sess_bp_privs TEXT,
          sess_bp_currency TEXT,
          sess_bp_gst TEXT,
          sess_bp_vat TEXT,
          sess_bp_tax TEXT,
          sess_bp_salesman_commission TEXT,
          sess_bp_agent_commision TEXT,
          sess_bp_timestamp TEXT,
          sess_bp_print_header TEXT,
          sess_bp_print_urdu_invoice TEXT,
          sess_bp_print_header_note TEXT,
          sess_bp_print_footer_note TEXT,
          sess_bp_print_default_template TEXT,
          sess_bp_barcode TEXT,
          sess_bp_variants TEXT,
          sess_bp_secondary_units TEXT,
          sess_bp_token TEXT,
          )""");
    });
  }

  Future<int> addItem(UsersModel item) async {
    //returns number of items inserted as an integer
    final db = await init(); //open database
    return db.insert(
      "users", item.toMap(), //toMap() function from MemoModel
      conflictAlgorithm:
          ConflictAlgorithm.ignore, //ignores conflicts due to duplicate entries
    );
  }

  Future<List<UsersModel>> fetchUsers() async {
    //returns the user as a list (array)
    final db = await init();
    final maps = await db
        .query("users"); //query all the rows in a table as an array of maps
    return List.generate(maps.length, (i) {
      //create a list of user
      return UsersModel(
        sess_bp_user_id: maps[i]['sess_bp_user_id'].toString(),
        sess_bp_username: maps[i]['sess_bp_username'],
        sess_bp_adr: maps[i]['sess_bp_adr'],
        sess_bp_week: maps[i]['sess_bp_week'],
        sess_bp_name: maps[i]['sess_bp_name'],
        sess_bp_emp: maps[i]['sess_bp_emp'],
        sess_bp_privs: maps[i]['sess_bp_privs'],
        sess_bp_currency: maps[i]['sess_bp_currency'],
        sess_bp_gst: maps[i]['sess_bp_gst'],
        sess_bp_vat: maps[i]['sess_bp_vat'],
        sess_bp_tax: maps[i]['sess_bp_tax'],
        sess_bp_salesman_commission: maps[i]['sess_bp_salesman_commission '],
        sess_bp_agent_commision: maps[i]['sess_bp_agent_commision'],
        sess_bp_timestamp: maps[i]['sess_bp_timestamp'],
        sess_bp_print_header: maps[i][' sess_bp_print_header'],
        sess_bp_print_urdu_invoice: maps[i]['sess_bp_print_urdu_invoice'],
        sess_bp_print_header_note: maps[i]['sess_bp_print_header_note'],
        sess_bp_print_footer_note: maps[i][' sess_bp_print_footer_note'],
        sess_bp_print_default_template: maps[i][' sess_bp_print_default_template'],
        sess_bp_barcode: maps[i]['sess_bp_barcode'],
        sess_bp_variants: maps[i]['sess_bp_variants'],
        sess_bp_secondary_units: maps[i]['sess_bp_secondary_units '],
        sess_bp_token: maps[i]['sess_bp_token '],
      );
    });
  }

  Future<int> deleteUser(int id) async {
    //returns number of items deleted
    final db = await init();

    int result = await db.delete("users", //table name
        where: "sess_bp_user_id = ?",
        whereArgs: [id] // use whereArgs to avoid SQL injection
        );

    return result;
  }

  Future<int> updateUser(int id, UsersModel item) async {
    // returns the number of rows updated

    final db = await init();

    int result = await db.update("users", item.toMap(),
        where: "sess_bp_user_id = ?", whereArgs: [id]);
    return result;
  }
}
