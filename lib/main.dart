import 'package:ebook/routes/routes.dart';
import 'package:ebook/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eBook',
      theme: ThemeData(  
          scaffoldBackgroundColor: Colors.white,
           textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      getPages: RoutesPages.routes,
      initialRoute: RoutesName.WELCOME,
    );
  }
}
