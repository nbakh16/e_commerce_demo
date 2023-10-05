import 'package:e_commerce_demo/ui/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CreateReviewScreen extends StatelessWidget {
  const CreateReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Create Review',),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'First Name',
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(height: 18.0,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: 18.0,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Write Review',
                  labelText: 'Write Review',
                ),
                maxLines: 6,
              ),
              const SizedBox(height: 18.0,),
              ElevatedButton(
                onPressed: () {

                },
                child: const Text('Submit')
              )
            ],
          ),
        ),
      ),
    );
  }
}
