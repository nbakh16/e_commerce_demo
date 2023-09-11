import 'package:e_commerce_demo/ui/screens/widgets/category_card.dart';
import 'package:e_commerce_demo/ui/screens/widgets/home/home_slider.dart';
import 'package:e_commerce_demo/ui/screens/widgets/home/section_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 16,),
              const HomeSlider(),
              SectionHeader(
                title: 'Categories',
                onTap: () {},
              ),
              const SizedBox(height: 8,),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const CategoryCard();
                    }),
              ),
              const SizedBox(height: 16,),
              SectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
