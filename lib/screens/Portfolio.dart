import 'package:apps/widgets/customText.dart';
import 'package:flutter/material.dart';
import '../widgets/CustomButton.dart';

class PortfolioScreen extends StatelessWidget{
  const PortfolioScreen({super.key,required this.name, required this.specialist});
  final String name;
  final String specialist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/Gojo Satoru.jpg'),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 312,
                height: 140,
                child: CustomText(text: 'Hi, I am $name $specialist',
                    size: 32,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 327,
                height: 96,
                child: CustomText(text: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                    size: 16,
                    fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(color: Color(0xffFF6464),text: 'Download Resume',onPressed: (){},)
            ],
          ),
        ),
      ),
    );
  }
}




