import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_final/bebidas.dart';
import 'package:projeto_final/frios.dart';
import 'package:projeto_final/higiene.dart';
import 'package:projeto_final/indice.dart';
import 'package:projeto_final/acougue.dart';
import 'package:projeto_final/laticinios.dart';
import 'package:projeto_final/limpeza.dart';
import 'package:projeto_final/mercearia.dart';
import 'package:projeto_final/padariaConfeitaria.dart';
import 'package:projeto_final/Home.dart';
import 'package:projeto_final/end.dart';

class hortifruti extends StatefulWidget {
  const hortifruti({Key? key}) : super(key: key);

  @override
  _hortifrutiState createState() => _hortifrutiState();
}

class _hortifrutiState extends State<hortifruti> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Hortifruti",
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: ClipOval(
                  child: Image.asset(
                    'assets/imagens/pessoa.jpg',
                    width: 130,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Categorias:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Text(
                  'Indice',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => indicie()));
                },
              ),
              ListTile(
                title: Text(
                  'Açougue',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => acougue()));
                },
              ),
              ListTile(
                title: Text(
                  'Bebidas',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => bebidas()));
                },
              ),
              ListTile(
                title: Text(
                  'Frios',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => frios()));
                },
              ),
              ListTile(
                title: Text(
                  'Higiene',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => higiene()));
                },
              ),
              ListTile(
                title: Text(
                  'Laticínios',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => laticinios()));
                },
              ),
              ListTile(
                title: Text(
                  'Limpeza',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => limpeza()));
                },
              ),
              ListTile(
                title: Text(
                  'Marcenaria',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => marcearia()));
                },
              ),
              ListTile(
                title: Text(
                  'Padaria e Confeitaria',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => padariaConfeitaria()));
                },
              ),
              Padding(padding: EdgeInsets.all(10)),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text(
                  'Voltar',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.1,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: size.height * 0.2 - 27,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),
                        ),
                      ),
                      ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.black54,
                            ),
                          ]),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "   Pesquisar",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Frutas",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti1.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Laranja",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,10 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {

                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti2.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 50),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Banana",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,21 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti3.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Melancia",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,55 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti4.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Abacate",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,70 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti5.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 70),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Mamão",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,15 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Verduras",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti6.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Alface ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$1,00 un",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti7.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Couve ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$3,15 un",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti8.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Repolho ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,00 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti9.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Acelga ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$3,90 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti10.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Brocolis ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$3,60 un",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Legumes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti11.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 30),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Tomate",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,50 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti12.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Cenoura",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$1,85 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti13.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Berinjela",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$6,40 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti14.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Rabanete ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,20 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Card(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset("imagens/hortifruti15.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Abobora",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$2,40 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90),
                            child: Column(
                              children: <Widget>[
                                FlatButton(
                                  child: Text(
                                    "Comprar",
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 90),
              child: Row(

                children: <Widget>[

                  FlatButton(

                    child: Text(
                      "Proxima seção", style: TextStyle(fontSize: 30, color: Colors.white) ,
                    ),
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => laticinios()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 90),
              child: Row(

                children: <Widget>[

                  FlatButton(

                    child: Text(
                      "Finalizar Compra ", style: TextStyle(fontSize: 26, color: Colors.white) ,
                    ),
                    color: Colors.lightGreen,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => compra()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
