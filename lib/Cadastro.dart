import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_final/Home.dart';
import 'package:projeto_final/imagemFundo.dart';
import 'package:projeto_final/Home2.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();

  void usuario() {
    String nome;
    setState(() {
      nome = _textEditingController1.text;
    });
  }

  void _loginUsuario() {
    String nome = _textEditingController1.text;
    String telefone = _textEditingController2.text;
    String endereco = _textEditingController3.text;

    String tudo = _textEditingController1.text;
    _textEditingController2.text;
    _textEditingController3.text;

    if (tudo.isEmpty) {
      showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          context: context,
          builder: (context) => AlertDialog(
              content: Text(
                  "Opss! Alguns campos estão vazio, preecha-os pois são obrigatorios!"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop("Ok");
                  },
                  child: Text("Ok"),
                ),
              ]));
    } else if (nome.isEmpty) {
      showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          context: context,
          builder: (context) => AlertDialog(
              content: Text(
                  "Opss! Alguns campos estão vazio, preecha-os pois são obrigatorios!"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop("Ok");
                  },
                  child: Text("Ok"),
                ),
              ]));
    } else if (telefone.isEmpty) {
      showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          context: context,
          builder: (context) => AlertDialog(
              content: Text(
                  "Opss! Alguns campos estão vazio, preecha-os pois são obrigatorios!"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop("Ok");
                  },
                  child: Text("Ok"),
                ),
              ]));
    } else if (endereco.isEmpty) {
      showDialog(
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          context: context,
          builder: (context) => AlertDialog(
              content: Text(
                  "Opss! O campo Endereço esta vazio, preecha-o pois é obrigatorio!"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop("Ok");
                  },
                  child: Text("Ok"),
                ),
              ]));
    } else if (tudo.isNotEmpty) {
      print("O valor do Nome é:" + _textEditingController1.text);
      print("O valor do Telefone é:" + _textEditingController2.text);
      print("O valor do Endereço é:" + _textEditingController3.text);
      showDialog(
        barrierColor: Colors.black54,
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          content: Row(
            children: <Widget>[
              Icon(Icons.check_circle),
              Padding(padding: EdgeInsets.only(right: 4)),
              Text("Cadastro feito com sucesso!"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home2()));
                },
                child: Text("Beleza")),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        imagemFundo(),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "Cadastre-se no",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "SupermaketApp",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Nome',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  hintStyle: TextStyle(color: Colors.white)),
                              style: TextStyle(color: Colors.white),
                              onSubmitted: (String a) {
                                print("O Nome é:" + a);
                              },
                              controller: _textEditingController1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Telefone',
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                  hintStyle: TextStyle(color: Colors.white)),
                              style: TextStyle(color: Colors.white),
                              onSubmitted: (String b) {
                                print("O Telefone é:" + b);
                              },
                              controller: _textEditingController2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Endereço',
                                  prefixIcon: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  hintStyle: TextStyle(color: Colors.white)),
                              style: TextStyle(color: Colors.white),
                              onSubmitted: (String c) {
                                print("O Endereço é:" + c);
                              },
                              controller: _textEditingController3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 60, right: 60),
                    child: Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              _loginUsuario();
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                "Cadastrar-se",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
            ),
          ),
        ),
      ],
    );
  }
}
