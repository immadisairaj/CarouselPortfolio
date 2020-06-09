import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:website/extensions/hover_extensions.dart';

import 'dart:html' as html;

Widget slider(BuildContext context, double height, double width, double scaleFactor, List<List<String>> title, bool isMobile) {
  if(isMobile)
    return _mobile(context, height, width, scaleFactor, title, isMobile);
  return _desktop(context, height, width, scaleFactor, title, isMobile);
}

Widget _desktop(BuildContext context, double height, double width, double scaleFactor, List<List<String>> title, bool isMobile) {
  CarouselController buttonCarouselController = CarouselController();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            buttonCarouselController.previousPage();
          },
        ),
      ).showCursorOnHover,
      Expanded(
        child: CarouselSlider.builder(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: height,
            autoPlay: (title.length == 1) ? false : true,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            pauseAutoPlayOnTouch: true,
          ),
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            if(title[index][4] == '')
              return _withoutLink(context, height, width, scaleFactor, title, isMobile, index);
            return _withLink(context, height, width, scaleFactor, title, isMobile, index);
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () {
            buttonCarouselController.nextPage();
          },
        ),
      ).showCursorOnHover,
    ],
  );
}

Widget _mobile(BuildContext context, double height, double width, double scaleFactor, List<List<String>> title, bool isMobile) {
  return CarouselSlider.builder(
    options: CarouselOptions(
      height: height,
      autoPlay: (title.length == 1) ? false : true,
      viewportFraction: 0.6,
      enlargeCenterPage: true,
      enableInfiniteScroll: false,
      pauseAutoPlayOnTouch: true,
    ),
    itemCount: title.length,
    itemBuilder: (BuildContext context, int index) {
      if(title[index][4] == '')
        return _withoutLink(context, height, width, scaleFactor, title, isMobile, index);
      return _withLink(context, height, width, scaleFactor, title, isMobile, index);
    },
  );
}

Widget _withLink(BuildContext context, double height, double width, double scaleFactor, List<List<String>> title, bool isMobile, int index) {
  return GestureDetector(
    child: Card(
      elevation: 3,
      child: Container(
        width: isMobile ? width * 0.6 : width * 0.4,
        child: Padding(
          padding: isMobile ? EdgeInsets.all(10) : EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isMobile ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[index][1],
                    style: TextStyle(
                      fontSize: 20 * scaleFactor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      title[index][2],
                      style: TextStyle(
                        fontSize: 15 * scaleFactor,
                      ),
                    ),
                  ),
                ],
              ) : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title[index][1],
                    style: TextStyle(
                      fontSize: 20 * scaleFactor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      title[index][2],
                      style: TextStyle(
                        fontSize: 15 * scaleFactor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  title[index][0],
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  title[index][3],
                  style: TextStyle(
                    fontSize: 18 * scaleFactor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    onTap: () {
      html.window.open(title[index][4], 'Title $index');
    },
  ).showCursorOnHover;
}

Widget _withoutLink(BuildContext context, double height, double width, double scaleFactor, List<List<String>> title, bool isMobile, int index) {
  return GestureDetector(
    child: Card(
      elevation: 3,
      child: Container(
        width: isMobile ? width * 0.6 : width * 0.4,
        child: Padding(
          padding: isMobile ? EdgeInsets.all(10) : EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isMobile ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[index][1],
                    style: TextStyle(
                      fontSize: 20 * scaleFactor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      title[index][2],
                      style: TextStyle(
                        fontSize: 15 * scaleFactor,
                      ),
                    ),
                  ),
                ],
              ) : Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title[index][1],
                    style: TextStyle(
                      fontSize: 20 * scaleFactor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      title[index][2],
                      style: TextStyle(
                        fontSize: 15 * scaleFactor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  title[index][0],
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  title[index][3],
                  style: TextStyle(
                    fontSize: 18 * scaleFactor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    onTap: () {},
  );
}
