// ignore_for_file: file_names

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/core/Style.dart';
import 'package:restaurant_app/core/Constant.dart';
import 'package:restaurant_app/Widget/OnBoarding/CustomOnBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        controller: controller,
        children: const [
          CustomOnBoarding(
            imageUrl: trackImageUrl,
            title: 'Nearby restaurants',
            subtitle:
                "You don't have to go far to find a good restaurant\n we have provided all the restaurants that is\n near you",
          ),
          CustomOnBoarding(
            imageUrl: orderImageUrl,
            title: 'Select the Favorites Menu',
            subtitle:
                "Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click",
          ),
          CustomOnBoarding(
            imageUrl: safeFoodImageUrl,
            title: 'Good food at a cheap price',
            subtitle:
                "You can eat at expensive restaurants with\n affordable price",
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        alignment: const Alignment(0, 0.98),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                controller.jumpToPage(2);
              },
              child: Text(
                'Skip',
                style: Styles.style
                    .copyWith(color: const Color(0xff4B5563), fontSize: 16),
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff32B768),
                dotWidth: 10,
                dotHeight: 10,
                paintStyle: PaintingStyle.fill,
                dotColor: Color(0xffE6E6E6),
                strokeWidth: 0,
              ),
            ),
            IconButton(
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                icon: const Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Color(0xff32B768),
                  size: 18,
                ))
          ],
        ),
      )
    ]);
  }
}
