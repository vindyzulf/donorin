
# A04 - Donorin

## Anggota kelompok
* Davina Fardya Zulfa Izzati
* Faris Bayhaqi
* Hanin Atina Rahmania
* I Made Urip Subagyo
* Salma Hanifah Hidayanti

## Cerita aplikasi dan manfaat Donorin
Ancaman kesehatan global merupakan isu yang tengah dibahas dalam G20. Setelah pandemi COVID-19 yang memengaruhi kesehatan banyak individu, penurunan kemampuan masyarakat untuk membantu dalam bidang kesehatan mulai terlihat. Data kantong darah yang diberikan oleh Provinsi Jawa Tengah mengalami kekurangan hingga 60 persen.

Masyarakat mengalami kesulitan, khususnya dalam pendonoran darah, karena memerlukan pencarian relawan, proses screening, dan mengharuskan pendonornya sehat, padahal kesehatan mereka terdampak pandemi. Di sisi lain, banyak orang mengalami kendala untuk mendapat informasi terkait ketersediaan stok darah karena berita pasca pandemi masih menjadi perhatian tertinggi di bidang kesehatan. Selain itu, pembatasan kunjungan ke rumah sakit atau pusat kesehatan lainnya ikut memengaruhi informasi yang diterima masyarakat.

Oleh karena itu, Donorin hadir sebagai solusi isu kesehatan global dengan cara memfasilitasi masyarakat dalam melakukan donor darah. Donorin menyediakan informasi lokasi donor darah, penjadwalan donor darah, berita terkini yang relevan dengan donor darah dan kesehatan global, serta ketersediaan stok darah di lokasi tertentu. Melalui aplikasi ini, kami berharap masyarakat semakin menyadari manfaat donor danar, baik untuk kesehatan individu maupun kesehatan masyarakat, juga merasakan kemudahan dalam menemukan darah dan melakukannya.

## Daftar modul
### Login, Logout, Registration
I Made Urip Subagyo
<br>
Alur registration akun:

Registration (email & password) → ketika login direct ke pengisian data diri, jika belum mengisi, pengguna tidak dapat mengakses fitur apa pun.

Setelah log in, akan terdapat form pengisian data diri pengguna dengan rincian sebagai berikut:

* Nama Lengkap Pengguna
* Nomor Telepon
* Golongan Darah
* Jenis Kelamin
* Tanggal Lahir

### Landing Page
Salma Hanifah Hidayanti
<br>
Berisi informasi atau berita seputar donor darah.

Terdapat berbagai informasi mengenai donor darah, seperti pengertian, manfaat, persiapan yang diperlukan sebelum mendonor darah, dan lainnya.

### Admin Dashboard
Hanin Atina Rahmania
<br>
Terdapat fitur memasukkan hasil screening kesehatan.

Terdapat fitur untuk menerima atau menolak penjadwalan donor darah pengguna.

### User Dashboard
Faris Bayhaqi
<br>
Pada bagian user dashboard akan berisikan fitur booking mengarah pada penjadwalan donor darah.

Jumlah history sudah berapa kali donor atau menerima darah.

Melihat data hasil dari screening kesehatan.

### Penjadwalan Donor Darah
Davina Fardya Zulfa Izzati
<br>
Dengan fitur ini, pengguna bisa menjadwalkan kedatangan mereka ke tempat donor darah. Ketika pengguna sudah mengisi data, data tersebut akan masuk ke dashboard admin untuk dikonfirmasi apakah pengguna dapat datang saat jadwal tersebut.

## Peran pengguna
### Admin
Admin dapat melihat data diri pengguna, memasukkan hasil screening kesehatan pengguna, menerima atau menolak penjadwalan donor darah, dan memasukkan informasi mengenai lokasi donor darah.

### Pengguna biasa
Pengguna dapat melihat data diri, menjadwalkan donor darah, melihat berita pada landing page, melihat history donor darahnya (apabila melakukan penjadwalan melalui aplikasi), dan melihat informasi mengenai tempat atau lokasi donor darah.

## Alur Integrasi
- Implementasi authentication pada aplikasi
- Implementasi desain front-end aplikasi berdasarkan desain situs web
- Melakukan integrasi front-end dengan back-end