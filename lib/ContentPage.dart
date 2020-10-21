import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    '01': 'Virus',
    '02': 'Perkembangan covid19',
    '03': 'Bersama lawan covid19',
    '04': 'Pasien',
    '05': 'Tes swab',
    '06': 'Vaksin',
    '07': 'Protokol kesehatan',
    '08': 'Alat',
    '09': 'Doctor',
    '10': 'friday prayers'
  };
  Map<String, String> desc = {
    '01':
        '''  Ini adalah gambaran bentuk dari covid19. ''',
    '02': ''' perkembangan covid19 di indonesia update 09 oktober pukul 12.00 wib di 34 provinsi. ''',
    '03':
        ''' Ilmuan akhirnya temukan cara sistem kekebalan tubuh. ''',
    '04': ''' Ini adalah gambar pasien yang terkena gejala covid19.  ''',
    '05':
        ''' Tes swab di lakukan drive thru. ''',
    '06': ''' Kabar baik untuk kita semua vaksin ilmiah telah di temukan untuk covid 19. ''',
    '07': ''' Agar masyarakat tahu protokol kesehatan untuk mencegah covid19. ''',
    '08': ''' Alat rapid test. ''',
    '09':
        '''  Para pahlawan garis terdepan ''',
    '10': ''' Muslim in indonesia divided over friday prayers amid corovirus fears '''
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                      Text(
                        'Jakarta, DKI Jakarta',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
