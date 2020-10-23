import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    '01': 'Mocca coklat',
    '02': 'Purple',
    '03': 'Redvelvet',
    '04': 'Jeruk',
    '05': 'Dark coklat',
    '06': 'Vanila latte',
    
  };
  Map<String, String> desc = {
    '01':
        '''  Puding 18 adalah surganya puding aneka rasa dan bentuk ada di puding 18 salah satungnya varian rasa mocca coklat dan lain lainnya puding mocca coklat di bandrol harga RP 20.000 kalian bisa kunjungi kami di cafe puding 18 jakarta DKI jakarta . ''',
    '02': ''' Puding 18 juga mempunyai puding purple dengan rasa mix bluberry dan vanila yang lagi viral di dunia maya dan selalu sold out dengan di bandrol harga RP 25.000 . ''',
    '03':
        ''' Puding 18 juga mempunyai puding favorite yang sangang di sukai oleh anak milenial tak kalah dengan puding purple puding redvelvet juga selalu sold out dengan di bandrol harga RP 25.OOO. ''',
    '04': ''' Puding 18, puding jeruk dengan perasan jeruk asli dan di mix rasa vanilla menciptakan rasa yang segar dan manis dengan di bandrol harga RP 20.000.  ''',
    '05':
        ''' Puding dark coklat tak kalah dari punding purple dan puding redvelvet puding dark coklat juga sangat di gemari dengan karena rasanya yang tidak terlalu manis menjadi tambah daya tariknya RP 30.000. ''',
    '06': ''' Puding Vanila latte puding rasa vanila latte dengan rasa lattte yang kuat menjadi daya tarik puding itu sendiri di bandrol dengan harga RP 30.000. ''',
    
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail puding'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.apps),
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
                        'Puding 18 Jakarta, DKI Jakarta',
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
