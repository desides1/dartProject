import 'connectionDB.dart';
import 'penumpang.dart';
import 'dart:io';

Future<void> getData() async {
  PenumpangDewasa penumpang = PenumpangDewasa();

  stdout.write('Masukkan ID Penumpang: ');
  penumpang.idPenumpang = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Nama Penumpang: ');
  penumpang.namaPenumpang = stdin.readLineSync()!;

  stdout.write('Masukkan No HP Penumpang Dewasa: ');
  penumpang.noHp = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan NIK Penumpang Dewasa: ');
  penumpang.nik = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Email Penumpang Dewasa: ');
  penumpang.email = stdin.readLineSync()!;

  final connection = await createConnection();
  await connection.query(
      'INSERT INTO table_name (idPenumpang, namaPenumpang, noHp, nik, email) VALUES (?, ?, ?, ?, ?)',
      [penumpang.idPenumpang, penumpang.namaPenumpang, penumpang.noHp, penumpang.nik, penumpang.email]);
  connection.close();
}