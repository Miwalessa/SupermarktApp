import 'package:flutter/material.dart';

class imagemFundo extends StatelessWidget {
  const imagemFundo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('imagens/mercado3.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.3),
            Colors.black.withOpacity(.2),
            Colors.black.withOpacity(.1),
          ]),
        ),
      ),
    );
  }
}
