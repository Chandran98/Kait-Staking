import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kait/staking.dart';
import 'package:kait/staking_page.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    requestPermissions();
    Timer(
            const Duration(seconds: 6),
            (() => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => StakingKey()))));
    
    
  }
  
      Future<void> requestPermissions() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.camera,
    Permission.storage,
  ].request();}



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Image.network(
            "https://kaitworld.com/public/assets/images/splash.png",fit: BoxFit.cover,),
      ),
    );
  }
}
