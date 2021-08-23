import 'dart:js';
import 'package:flutter/material.dart';
import 'package:projeto_final/imagemFundo.dart';
import 'package:projeto_final/indice.dart';
import 'Cadastro.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        // Padding(padding: EdgeInsets.only(top: 50)),
                        //   SizedBox(
                        //    width: 128,
                        //  height: 128,
                        //   child: Image.asset(
                        //    "imagens/mercado2.jpg",
                        //  ),
                        //  ),
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
                                    showDialog(
                                      barrierColor: Colors.black54,
                                      barrierDismissible: false,
                                      context: context, builder: (context) => AlertDialog(  content: Text("Ops!, você ainda não possui uma conta no SupermarketAPP, clique no botão 'Cadastrar-se' e faça sua conta para poder acessar o aplicativo."),
                                      actions: <Widget>[
                                        FlatButton(
                                            onPressed: (){
                                              Navigator.of(context).pop();
                                            }, child: Text("Entendi")),
                                      ],
                                    ),
                                    ).then((value) => {
                                      print("Resultado é: Beleza" +value.toString()),
                                    });
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
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
