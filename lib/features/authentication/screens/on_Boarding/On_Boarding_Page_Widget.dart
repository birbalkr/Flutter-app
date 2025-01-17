import 'package:flutter/material.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
   const OnBoardingPageWidget({super.key, required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height  * 0.5,),
          Column(children: [
            Text(model.title),
            Text(model.subtitle),],),
          Text(model.counterText),
          const SizedBox(height: 80.0,)
        ],
      ),);
  }
}