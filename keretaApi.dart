import 'connectionDB.dart';

abstract class KeretaApi{
  void dataKereta();
  Future<void> getData();
}
class DataKeretaApi implements KeretaApi{
  int? noKA;
  String? keretaApi;
  String? kelas;
  String? tujuan;
  int? harga;
  String? waktu;

  @override
  void dataKereta() {
    // Menggunakan data yang telah diambil melalui getData()
    print('No KA : $noKA');
    print('Kereta Api: $keretaApi');
    print('Kelas: $kelas');
    print('Tujuan: $tujuan');
    print('Harga: $harga');
    print('Waktu: $waktu');
  }
  @override
 Future<void> getData() async{
    final connection = await createConnection();
    final results = await connection.query('SELECT * FROM nama_table');

    for (var row in results) {
      // Simpan data dari setiap baris ke properti kelas
      noKA = row['no_ka'] as int?;
      keretaApi = row['kereta_api'] as String?;
      kelas = row['kelas'] as String?;
      tujuan = row['tujuan'] as String?;
      harga = row['harga'] as int?;
      waktu = row['waktu_perjalanan'] as String?;

      // Cetak data
      dataKereta();
    }
    connection.close();
  }
}