import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("slider && checks")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 10,
                max: 400,
                activeColor: AppTheme.primary,
                divisions: 10,
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                }),
            Image(
              image: NetworkImage(
                  "https://graffica.info/wp-content/uploads/2014/05/00-Popeye-marino.jpg"),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
