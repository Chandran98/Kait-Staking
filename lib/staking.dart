import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class StakingKey extends StatefulWidget {
  const StakingKey({super.key});

  @override
  State<StakingKey> createState() => _StakingKeyState();
}

class _StakingKeyState extends State<StakingKey> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(body:   WebviewScaffold(
            url: "https://kaitworld.com/public/login",
                      withLocalStorage: true,
    
      )),
    );
  }
}