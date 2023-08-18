import 'package:flutter/material.dart';
import 'package:travel_guide/ui/screens/bottom_nav_base_screen.dart';
import 'package:travel_guide/ui/screens/division_locations.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToDivisionLocation();
  }

  Future<void> navigateToDivisionLocation() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (_) async {
        if (mounted) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const BottomNavBaseScreen()),
            (route) => false,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Center(
            child: Image.asset(
        AssetsUtils.logoPng,
        width: 230,
        fit: BoxFit.scaleDown,
      ),
          )),
    );
  }
}
