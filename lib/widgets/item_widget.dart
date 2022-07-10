import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6)
          ]),
      child: Expanded(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 85,
                width: 105,
                child: Image.asset('assets/images/bananas.jpeg')),
            const Text(
              "Stawberry",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "\$20",
              style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'roboto',
                  color: Colors.red,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              height: 34,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.deepOrangeAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add to Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
