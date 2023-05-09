import 'dart:convert';
import 'package:flutter/material.dart';

class ResepKita extends ChangeNotifier {
  initialData() async {
    setData = makananberat;
  }

  //Paste disini data makananberat dan makananringan
  final makananberat = {
    "data": [
      {
        "nama": "Opor Ayam Nusantara",
        "asal": "Daerah khas jawa",
        "img": "assets/image/oporayam.png",
        "desc":
            "Opor ayam sebenarnya adalah ayam rebus yang diberi bumbu kental dari santan yang ditambah berbagai bumbu seperti serai, kencur, dan sebagainya. Dalam tradisi ponti, perayaan Lebaran biasanya dibuat meriah dengan membuat ketupat yang disajikan dengan opor ayam dan sambal goreng kentang.",
        "bahan": [
          "1 ekor ayam",
          "3 sd minyak",
          "3 lembar daun jeruk",
          "500 ml air",
          "1 liter santa",
          "3 lembar daun salam",
          "3 lembar daun jeruk",
          "2 batang serai",
          "1 ruas jari lengkuas di memarkan",
          "1 sdm gula pasir",
          "1 sdt kaldu ayam"
        ],
        "bumbuhalus": [
          "10 butir bawang merah",
          "8 siung bawang putih",
          "1 sdm merica",
          "1 sdm ketumbar",
          "2/4 sdt jintan",
          "2/4 biji jintan",
          "2/4 biji pala",
          "1 ibu jari jahe",
          "1 ibu jari kunyit",
          "kemiri",
          "garam seckupya"
        ],
        "caramasak":
            "Tumis bumbu halus dengan daun salam, daun jeruk, serai, dan lengkuas hingga harum. Masukkan ayam, aduk hingga berubah warna.  Tambahkan santan, masak kembali hingga matang dan bumbu meresap. Angkat, taburi dengan bawang goreng. Sajikan ",
        "like": 150
      },
      {
        "nama": "Rendang padang khas sumbar",
        "asal": "Daerah khas padang",
        "img": "assets/image/rendang.png",
        "desc":
            "Rendang adalah kuliner asli asal Minangkabau,Sumatra Barat. Orang Minang menyebut kuliner ini dengan nama 'rendang'. Asal katanya dari marandang, yang berarti memasak santan hingga kering secara perlahan. Rendang perlu dimasak lama hingga kuahnya kering",
        "bahan": [
          "500 gr daging",
          "1 batang serai geprek",
          "3 lembar daun jeruk",
          "2 lembar daun salam",
          "1 ruas lengkuas geprek",
          "2 cm kayu manis",
          "1 sdt gula merah",
          "1 sdt kaldu sapi dan garam",
          "1/2 sdt jintan bubuk",
          "1/2 sdt merica bubuk",
          "Jeruk nipis",
          "500 ml santan dari 1/2 kelapa"
        ],
        "bumbuhalus": [
          "4 siung bawang putih",
          "6 butir bawang merah",
          "2 butir kemiri",
          " 1/2 sdt ketumbar",
          "3 cabai merah besar (buang bijinya)",
          " 2 cm kunyit ",
          "3 cm jahe"
        ],
        "caramasak":
            "Cuci bersih daging, potong sesuai selera, beri perasan jeruk nipis, lalu cuci lagi, Haluskan bumbu, lalu tumis bumbu halus dengan serai, daun jeruk, daun salam, kayu manis dan lengkuas sampai matang, Masukkan daging, aduk rata, lalu masukkan santan. Masak dengan api kecil sambil sesekali diaduk, Kemudian masukkan garam, kaldu, jintan, merica dan gula merah, diamkan hingga bumbu meresap dan airnya menyusut. Koreksi rasa, angkat dan hidangkan.",
        "like": 134
      },
      {
        "nama": "Soto Medan",
        "asal": "Daerah Sumatra Utara",
        "img": "assets/image/sotomedan.png",
        "desc":
            "Medan juga punya sajian soto yang sedap. Kuahnya berwarna kuning, karena menggunakan kunyit. Bedanya, kuah soto Medan ditambah santan. Soto Medan juga menggunakan pelengkap yang cukup beragam, yaitu ayam, perkedel kentang, tauge, emping, telur, dan bawang goreng.",
        "bahan": [
          "600 gram daging sapi",
          "900 ml santan dari sebutir kelapa",
          "300 ml kaldu sapi",
          "2 lembar daun salam",
          "2 batang serai, memarkan",
          "2 lembar daun jeruk",
          "2 cm lengkuas memarkan",
          "2 butir kapulaga",
          "1 buah bunga lawang",
          "minyak goreng secukupnya",
          "garam secukupnya",
          "gula pasir secukupnya",
          "4 buah perkedel kentang",
          "2 butir telur rebus",
          "2 genggam tauge",
          "seduh air panas",
          "1 batang daun bawang, iris halus",
          "1 batang daun seledri, iris halus",
          "1 tomat merah",
          "potong menjadi 8 bagian",
          "1 buah jeruk nipis",
          "potong-potong",
          "1 genggam soun",
          "seduh air panas",
          "bawang merah goreng secukupnya",
          "emping goreng secukupnya",
          "cabai rawit secukupnya",
          "rebus dan lumatkan"
        ],
        "bumbuhalus": [
          "8 butir bawang merah",
          "5 cm kunyit bakar",
          "4 buah kemiri sangrai",
          "3 siung bawang putih",
          "2 cm jahe",
          "1 sendok makan ketumbar",
          "sangrai",
          "1 sendok teh merica",
          "1/2 sendok teh jintan"
        ],
        "caramasak":
            "Rebus daging sapi dengan 600 ml air. Rebus hingga daging matang dan air rebusannya tersisa 300 ml. Potong-potong daging seukuran satu suapan, kemudian masukkan kembali ke dalam kaldu. Panaskan sekitar 1 sendok makan minyak goreng, kemudian tumis bumbu halus bersama serai, daun salam, daun jeruk, lengkuas, bunga lawang, dan kapulaga. Tumis sampai harum. Tuang bumbu tumis ke dalam kaldu, lalu didihkan kembali. Masukkan santan, lalu bumbui dengan gula dan garam. Aduk-aduk sampai mendidih agar santan tidak pecah. Siapkan soun, tauge, potongan daging, tomat, telur, dan perkedel di mangkuk. Siram dengan kuah, lalu taburi daun bawang, seledri, dan bawang goreng. Letakkan emping goreng di atasnya. Lalu sambal rawit dan jeruk nipis di tepinya",
        "like": 120
      },
      {
        "nama": "Sate Ayam Madura",
        "asal": "Madura",
        "img": "assets/image/sate.png",
        "desc":
            "Sate Ayam Madura adalah makanan jenis sate yang terbuat dari bahan dasar daging ayam dan diolah dengan racikan bumbu yang khas dari Madura, Jawa Timur. Sate Ayam Madura merupakan salah satu makanan tradisional yang sangat terkenal di Indonesia. Hampir semua daerah di Indonesia terdapat penjual makanan ini.",
        "bahan": [
          "4 buah paha ayam fillet, diambil dagingnya dan disisihkan kulitnya ",
          "5 sendok makan kecap manis ",
          "1 sendok makan minyak goreng ",
          "22 buah tusuk sate",
          " 4 buah lontong",
          " 2 sendok makan kecap manis ",
          "3 buah jeruk limau",
          "2 sendok makan bawang merah goreng untuk taburan"
        ],
        "bumbuhalus": [
          "200 gram kacang tanah kulit, disangrai, dihaluskan ",
          "3 buah cabai merah keriting, digoreng ",
          "4 butir kemiri, digoreng ",
          "2 buah cabai merah besar, digoreng ",
          "3 sendok makan gula merah sisir ",
          "1 sendok teh garam ",
          "500 ml air panas",
          " 15 buah cabai rawit merah, direbus ",
          "4 buah cabai merah keriting",
          " direbus 1/4 sendok teh garam",
        ],
        "caramasak":
            "Bikin sambal kacang dahulu. Haluskan kacang tanah, cabai merah keriting, kemiri, cabai merah besar, gula merah, dan garam. Tuang air. Masak sampai matang dan kental. Ambil 150 gram sambal kacang, kecap manis, dan minyak goreng. Aduk rata. Celup ayam di dalamnya. Lumuri sampai rata. Tusukkan ayam di tusuk sate. Bakar sampai setengah matang. Lumuri lagi dengan campuran kacang. Bakar lagi sampai matang. Lanjutkan membuat sambal, blender cabai. Tambahkan garam. Aduk rata.Sajikan sate bersama sambal kacang, pelengkap, dan sambalnya.",
        "like": 100
      },
      {
        "nama": "Mie Aceh",
        "asal": "Aceh",
        "img": "assets/image/mieaceh.png",
        "desc":
            "Mi aceh adalah masakan mi pedas khas Aceh di Indonesia. Mie kuning tebal dengan irisan daging sapi, daging kambing atau makanan laut (udang dan cumi) disajikan dalam sup sejenis kari yang gurih dan pedas.",
        "bahan": [
          "200 g mie kuning basah",
          "75g daging sapi tenderloin, potong dadu",
          "4 siung bawang putih",
          "iris tipis",
          "3 butir bawang merah, iris tipis",
          "1 buah tomat, potong kasar",
          "200ml air",
          "3 sdt Royco Kaldu Sapi ",
          "50g taoge",
          " 2 sdm, Bango Kecap Manis",
          "½sdt garam",
          " 1 sdt gula pasir",
          " ½sdt cuka masak",
          " 4sdm minyak sayur",
          "1 batang daun bawang, iris tipis",
          "1 sdm bawang merah goreng"
        ],
        "bumbuhalus": [
          "6 butir bawang merah",
          "4 siung bawang putih",
          " 1 buah kapulaga",
          "4 buah cabai merah besar",
          " 2 cm kunyit bakar",
          " ¼ sdt jintan",
          "½ sdt lada putih bubuk"
        ],
        "caramasak":
            "Haluskan semua bumbu dengan menggunakan blender atau cobek. Panaskan minyak di wajan, lalu masukkan bawang merah, bawang putih. Tumis bersama bumbu halus hingga harum, lalu masukkan daging sapi. Aduk rata, masak hingga daging berubah warna, dan tumisan matang. Tambahkan taoge dan tomat. Masak hingga layu, lalu tambahkan garam, Kecap Manis Bango, Royco Kaldu Sapi, gula pasir, serta cuka. Masukkan mie, kemudian taburi dengan daun bawang. Aduk hingga tercampur rata lalu angkat dan matikan api. Sajikan mie goreng Aceh dengan acar dan taburi bawang goreng.",
        "like": 100
      },
      {
        "nama": "Gado-Gado",
        "asal": "Jakarta",
        "img": "assets/image/gadogado.png",
        "desc":
            " Gado-gado merupakan sajian khas Betawi. Seiring berjalannya waktu, menu ini mulai banyak disantap di berbagai daerah, termasuk Jawa Tengah dan Jawa Timur.",
        "bahan": [
          "5 buah lontong potong-potong",
          "1/4 daun selada, cuci bersih",
          "1/4 tauge, seduh air panas",
          "5 lembar daun kol, iris dan rebus",
          "1 ikat kacang panjang",
          "4 buah kentang, rebus",
          "6 buah telur, rebus",
          "2 buah timun, iris-iris",
          "2 buah wortel, iris korek api dan rebus",
          "1 papan tempe, goreng",
          "3 buah tahu putih, goreng",
          "4 buah tomat"
        ],
        "bumbuhalus": [
          "500 gr kacang tanah",
          "goreng, 20 siung bawang putih, goreng",
          "5 buah cabai merah besar, goreng",
          "5 buah cabai merah keriting",
          "150 gr gula merah",
          "8 buah asam Jawa",
          "2 sdt terasi bakar/goreng",
          " 4 sdt garam",
          "5-6 sdm gula pasir",
          "1200 ml santank"
        ],
        "caramasak":
            "Blender semua bahan bumbu kacang sampai halus. Rebus dengan api kecil hingga mendidih.Terus masak bumbu kacang hingga matang sampai meletup-letup dan kental. Angkat dan sisihkan. Penyajian: Ambil piring, tata rapi semua bahan gado-gado. Siram dengan saus kacang dan taburi dengan bawang goreng dan beri kerupuk secukupnya.",
        "like": 100
      },
      {
        "nama": "Empek-Empek",
        "asal": "Palembang",
        "img": "assets/image/pempek.png",
        "desc":
            " pempek atau empek-empek adalah makanan khas Palembang yang terbuat dari daging ikan yang digiling lembut dan tepung kanji, dengan tambahan telur, bawang putih halus, penyedap rasa dan garam.",
        "bahan": [
          "1 kg tepung sagu (kualitas baik)",
          "1 kg daging ikan tenggiri (giling halus)",
          "250 ml air es",
          "1 sdt garam halus",
          "1 1/2 sdt penyedap rasa secukupnya",
          "minyak (untuk menggoreng)."
        ],
        "bumbuhalus": [
          "3/4 liter air bersih",
          "150 gr bawang putih ( cincang halus )",
          "60 gr air asam jawa",
          "250 gr gula merah ( sisir halus )",
          "1 sdm ebi kering bubuk",
          "100 gr cabe rawit ( haluskan )"
        ],
        "caramasak":
            "Siapkan wadah, lalu masukkan air, air asam jawa dan gula merah, rebus sampai mendidih Masukkan cabe rawit, bawang putih, ebi dan garam, lalu aduk sampai tercampur merata.Angkat dari kompor, lalu biarkan hingga menjadi hangat. Siapkan wadah, lalu masukkan ikan, garam, penyedap rasa dan air es, campur dengan daging ikan (sudah digiling), lalu aduk sampai merata. Masukkan tepung sedikit demi sedikit, uleni hingga adonan menjadi pas dan kalis. Ambil secukupnya adonan pempek, lalu bentuklah dengan sesuai dengan ukuran (selera).Masukkan adonan pempek yang sudah selesai dibentuk kedalam air yang mendidih, tunggu hingga matang (mengapung), lalu angkat dan tiriskan.Siapkan wajan, panaskan minyak goreng, lalu goreng adonan pempek hingga matang (cirinya: bagian kulitnya berwarna kecoklatan). Angkat, lalu tiriskan. Lalu potong-potong pempek goreng tersebut.Empek empek palembang siap disajikan.",
        "like": 100
      },
      {
        "nama": "Ayam Betutu",
        "asal": "Bali",
        "img": "assets/image/ayambetutu.png",
        "desc":
            "Ayam betutu merupakan makanan tradisional khas Bali yang terbuat dari daging ayam yang dibumbui kemudian direbus dan dibakar hingga menghasilkan aroma yang khas.",
        "bahan": [
          "700g ayam (1 ekor utuh)",
          "2sdm air jeruk nipis",
          "1 sdt garam",
          "2sdm minyak, untuk menumis",
          "2 batang serai, iris tipis",
          "2 sdt, Royco Kaldu Ayam",
          "200 g daun singkong rebus",
          "4 lembar daun jeruk, daun pisang, untuk membungku"
        ],
        "bumbuhalus": [
          "8 butir bawang merah",
          " 6 siung bawang putih",
          "12 buah cabai merah keriting",
          "2 cm kunyit, bakar",
          "½, sdt ketumbar butiran",
          "2 cm jahe, parut",
          "2 cm lengkuas",
          "parut, 1 sdt garam",
          " 1 sdm gula merah",
          "1 sdt minyak"
        ],
        "caramasak":
            "Lumuri ayam utuh dengan garam dan jeruk nipis secara merata. Diamkan hingga meresap selama kurang lebih 15 menit. Sisihkan. Menumis bumbu halus untuk marinasi Ayam Betutu. 2 Panaskan minyak, tumis bumbu halus dan serai hingga harum. Masukkan Royco Kaldu Ayam, aduk. Angkat. Membumbui daun singkong untuk Ayam Betutu.3 Ambil setengah bagian bumbu, aduk bersama daun singkong dan daun jeruk. Masukkan hingga ke dalam rongga perut ayam. Memarinasi Ayam Betutu.4 Lumuri sisa bumbu halus ke seluruh permukaan ayam secara merata. Bungkus dengan daun pisang. Kukus selama 45 menit. Angkat.Memanggang Ayam Betutu. 5 Panggang di atas wajan pemanggang dengan alas daun pisang hingga kecokelatan. Belah ayam memanjang dua bagian. Ayam Betutu siap dinikmati..",
        "like": 100
      },
    ]
  };

