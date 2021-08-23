import 'dart:js';
import 'package:flutter/material.dart';
import 'package:projeto_final/imagemFundo.dart';
import 'package:projeto_final/indice.dart';
import 'Cadastro.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        imagemFundo(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "SupermarketAPP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(180)),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                            height: 60,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => indicie()));
                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 135, right: 133),
                                    child: Text(
                                      "Entrar",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(top: 20, left: 15, right: 15),
                          child: Container(
                            height: 60,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {
                                    showDialog(
                                        barrierDismissible: false,
                                        barrierColor:
                                        Colors.black.withOpacity(0.5),
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            content: Text(
                                                "Voce ja esta cadastrado!"),
                                            actions: <Widget>[
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop("Ok");
                                                },
                                                child: Text("Ok"),
                                              ),
                                            ]));
                                  },
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(left: 115, right: 105),
                                    child: Text(
                                      "Cadastrar-se",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
