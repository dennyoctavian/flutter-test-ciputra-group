
# GENERAL KNOWLEDGE TEST

1. What is the difference between StatelessWidget and StatefulWidget in Flutter?
StatelessWidget adalah Widget pada Flutter yang tidak ada perubahaan state atau data, sedangkan StatefulWidget adalah Widget pada Flututter yang terdapat perubahaan state atau data pada halaman tersebut. Pada StatefulWidget memiliki initState yang akan dijalankan pertama kali dalam menggambar Widget, selain itu terdapat function dispose yang umumnya digunakan menghapus objek-objek yang sudah tidak dibutuhkan lagi pada halaman lainnya seperti TextEditingController. Selanjutnya karena StatefulWidget memungkinkan terjadi perubahaan state makanya pada StatefulWidget memiliki function set state yang digunakan untuk merubah data dan Flutter akan menggambar ulang halaman tersebut. Dengan kata lain StatelessWidget adalah halaman yang statis dan StatefulWidget adalah halaman yang dinamis.

2. How do you implement navigation between screens in Flutter?
Secara umum Flutter menggunakan Navigator, dalam berpindah halaman pada Flutter ini menggunakan konsep stack seperti Navigator.push yang menambah halaman pada depan halaman sebelumnya dan Navigator.pop itu membuang halaman paling depan. Selain Navigator ada framework pada Flutter yaitu GetX yang dapat membantu melakukan navigasi dengan GetX Route management.

3. How can you implement animation in Flutter?
Flutter menyediakan AnimatedContainer yang dapat dimanfaatkan untuk membuat animasi pada Flutter, selain itu dapat menggunakan package dari Pub.dev untuk menggunakan animasi seperti animasi loading seperti flutter_spinkit. 

4. What is the role of streams in Flutter?
Stream memiliki peran sebagai jalur perjalanan data yang dapat diterima secara asynchronous. Contoh kasus pada Flutter Bloc ini stream adalah aliran yang mengalirkan data dengan menggunakan emit.

5. What is the difference between hot reload and hot restart in Flutter?
Hot reload adalah fitur yang memungkinkan developer merubah code dan dapat ditampilkan pada saat itu juga, sedangkan hot restart adalah fitur yang mengulang proses pembuatan aplikasi Flutter dari awal atau dengan kata lain merebuild ulang aplikasi makanya prosesnya memakan waktu yang tidak sebentar.

6. What is an API and how does it work?
API adalah Application Protocol Interface yang berguna sebagai jembatan komunikasi antara Front End dan Back End. Proses kerjanya adalah ketika API mendapatkan request dari Front End maka API akan melanjutkan permintaan tersebut kepada backend dan database dan setelah proses tersebut selesai, maka aplikasi membalikan response kepada Front End yang nantinya siap digunakan oleh Front End.

7. How can I secure my API?
Untuk mengamankan API umumnya menggunakan authentikasi dan authorisasi yang umumnya digunakan adalah JWT (JSON WEB TOKEN). Dari jwt kita dapat mengatur berapa lama token tersebut berlaku. Selain itu harus dilakukan pengecekan yang double karena dikhawatirkan dapat terjadi manipulasi body request dari Front End dan pada posisi backend melakukan validasi kembali. Menggunakan Protocol yang lebih secure seperti https dari pada http. Melakukan enkripsi data agar data tidak bocor dalam perjalanan. 

![Logo](https://images.bisnis.com/posts/2018/11/20/861448/1200px-logo-ciputra-600x400.png)

