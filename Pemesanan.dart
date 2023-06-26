import 'keretaApi.dart';
import 'penumpang.dart';

class Pemesanan extends DataKeretaApi{
  int? pesan;
  int? total;
  int? nokKursi;

  void printInfoPemesanan() {
    if (noKA == null) {
      print('Data kereta belum diinput');
      return;
    }
    if (penumpang == null) {
      print('Data penumpang belum diinput');
      return;
    }
    print('Pemesanan Tiket Kereta Api:');
    print('No. Kursi: $nokKursi');
    print('Nama Penumpang: ${PenumpangDewasa.idPenumpang}');
    print('Jenis Kereta: ${keretaApi}');
    print('Harga Tiket: ${harga}');
    print('Jumlah Pesanan: $pesan');
    print('Total Harga: ${totalHarga()}');
  }

  int totalHarga() {
    if (noKA == null) {
      return 0;
    }
    if (pesan == null) {
      return 0;
    }
    return pesan! * noKA!.hargaTiket;
  }
}