
import 'package:flutter/material.dart';




class compra extends StatefulWidget {
  const compra({Key? key}) : super(key: key);

  @override
  _compraState createState() => _compraState();
}

class _compraState extends State<compra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:   DecorationImage(
            image: AssetImage('assets/imagens/mercado3.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),

          ),
        ),
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Text(
              "Finalize seu pedido",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 80)),
            Text(
              "Qual seria o horario de entrega?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.only(left: 70),
              child: TextField(


                keyboardType: TextInputType.datetime,

                decoration: InputDecoration(

                  border: InputBorder.none,
                  hintText: 'Horario',

                ),



              ),


            ),
            Padding(padding: EdgeInsets.only(top: 50)),



            RaisedButton(
              child: Text(
                "           Pronto           ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.white,
              color: Colors.black54,

              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    barrierColor: Colors.black.withOpacity(0.5),
                    context: context,
                    builder: (context) => AlertDialog(
                        content: Text(
                            "Seu pedido será entrege no horario combinado"),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Ok");
                            },
                            child: Text("Ok"),
                          ),
                        ]));
                ;
              },
            ),
          ],
        ),


      ),
    );
  }
}
