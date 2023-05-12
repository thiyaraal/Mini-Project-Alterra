import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carausel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        //1st Image of Slider
        ContainerCarausel(image: const NetworkImage('assets/image/cendol.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/oporayam.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/rendang.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/sate.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/kelepon.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/serabi.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/bikaambon.png')),
        ContainerCarausel(
            image: const NetworkImage('assets/image/mieaceh.png')),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}

class ContainerCarausel extends StatelessWidget {
  ImageProvider<Object> image;
  ContainerCarausel({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
