import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_final/acougue.dart';
import 'package:projeto_final/bebidas.dart';
import 'package:projeto_final/frios.dart';
import 'package:projeto_final/higiene.dart';
import 'package:projeto_final/hortifruti.dart';
import 'package:projeto_final/laticinios.dart';
import 'package:projeto_final/limpeza.dart';
import 'package:projeto_final/padariaConfeitaria.dart';
import 'package:projeto_final/indice.dart';
import 'package:projeto_final/Home.dart';
import 'package:projeto_final/end.dart';

class marcearia extends StatefulWidget {
  const marcearia({ Key? key }) : super(key: key);

  @override
  _marceariaState createState() => _marceariaState();
}

class _marceariaState extends State<marcearia> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Marcenaria",
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
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
                  'Padaria e Confeitaria',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => padariaConfeitaria()));
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
                        color: Colors.blueGrey,
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
                    "Marcenaria",
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
                            child: Image.asset("assets/imagens/selante.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Selante",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$23,90",
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
                          )
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
                            child: Image.asset("assets/imagens/serra circular.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Serra Circular",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$170,90",
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
                          )
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
                            child: Image.asset("assets/imagens/Morsa.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Morsa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$150,90",
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
                          )
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
                            child: Image.asset("assets/imagens/Furadeira.jfif"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Furadeira",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$130,90",
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
                          )
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
                            child: Image.asset("assets/imagens/Kitchaves.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Kit de Chaves",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$70,90",
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
                          )
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
                            child: Image.asset("assets/imagens/Martelo ponta fina.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Martelo Ponta fina",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$56,00",
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
                            child: Image.asset("assets/imagens/Lanternadinamo.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Lanterna Dinamo",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$46,00",
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
                            child: Image.asset("assets/imagens/Marreta.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Marreta",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$55,00",
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
                            child: Image.asset("assets/imagens/Pé de cabra.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Pé de Cabra",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$78,00",
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
                            child: Image.asset("assets/imagens/Facão.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Facão",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$30,00",
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
                    color: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => padariaConfeitaria()));

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
                    color: Colors.blueGrey,
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