  final makananringan = {
    "data": [
      {
        "nama": "Cendol Dawet",
        "asal": "Daerah Jawa",
        "img": "assets/image/cendol.png",
        "desc":
            "Cendol hijau pada es cendol terbuat dari tepung kacang hijau atau hunkwe. Sedangkan es dawet dibuat dari tepung beras. Untuk membuat keduanya menjadi hijau, tepung tersebut diberi pewarna makanan dan air daun pandan suji. Selain membuatnya lebih berwarna, wangi khas pandan membuat es cendol dan es dawet makin nikmat.",
        "bahan": [
          "1 lembar daun suji atau 1/2 sendok teh pasta pandan",
          "50 gram tepung beras atau tepung hunkwe",
          "15 gram tepung tapioka atau tepung beras",
          "700 mililiter air matang",
          "2 gram garam 2 block es batu"
        ],
        "bumbuhalus": [
          "480 gram gula merah yang sudah diserut halus",
          "130 gram gula putih",
          "3 lembar daun pandan",
          "10 gram garam halus Daging nangka (opsional agar aromanya khas)"
        ],
        "caramasak":
            "Campurkan semua bahan cendol jadi satu, aduk rata. Masak di atas api kecil hingga kental dan licin, angkat. Masukan ke plastik segitiga. lalu masukkan cendol ke air es dengan cara menekan cendol yang ada di dalam plastik. Kemudian saring. Buat bahan gula merah, campurkan semua bahan kecuali tepung maizena. Masak dengan api kecil, tambahkan cairan tepung maizena, aduk hingga mengental. Angkat dan sisihkan. Rebus dengan api kecil semua bahan santan, hingga mendidih, angkat dan sisihkan. Letakkan saus gula  merah di dalam gelas masukkan nangka, cendol, es batu, santan, dan tutup dengan nangka kembali. Es cendol siap disajikan.",
        "like": 150
      },
      {
        "nama": "Kolak Pisang",
        "asal": "Sumatera Barat",
        "img": "assets/image/kolak.png",
        "desc":
            "Kolak pisang adalah hidangan khas Indonesia. Kolak pisang terbuat dari bahan utama berupa pisang dan santan. Pisang yang digunakan adalah pisang kepok yang sudah matang. Hal ini bertujuan agar rasanya lebih manis dan legit.",
        "bahan": [
          "2 buah pisang tandung, di potong miring 2-3 cm",
          "200 gram labu kuning, dipotong kotak",
          "200 gram ubi merah di potong kotak",
          "100 gr kolang kaling"
        ],
        "bumbuhalus": [
          "3 sendok makan pacar cina",
          "2000ml air",
          "400gr gula merah, sisir halus",
          "3 lembar daun pandan ikat",
          " 1/2 sendok teh garam",
          "500ml santan dari 1 butir kelapa"
        ],
        "caramasak":
            "Rebus labu kuning, ubi merah, air, gula merah, daun pandan, dan garam sampai mendidih.Tambahkan kolang kaling, pacar cina, dan pisang tanduk. Masak di atas api kecil sampai meresap.Masukkan santan. Masak sampai mendidih.",
        "like": 150
      },
      {
        "nama": "Serabi",
        "asal": "Jawa Barat",
        "img": "assets/image/serabi.png",
        "desc":
            "Srabi Salah adalah sebuah makanan ringan yang berasal dari Solo, Jawa Tengah. Makanan ini terbuat dari tepung beras yang dicampur dengan santan dan digoreng di atas arang mirip pancake ( roti loyang ) atau pancake. ",
        "bahan": [
          "2 buah pisang tandung di potomh miring" "2-3 cm",
          "200 gram labu kuning dipotong kotak",
          "200 gram ubi merah di potong kotak",
          "100 gr kolang kaling"
        ],
        "bumbuhalus": [
          "3 sendok makan pacar cina",
          "2000ml air",
          "400gr gula merah, sisir halus",
          "3 lembar daun pandan ikat",
          "1/2 sendok teh garam",
          "500ml santan dari 1 butir kelapa"
        ],
        "caramasak":
            "Rebus labu kuning, ubi merah, air, gula merah, daun pandan, dan garam sampai mendidih.Tambahkan kolang kaling, pacar cina, dan pisang tanduk. Masak di atas api kecil sampai meresap.Masukkan santan. Masak sampai mendidih.",
        "like": 150
      },
      {
        "nama": "Kelepon",
        "asal": "Jawa ,Sumatera",
        "img": "assets/image/kelepon.png",
        "desc":
            "Klepon merupakan jajanan tradisional Indonesia yang umumnya terbuat dari tepung ketan putih yang dibentuk seperti bola-bola kecil dengan isi gula merah dan ditaburi parutan kelapa.",
        "bahan": [
          "2 gram tepung ketan",
          "50 gram tepung beras",
          "15 lembar daun pandan, di potong-potong",
          "100 gram kelapa parut",
          "50 gram gula merah sisir",
          "150 gram kelapa muda di parut lalu di kukus(taburan kelepon)",
          "1/2 garam"
        ],
        "bumbuhalus": [
          "2 sdm air putih sirih",
          "1 sdt garam",
          "225 ml air",
          "3 sdm bango kecap manis ",
          " 2 sdm air"
        ],
        "caramasak":
            "Blender daun pandan dan air. Saring dan sisihkan.Aduk rata tepung beras, tepung ketan, air kapur sirih, dan garam. Tambahkan air daun pandan perlahan-lahan sambil diaduk rata. Tuang sisa air, aduk kembali hingga kalis. Sisihkan.Panaskan kelapa parut, gula merah, dan Bango Kecap Manis sambil terus diaduk hingga gula larut dan air meresap. Angkat dan sisihkan.Ambil 1/2 sdm adonan klepon, pipihkan, letakkan 1/2 sdt isi unti kelapa ke bagian tengahnya. Tutup dan bulatkan. Ulangi hingga adonan habis, sisihkan.Rebus air, masukkan klepon secara bertahap. Masak hingga klepon mengapung. Angkat dan tiriskan, sisihkan. Aduk rata kelapa dan garam. Gulingkan klepon matang ke atas taburan kelapa hingga klepon terselimuti rata dengan kelapa parut.",
        "like": 150
      },
      {
        "nama": "Bika Ambon",
        "asal": "Medan",
        "img": "assets/image/bikaambon.png",
        "desc":
            "Bika ambon adalah kue tradisional khas Medan, Indonesia. Kue ini terbuat dari bahan-bahan seperti tepung tapioka, telur, gula, dan santan. Bika ambon dimasak selama 12 jam agar dapat bertahan dalam kondisi terbaik selama empat hari karena setelahnya kue tersebut mulai mengeras.",
        "bahan": [
          "200 ml air kelapa",
          "16 butir kuning telur",
          "300 gram sagu",
          "1 lembar daun pandan",
          "3 lembar daun jeruk"
        ],
        "bumbuhalus": [
          "100 gram terigu",
          "11 gram ragi instan",
          "400 gram gula pasir",
          "600 ml santan kental",
          "1 sdt garam",
          " 1 sdt vanili"
        ],
        "caramasak":
            "Rebus santan kental bersama daun pandan dan daun jeruk hingga matang dan agak berminyak. Biarkan mendingin.Aduk terigu, air kelapa, dan ragi hingga rata, lalu diamkan 15 menit. Aduk rata terigu, ragi, dan air kelapa. Diamkan 15 menit. Campurkan telur, garam, dan vanili, aduk rata. Masukkan larutan ragi, tepung sagu, dan tuang santan sedikit demi sedikit sambil diaduk hingga merata. Diamkan adonan selama 2 jam, tutup dengan kain bersih.Lapisi loyang dengan margarin atau minyak tipis-tipis, tuang adonan. Panggang adonan di suhu 180°C selama 40 menit. Berikan sedikit celah di pintu oven selama 20-30 menit pertama agar sarang terbentuk. Lalu tutup pintu oven setelahnya. Selesai.",
        "like": 150
      },
      {
        "nama": "Kue Dadar Gulung",
        "asal": "Bandung, Jawa Barat",
        "img": "assets/image/dadargulung.png",
        "desc":
            " Salah satu contoh dari kuliner lokal khas Bandung yang banyak digemari masyarakat setempat adalah dadar gulung.",
        "bahan": [
          "1/2 buah kelapa parut",
          "125 gram gula merah",
          "250 gram tepung terigu."
        ],
        "bumbuhalus": [
          "Air seckupnya",
          "garam secukupnya",
          "daun pandan / pewarna makanan untuk membuat warna kulit "
        ],
        "caramasak":
            "Masak gula merah dengan air secukupnya hingga larut. Masukan kelapa parut ke dalam larutan gula merah, sebaiknya gunakan kelapa yang masih muda agar lebih nikmat. Aduk kelapa dengan larutan gula merah hingga mengering. Diamkan campuran kelapa paurt dan gula merah hingga suhu ruang. Larutkan 250 gram tepung terigu dengan 600 ml air, tambahkan pewarna makanan berwarna hijau aduk hingga rata. Cetak kulit pada teflon anti lengket (ukuran sesuai selera). Masak kulit jangan sampai kering, biarkan pada kondisi masih lembek dan elastis. Mulai proses isi dengan cara taruh satu sendok teh kelapa gula merah ke atas kulit kue, memarkan agar isi merata dari ujung ke ujung. Lipat kulit seperti amplop dan gulung. Cara melipatnya sama persis dengan risol atau lumpia. Agar lebih mudah menggulung bisa menggunakan bantuan alas plastik. Selesai.",
        "like": 150
      },
      {
        "nama": "Roti Jala Medan Kari Ayam",
        "asal": "Sumatera Utara",
        "img": "assets/image/rotijala.png",
        "desc":
            " Roti jala adalah makanan khas masyarakat Melayu di Sumatra Utara. Hidangan ini juga banyak ditemui di Riau. Biasanya makanan ini disuguhkan bersama kuah kari Melayu. Di Deli, Sumatera Utara makanan ini terkenal disajikan dengan kari kambing dan acar nanas.",
        "bahan": [
          "500 gr tepung terigu",
          "100 gr margarin cair",
          "1 butir telur Garam, Gula",
          "Air secukupnya",
          "4 tetes pewarna kuning telur"
        ],
        "bumbuhalus": [
          "1 ekor ayam di potong kecil",
          "1/2 kg kentang dipotong kotak",
          " Santan dari 1 butir,kelapa",
          "4 sdm minyak makan",
          "3 siung bawang merah iris",
          "2 tangkai daun kari",
          "5 buah kapulaga",
          "3 buah bunga lawang",
          "1/2 sdm jintan putih",
          "1 sdm bubuk kari merk bebas",
          "Garam",
          "Gula"
        ],
        "caramasak":
            "Pertama, siapkan terlebih dahulu roti jalanya. Moms bisa memulai prosesnya dengan melehkan margarinSetelah dingin campur semua bahan dan air sedikit demi sedikit, biar cepet, diblender biar tidak ada yang menggumpalPanaskan teflon, sapukan dengan tisu yang berminyakJika Moms tidak memiliki cetakan jala, Moms bisa memanfaatkan botol saus. ya!Setelah roti jala sudah jadi, sekarang saatnya membuat kuah kari ayamnyaPertama, lumuri ayam garam dan jeruk nipisPanaskan 4 sdm minyak tumis bawang, daun kari, kapulaga, bunga lawang dan bumbu gilingSetelah minyak keluar, masukkan ayam masak sebentar, tambahkan santan, kentang, gula dan garamKoreksi rasa, tunggu mendidih sambil diadukKari dan juga roti jala sudah jadi.",
        "like": 150
      },
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    print('val');
    if (val == 'makananberat') {
      setData = makananberat;
    } else {
      setData = makananringan;
    }
  }
}
