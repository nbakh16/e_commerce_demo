import 'package:e_commerce_demo/ui/utils/colors.dart';
import 'package:flutter/material.dart';


class ProductSizesList extends StatefulWidget {
  const ProductSizesList({
    super.key,
  });

  @override
  State<ProductSizesList> createState() => _ProductSizesListState();
}

class _ProductSizesListState extends State<ProductSizesList> {
  final List<String> sizes = ['S', 'M', 'L', 'XL'];

  int _selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12.0,),
        Text('Sizes',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 5.0,),
        SizedBox(
          height: 35,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: sizes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(0.5),
                child: InkWell(
                  onTap: () {
                    _selectedColorIndex = index;
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: mainColor),
                      color: _selectedColorIndex == index ? mainColor.shade400 : null
                    ),
                    alignment: Alignment.center,
                    child: Text(sizes[index],
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: _selectedColorIndex == index ? Colors.white : textColor
                      ),
                    ),
                  )
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 6.0,);
            },
          ),
        ),
      ],
    );
  }
}