import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatefulWidget {
  final List<String> sliderImages;

  const CarouselSliderWidget({
    required this.sliderImages,
  });

  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatefulBuilder(
          builder: (context, setState) {
            return Column(
              children: [
                CarouselSlider.builder(
                  itemCount: widget.sliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    return buildOfferBannerContainer(
                      widget.sliderImages[index],
                    );
                  },
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    pageSnapping: true,
                    viewportFraction: 1,
                    autoPlay: true,
                  ),
                ),
                buildIndicator(),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget buildOfferBannerContainer(String sliderImage) {
    return mainHeaderContainer(offerImage: sliderImage);
  }

  Widget mainHeaderContainer({required String offerImage}) {
    return FractionallySizedBox(
      widthFactor: 1.08,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          offerImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: widget.sliderImages.length,
      effect: ExpandingDotsEffect(
        dotColor: AppColors.lightGrey,
        dotHeight: 6,
        dotWidth: 6,
        activeDotColor: AppColors.appTheme,
      ),
    );
  }
}
