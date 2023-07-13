# UAS Pemograman Mobile: uas_API (Kode Pos)

<strong>Repository ini dibuat untuk memenuhi tugas Pemrograman Mobile</strong>
| <strong>Nama</strong>      | <strong>Riris Naomi Gurning</strong>  |
| ----------- | ----------- |
| <strong>NIM</strong>     | <strong>312010190</strong>       |
| <strong>Kelas</strong>   | <strong>TI.20.A.1</strong>        |

Aplikasi ini merupakan aplikasi mobile yang menggunakan framework flutter dengan menggambil data dari sebuah API
<br>Aplikasi mobile ini memudahkan pengguna menemukan kode pos dari sebuah kecamatan dan kelurahan</br>
<p>Aplikasi Mobile ini terdapat sebuah atribut sebagai berikut</p>
<p>1. title pada MaterialApp: Atribut ini digunakan untuk memberikan judul pada aplikasi Flutter.
<p>2. primarySwatch pada ThemeData: Atribut ini digunakan untuk mengatur skema warna primer dalam tema aplikasi.</p>
<p>3. data pada _KodeposScreenState: Variabel ini merupakan List<dynamic> yang digunakan untuk menyimpan data yang diambil dari API.</p>
<p>4. isLoading pada _KodeposScreenState: Variabel ini merupakan boolean yang menunjukkan apakah data sedang dalam proses pengambilan atau tidak.</p>

<br>Selain itu, terdapat juga beberapa widget yang menggunakan properti atau atribut sebagai berikut:</br>

<p>1. Scaffold: Widget ini memiliki beberapa atribut seperti appBar untuk mengatur tampilan App Bar, dan body untuk mengatur tampilan konten utama aplikasi.
<p>2. AppBar: Widget ini memiliki atribut title untuk mengatur judul yang ditampilkan pada App Bar.
<p>3. Center: Widget ini memiliki atribut child yang digunakan untuk menempatkan widget lain di tengah-tengah.
<p>4. CircularProgressIndicator: Widget ini digunakan untuk menampilkan indikator loading sirkular saat data sedang diambil.
<p>5. DataTable: Widget ini digunakan untuk menampilkan data dalam format tabel. Widget ini memiliki atribut columns untuk mengatur kolom-kolom yang akan ditampilkan, dan rows untuk mengatur baris-baris data yang akan ditampilkan.

<p>6. DataColumn: Widget ini digunakan untuk mengatur tampilan kolom dalam tabel. Widget ini memiliki atribut label untuk mengatur teks yang akan ditampilkan sebagai label kolom.

<p>7. DataRow: Widget ini digunakan untuk mengatur tampilan baris dalam tabel. Widget ini memiliki atribut cells untuk mengatur sel-sel data dalam baris tersebut.

<p>8. DataCell: Widget ini digunakan untuk mengatur tampilan sel data dalam tabel. Widget ini memiliki atribut child untuk mengatur tampilan isi sel data.

<br>Selain itu, dalam kode tersebut juga digunakan package/package import yang berfungsi untuk mengimpor library eksternal yang diperlukan dalam pengembangan aplikasi Flutter. Dalam contoh tersebut, digunakan package flutter/material.dart untuk mengimpor komponen-komponen UI dari Flutter, dan package http untuk melakukan permintaan HTTP ke API.</br>