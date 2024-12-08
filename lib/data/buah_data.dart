import 'package:buah_app/model/buah_model.dart';

class BuahData {

  static var itemBuah = [
    BuahModel(namaBuah: "Apel",
    gambarBuah: "assets/gambar/apple.png",
    detailBuah: "Buah apel biasanya berwarna merah kulitnya jika masak dan siap dimakan, tetapi bisa juga kulitnya berwarna hijau atau kuning. "),

    BuahModel(namaBuah: "Alpukat",
    gambarBuah: "assets/gambar/avocado.png",
    detailBuah: "Alpukat merupakan jenis buah yang memiliki kandungan lemak tinggi, sekitar 20 kali lebih tinggi dibanding buah-buahan lain."),

    BuahModel(namaBuah: "Anggur",
    gambarBuah: "assets/gambar/blueberry.png",
    detailBuah: "Anggur merupakan buah yang diolah dari telur buah berupa perdu merambat yang termasuk ke dalam keluarga Vitaceae."),

    BuahModel(namaBuah: "Pepaya",
    gambarBuah: "assets/gambar/papaya.png",
    detailBuah: "Pepaya adalah buah tropis yang memiliki daging tebal dan manis, serta berwarna oranye atau jingga."),

    BuahModel(namaBuah: "Stroberi",
    gambarBuah: "assets/gambar/strawberry.png",
    detailBuah: "Buah stroberi adalah buah beri yang memiliki rasa manis dan sedikit asam, dan sering dikonsumsi sebagai camilan sehat"),
  ];

static var itemCount = itemBuah.length;

static BuahModel? getItemBuah (int index){
  return itemBuah[index];
}
}