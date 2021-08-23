import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_final/acougue.dart';
import 'package:projeto_final/bebidas.dart';
import 'package:projeto_final/frios.dart';
import 'package:projeto_final/higiene.dart';
import 'package:projeto_final/hortifruti.dart';
import 'package:projeto_final/laticinios.dart';
import 'package:projeto_final/limpeza.dart';
import 'package:projeto_final/mercearia.dart';
import 'package:projeto_final/indice.dart';
import 'package:projeto_final/Home.dart';
import 'package:projeto_final/end.dart';

class padariaConfeitaria extends StatefulWidget {
  const padariaConfeitaria({Key? key}) : super(key: key);

  @override
  _padariaConfeitariaState createState() => _padariaConfeitariaState();
}

class _padariaConfeitariaState extends State<padariaConfeitaria> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Padaria e Confeitaria",
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: ClipOval(
                  child: Image.asset(
                    'assets/imagens/pessoa.jpg',
                    width: 100,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Categorias:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Text(
                  'Promoção',
                  style: TextStyle(
                    fontSize: 14,
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
                    fontSize: 14,
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
                    fontSize: 14,
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
                    fontSize: 14,
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
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => higiene()));
                },
              ),
              ListTile(
                title: Text(
                  'Hortifruti',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => hortifruti()));
                },
              ),
              ListTile(
                title: Text(
                  'Laticinios',
                  style: TextStyle(
                    fontSize: 14,
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
                    fontSize: 14,
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
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => marcearia()));
                },
              ),
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
              )
            ],
          ),
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
                        color: Colors.brown,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                          bottomRight: Radius.circular(36),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40, bottom: 55),
                          ),
                        ],
                      )),
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
                    "Pães",
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
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/imagens/paofrances.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pão Francês",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$5,95 KG",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/imagens/paofrancesintegral.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pão Francês Integral",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$14,90 KG",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/imagens/baguete.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pão Baguete",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$3,60",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/imagens/sovado.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pão Sovado",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$7,70",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            width: 170,
                            height: 170,
                            child: Image.asset("assets/imagens/massinha.jpeg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Massinha Doce",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$8,95 KG",
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            child: Image.asset("assets/imagens/bolonopote.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Bolo no Pote",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$6,20",
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
                            child: Image.asset("assets/imagens/torta.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Torta",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$50,00 KG",
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
                            child: Image.asset("assets/imagens/croissant.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Croissant Doce ou Salgado",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$3,90",
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
                            child: Image.asset("assets/imagens/paoforma.webp"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Pão de Forma",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$5,40",
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
                            child: Image.asset("assets/imagens/tortasalgada.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Torta Salgada",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$48,50 KG",
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
                    Padding(padding: EdgeInsets.only(bottom: 30)),
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
                    color: Colors.brown,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => acougue()));
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
                    color: Colors.brown,
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