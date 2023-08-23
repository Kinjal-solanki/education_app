import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final double height;
  Carousel({super.key, required this.height});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context, 0);
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (BuildContext context, int itemIndex) {
              return Transform.scale(
                  scale: itemIndex == _index ? 1 : 0.9,
                  child: _buildCarouselItem(context, carouselIndex, itemIndex));
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}


/*class Carousel extends StatelessWidget {

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        itemBuilder: (BuildContext context, int index) {
          if(index % 2 == 0) {
            return _buildCarousel(context, index ~/ 2);
          }
          else {
            return Divider();
          }
        },
      );
  }
}*/
