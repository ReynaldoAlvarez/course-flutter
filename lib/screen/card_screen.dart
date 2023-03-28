import "package:fl_components/widgets/card_bible2.dart";
import "package:fl_components/widgets/widgets.dart";
import "package:flutter/material.dart";

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardBible(),
          SizedBox(
            height: 10,
          ),
          CardBible2(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2015/03/30/20/33/heart-700141_1280.jpg',
              name: null),
          SizedBox(
            height: 10,
          ),
          CardBible2(
            imageUrl:
                'https://recursoscristianosweb.com/wp-content/uploads/2018/04/Que-es-la-Gracia-de-Dios-Estudio-Biblico.webp',
            name: 'Jesús',
          ),
        ],
      ),
    );
  }
}
