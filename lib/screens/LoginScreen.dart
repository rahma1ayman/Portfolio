
import 'package:apps/screens/Portfolio.dart';
import 'package:apps/widgets/CustomButton.dart';
import 'package:apps/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  LoginScreen({super.key});
  final TextEditingController controllerName = TextEditingController() ;
  final TextEditingController controllerSpecialist = TextEditingController() ;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bc.jpg'),
            fit: BoxFit.cover, // makes the image fill the screen
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(label: 'User Name', hintText: 'Enter Your Name', controller: controllerName),
                  SizedBox(height: 15,),
                  CustomTextFormField(label: 'Specialist', hintText: 'Enter your specialist', controller: controllerSpecialist),
                  SizedBox(height: 15,),
                  CustomButton(color: Color(0xffFF6464), text: 'Show Portfolio',onPressed: (){
                    final name = controllerName.text.trim();
                    final specialist = controllerSpecialist.text.trim();
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PortfolioScreen(name: name,specialist: specialist),
                        ),
                      );
                  }
                  }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}