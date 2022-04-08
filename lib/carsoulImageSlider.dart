import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  List imagList = [
    'images/Games 7.jpg',
    'images/Games 16.jpg',
    'images/Games 20.jpg',
    'images/Games 27.jpg',
    'images/goodwp.com-16035.jpg',
    'images/goodwp.com-16042.jpg',
    'images/goodwp.com-16239.jpg',
    'images2/R.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'This Is line 1 Index :0 ',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          CarouselSlider(
            items: imagList.map((imageUrl) {
              return Container(
                //margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              );
            }).toList(),
            options: CarouselOptions(
              reverse: true,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 4),
              enlargeCenterPage: true,
              initialPage: 0,
              height: 200,
              //enableInfiniteScroll: true,
              onPageChanged: (int index, _) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer(0),
              buildContainer(1),
              buildContainer(2),
              buildContainer(3),
              buildContainer(4),
              buildContainer(5),
              buildContainer(6),
            ],
          )
          // const SizedBox(
          //   height: 75,
          // ),
          ,
          const Text(
            'This Is line 2 Index :1 ',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: imagList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Image.asset(
                  imagList[index],
                  fit: BoxFit.fill,
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
              initialPage: 1,
              autoPlay: true,
              scrollDirection: Axis.vertical,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayInFiniteScroll: true,
                enlargeCenterPage:true,



            ),
          )
        ],
      ),
    );
  }

  Container buildContainer(index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: _currentIndex == index ? Colors.blue : Colors.yellow,
          shape: BoxShape.circle),
    );
  }
}
