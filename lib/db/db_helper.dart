import 'dart:io';
import 'package:primesh/db/models/chat.dart';
import 'package:primesh/db/models/message.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:async';

class DbHelper {
  DbHelper._privateConstructor();
  static final DbHelper instance = DbHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'primesh.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE chats(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nodeID TEXT,
        lastMsg TEXT,
        lastMsgDatetime TEXT
        notRead INTEGER)''');

    await db.execute('''
      CREATE TABLE messages(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nodeID TEXT,
        text TEXT,
        dateTime TEXT,
        type INTEGER,
        received INTEGER)''');
  }

  Future<List<Message>> getMessages() async {
    final db = await instance.database;
    var messages = await db.query('chats', orderBy: 'id');
    List<Message> messageList = messages.isNotEmpty
        ? messages.map((e) => Message.fromMap(e)).toList()
        : [];
    return messageList;
  }

  Future<int> addMessage(Message message) async {
    Database db = await instance.database;
    return await db.insert('messages', message.toMap());
  }

  Future<int> removeMessage(int id) async {
    Database db = await instance.database;
    return await db.delete('messages', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateMessage(Message message) async {
    Database db = await instance.database;
    return await db.update('messages', message.toMap(),
        where: "id = ?", whereArgs: [message.id]);
  }

  Future<List<Chat>> getChats() async {
    final db = await instance.database;
    var chats = await db.query('chats', orderBy: 'lastMsgDatetime');
    List<Chat> chatList =
        chats.isNotEmpty ? chats.map((e) => Chat.fromMap(e)).toList() : [];
    return chatList;
  }

  Future<int> addChat(Chat chat) async {
    Database db = await instance.database;
    return await db.insert('chats', chat.toMap());
  }

  Future<int> removeChat(int id) async {
    Database db = await instance.database;
    return await db.delete('chats', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateChat(Chat chat) async {
    Database db = await instance.database;
    return await db
        .update('chats', chat.toMap(), where: "id = ?", whereArgs: [chat.id]);
  }
}
