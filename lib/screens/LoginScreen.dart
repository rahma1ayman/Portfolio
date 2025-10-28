
import 'package:apps/screens/Portfolio.dart';
import 'package:apps/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  LoginScreen({super.key});
  final TextEditingController controllerName = TextEditingController() ;

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controllerName,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                CustomButton(color: Color(0xffFF6464), text: 'Show Portfolio',onPressed: (){
                  final name = controllerName.text.trim();
                  if (name.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PortfolioScreen(name: name),
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
    );
  }

}