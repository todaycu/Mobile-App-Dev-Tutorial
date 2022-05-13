import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final Color upperColor, lowerColor;
  final String upperText, lowerText, image;

  const OffersCard(
      {Key? key,
      required this.upperColor,
      required this.lowerColor,
      required this.upperText,
      required this.lowerText,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: screenSize.height * .08,
            width: screenSize.width * .7,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(6, 4),
                      color: Colors.grey.shade200,
                      blurRadius: 10)
                ],
                color: upperColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                )),
            child: Align(
                alignment: Alignment.center,
                child: Text(upperText,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500))),
          ),
          Container(
            height: screenSize.height * .225,
            width: screenSize.width * .7,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(6, 4),
                      color: Colors.grey.shade200,
                      blurRadius: 10)
                ],
                color: lowerColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Stack(children: [
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(36)),
                        image: DecorationImage(image: AssetImage(image))),
                  )),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  lowerText,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
