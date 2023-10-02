import 'package:flutter/material.dart';


class ProductColorsList extends StatefulWidget {
  const ProductColorsList({
    super.key,
  });

  @override
  State<ProductColorsList> createState() => _ProductColorsListState();
}

class _ProductColorsListState extends State<ProductColorsList> {
  final List<Color> colors = [
    Colors.orange,
    Colors.blue,
    Colors.redAccent,
    Colors.amber,
    Colors.teal
  ];

  int _selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 5.0,),
        SizedBox(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0.5),
                child: InkWell(
                  borderRadius: BorderRadius.circular(22),
                  onTap: () {
                    _selectedColorIndex = index;
                    setState(() {});
                  },
                  child: CircleAvatar(
                    backgroundColor: colors[index],
                    child: _selectedColorIndex == index
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : null,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}