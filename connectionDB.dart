import 'package:mysql1/mysql1.dart';

Future<MySqlConnection> createConnection() async {
  final settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'desiayut',
    password: '1234',
    db: 'booking_tiket',
  );
  final connection = await MySqlConnection.connect(settings);
  return connection;
}