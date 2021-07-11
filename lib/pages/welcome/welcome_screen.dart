import 'package:ebook/routes/routes.dart';
import 'package:ebook/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(  
        width: double.infinity,
        decoration: BoxDecoration(  
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),

        ),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline1,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]
              ),
              ),
              SizedBox(
                child: RoundedButton(
                  text: "Start Reading",
                  fontSize: 20,
                  press: ()=>Get.toNamed(RoutesName.HOME),
                ),
              ),
          ],
        ),
      ),
        
    );
  }
}