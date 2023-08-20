import 'package:flutter/material.dart';
import 'package:payments_with_provider/views/splash_screen.dart';
import 'package:provider/provider.dart';

import 'provider/payment_historic_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
       providers:[
        ChangeNotifierProvider(
          create: (context)=>PaymentHistoricProvider(),
        ),

      
      ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          ),
          
    );
  }
}

