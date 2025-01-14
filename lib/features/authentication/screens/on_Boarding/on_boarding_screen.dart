
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
   const OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {

final oncontroller = OnBoardingController();


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(pages: oncontroller.pages,
          liquidController: oncontroller.controller,
          onPageChangeCallback: oncontroller.onPageChangeCallback,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,),
         Positioned(
                bottom: 60.0,
                child: OutlinedButton(
                onPressed: () => oncontroller.animateToPage(),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black26),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20)
                  ), child: Container(padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(color: Colors.black87,shape: BoxShape.circle),child: const Icon(Icons.arrow_forward_ios) ,),
            )),
          Positioned(
                top: 50,
                right: 20,
                child: TextButton(onPressed: ()=> oncontroller.skip(),
                  child: const Text("Skip", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),)),
          Obx(
              ()=> Positioned(
                bottom:10,
                child: AnimatedSmoothIndicator(
                    activeIndex:oncontroller.currentPage.value ,
                    count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5,
                  ),
                )),
          )
        ],
      ),
    );
  }


}


