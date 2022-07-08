import 'package:flutter/material.dart';
import 'package:marketlakay/widgets/item_widget.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //maxCrossAxisExtent: 200,
          //childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3),
      itemCount: 15,
      itemBuilder: (BuildContext ctx, index) {
        return const ItemWidget();
      },
    );
  }
}
