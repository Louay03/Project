import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:gorofat/presentation/Auth/login_page.dart';
import 'package:gorofat/presentation/OnBoarding/onboarding_1st.dart';
import 'package:gorofat/presentation/OnBoarding/onboarding_2nd.dart';
import 'package:gorofat/presentation/OnBoarding/onboarding_3rd.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final DotIndicatorController dotIndicatorController =
        Get.put(DotIndicatorController());

    controller.addListener(() {
      dotIndicatorController.updateCurrentPage(controller.page?.round() ?? 0);
    });

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              OnBoardingFirst(
                text: 'Skip',
                onPressed: () {
                  Get.to(const LoginPage());
                },
              ),
              OnBoardingSecond(
                text: 'Skip',
                onPressed: () {
                  Get.to(const LoginPage());
                },
              ),
              OnBoardingThird(
                text: 'Skip',
                onPressed: () {
                  Get.to(const LoginPage());
                },
              ),
            ],
          ),
          Positioned(
            bottom: 20.0.h,
            left: 0,
            right: 0,
            child: Obx(() => DotIndicator(
                  pageCount: 3,
                  currentPage: dotIndicatorController.currentPage.value,
                )),
          ),
        ],
      ),
    );
  }
}

class DotIndicatorController extends GetxController {
  RxInt currentPage = 0.obs;

  void updateCurrentPage(int page) {
    currentPage.value = page;
  }
}

class DotIndicator extends StatelessWidget {
  final int pageCount;
  final int currentPage;

  const DotIndicator({
    Key? key,
    required this.pageCount,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color dotColor = Colors.white;
    if (currentPage == 1) {
      dotColor = const Color(0xffF3881D);
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          pageCount,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 450),
            width: index == currentPage ? 25.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                index == currentPage ? 30.0 : 10.0,
              ),
              color: index == currentPage ? dotColor : const Color(0xff878787),
            ),
          ),
        ),
      ),
    );
  }
}
