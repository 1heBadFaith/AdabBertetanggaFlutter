import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.red,
          canvasColor: Colors.redAccent,
          appBarTheme: AppBarTheme(color: Colors.red, elevation: 0)),
      home: HomeUtama(),
    );
  }
}

class HomeUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Adab Bertetangga'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.info_outline)
                , onPressed: () {

                  AlertDialog(
                    title: Text('Tentang Saya'),
                    content: new Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildAboutMe()
                      ],
                    ),
                    actions: <Widget>[
                      new FlatButton(
                          onPressed: (){
                            Navigator.of(context);
                          },
                          child: const Text('Close'))
                    ],
                  );
                }),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),

      body: PageView(
        children: <Widget>[
          syaratItem('Mengucapkan Salam', 'mendahului menyampaikan salam. Orang-orang yang bertetangga dianjurkan saling menyapa ketika bertemu dengan mengucapkan salam. Tentu saja pihak yang mendahului mengucapkan salam secara akhlak lebih baik dan karenanya mendapatkan kebaikan yang lebih banyak.'),
          syaratItem('Tidak Lama2 ketika Bicara', 'Hidup bertetangga tidak bisa lepas dari berbicara satu sama lain. Namun pembicaraan itu sebaiknya tidak kelewat lama. Hal ini demi kebaikan seperti menghindari ghibah atau menggunjing pihak lain yang bisa menimbulkan fitnah dan sebagainya.'),
          syaratItem('Tidak Banyak Bertanya', 'Mengajukan pertanyaan seperti, “Mau kemana?” merupakan salah satu cara menyapa yang sudah umum. Jika pertanyaan tersebut dijawab, ” Mau ke pasar”, maka tidak harus diajukan lagi pertanyaan yang lebih detail seperti, “Mau beli apa?”, sebab hal ini bisa berarti terlalu ingin mengetahui urusan orang lain. Cukuplah diikuti dengan ungkapan,  ”Silakan” atau dalam bahasa Jawa, Monggo, nderekaken.'),
          syaratItem('Menjenguk Yg Sakit', 'Ketika tetangga ada yang sakit, ia berhak dikunjungi. Artinya, tetangga yang tidak sakit berkewajiban mengunjunginya tanpa memandang status sosial pihak yang sakit. Bertetangga pada dasarnya adalah berteman sehingga kesetaraan di antara mereka harus dijaga dengan baik.'),
          syaratItem('Berduka jika ada Musibah yg menimpa tetangga kita', 'Seorang tetangga juga berhak dikunjungi ketika sedang tertimpa musibah terutama kematian anggota keluarganya. Hal yang sebaiknya dilakukan dalam kujungan takziah adalah ikut berbela sungkawa dengan menunjukkan rasa duka dan mendoakan kebaikan terutama bagi si mayit dan keluarga yang ditinggalkan.'),
          syaratItem('Bahagia jika ia Bahagia', 'Tidak sebaiknya seseorang merasa tidak senang atas keberhasilan tetangganya disebabkan iri. Hal yang justru dianjurkan adalah saling mengucapkan selamat atas keberhasilan sesama tangga. Dengan cara ini perasaan iri atas keberhasilan tetangga bisa dihindarkan dan pertemanan sesama tentangga dapat terjaga.'),
          syaratItem('Bicara dengan lembut', 'Anak-anak tetangga dan pembantunya merupakan kelompok orang-orang lemah secara sosial sehingga harus dibesarkan hatinya. Salah satu caranya adalah dengan menghindari cara bicara yang bisa membuat mereka merasa takut.'),
          syaratItem('Memaafkan jika ada salah', 'Memberikan maaf kepada tetangga yang terselip lidah sangat dianjurkan sebab bisa jadi suatu ketika seseorang juga berbuat hal yang sama. Dengan kata lain saling memaafkan di antara orang-orang yang bertetangga sangat dianjurkan'),
          syaratItem('Menegur dengan halus jika ada salah', 'Menegur tetangga yang berbuat salah adalah baik terutama jika kesalahan itu menyangkut kepentingan orang banyak. Namun demikian teguran itu harus dilakukan dengan cara yang baik sehingga diterima dengan baik.'),
          syaratItem('Menundukan Mata dari tetangga (jika perempuan)', 'Memandang istri orang lain, terutama tetangga, harus dengan pandangan yang minimalis, yakni misalnya dengan menundukkan kepala. Hal ini untuk menghindari fitnah, atau timbulnya godaan-godaan yang bersumber dari setan.')
        ],
      ),
    );

  }
}

Widget syaratItem(String judul, String detail) {
  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          judul,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          textAlign: TextAlign.right,
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          detail,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0, height: 0.5),
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}

Widget _buildAboutMe() {
  return new RichText(
      text: new TextSpan(
          text: 'Hai Perkenalkan Nama Saya Muhammad Azhar najib dan saya tinggal di depok, saya lahir tanggal 18 Oktober 2005',
          style: const TextStyle(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'dan juga azhar memiliki beberapa hobi yang agak aneh')
          ]
      ));
}

void openNewSreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}
