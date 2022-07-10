import 'package:flutter/material.dart';
import 'package:marketlakay/widgets/item_widget.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //maxCrossAxisExtent: 200,
          childAspectRatio: (100 / 175),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4),
      itemCount: 15,
      itemBuilder: (BuildContext ctx, index) {
        return const ItemWidget();
      },
    );

    /* AlignedGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        return ItemWidget();
      },
    );*/
  }
}
