import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String amount;
  final String city;
  final IconData icon;
  final double dy;

  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const MyCard({
    super.key,
    required this.title,
    required this.amount,
    required this.city,
    required this.icon,
    required this.dy,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, dy),
      child: Container(
        clipBehavior: Clip.hardEdge, //어떤 아이템이 overflow됬을때 처리하는 방법제시
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: isInverted ? _blackColor : Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 18,
                          color: isInverted ? _blackColor : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        city,
                        style: TextStyle(
                          fontSize: 14,
                          color: isInverted
                              ? _blackColor.withOpacity(0.7)
                              : Colors.white.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                //부모요소에 영향없이 사이즈를 키울때
                scale: 2,
                child: Transform.translate(
                  //부모요소 영향없이 별도로 이동시킬때
                  offset: const Offset(-3, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
