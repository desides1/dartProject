import 'dart:math';
import 'package:mysql1/mysql1.dart';

class Penumpang {
  int? _idPenumpang;
  String? _namaPenumpang;

  int get idPenumpang => this._idPenumpang!;
  String get namaPenumpang => this._namaPenumpang!;

  set idPenumpang(int? idPenumpang) => this._idPenumpang = idPenumpang;
  set namaPenumpang(String? namaPenumpang) => this._namaPenumpang = namaPenumpang;
}
class PenumpangDewasa extends Penumpang{
  int? _noHp;
  int? _nik;
  String? _email;

  int get noHp => this._noHp!;
  int get nik => this._nik!;
  String get email => this._email!;

  set noHp(int? id) => this._noHp = noHp;
  set nik(int? nik) => this._nik = nik;
  set email(String? email) => this._email = email;
}
