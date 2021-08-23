import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:projeto_final/bebidas.dart';
import 'package:projeto_final/indice.dart';
import 'package:projeto_final/acougue.dart';
import 'package:projeto_final/higiene.dart';
import 'package:projeto_final/hortifruti.dart';
import 'package:projeto_final/laticinios.dart';
import 'package:projeto_final/limpeza.dart';
import 'package:projeto_final/mercearia.dart';
import 'package:projeto_final/padariaConfeitaria.dart';
import 'package:projeto_final/Home.dart';
import 'package:projeto_final/end.dart';


class frios extends StatefulWidget {
  const frios({Key? key}) : super(key: key);

  @override
  _friosState createState() => _friosState();
}

class _friosState extends State<frios> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Frios",
          style: TextStyle(
            fontFamily:'RobotoSlab',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
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
                  'Laticínios',
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
                        color: Colors.blue,
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
                    "Frios",
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
                            child: Image.asset("assets/imagens/Presunto.jfif"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Presunto",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$11,90 kg",
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
                            child: Image.asset("assets/imagens/Peito de peru.jfif"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Peito de Peru fatiado",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$23,90 kg",
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
                            child: Image.asset("assets/imagens/salame.jpg"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Salame",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$16,90 un",
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
                            child: Image.asset("assets/imagens/mortandela.jfif"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Mortandela",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$13,90 kg",
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
                            child: Image.asset("assets/imagens/peitodefrango.jfif"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Peito de Frango fatiado",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "R\$18,90 kg",
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
                            child: Image.asset("assets/imagens/lonbocanadense.webp"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Lonbo Canadense fatiado",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$19,00 kg",
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
                            child: Image.asset("assets/imagens/Rosbife.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Rosbife Fatiado",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$20,90 ",
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
                            child: Image.asset("assets/imagens/queijomuss.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Queijo Mussarela",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$17,00 kg",
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
                            child: Image.asset("assets/imagens/queijoche.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Queijo cheddar",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$15,00 kg",
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
                            child: Image.asset("assets/imagens/queijocoa.jfif"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 90),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Queijo Coalho",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "R\$16,00 kg",
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
                    color: Colors.blueAccent,
                    onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => higiene()));},
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
                    color: Colors.blueAccent,
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
