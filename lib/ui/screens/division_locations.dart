import 'package:flutter/material.dart';
import 'package:travel_guide/ui/screens/places/borishal_details_screen.dart';
import 'package:travel_guide/ui/screens/places/chattogeam_details_screen.dart';
import 'package:travel_guide/ui/screens/places/dhaka_details_screen.dart';
import 'package:travel_guide/ui/screens/places/khulna_details_screen.dart';
import 'package:travel_guide/ui/screens/places/mymennsingh_details_screen.dart';
import 'package:travel_guide/ui/screens/places/rajshahi_details_screen.dart';
import 'package:travel_guide/ui/screens/places/rangpur_details_screen.dart';
import 'package:travel_guide/ui/screens/places/sylhet_details_screen.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/app_bar_widget.dart';

class DivisionLocation extends StatefulWidget {
  const DivisionLocation({super.key});

  @override
  State<DivisionLocation> createState() => _DivisionLocationState();
}

class _DivisionLocationState extends State<DivisionLocation> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OpAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DhakaDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Dhaka >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.network(AssetsUtils.dhakaNet),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BarishalDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Barishal >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SylhetDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Sylhet >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChattoheanDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Chattogram >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>KhulnaDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Khulna >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MymennsingDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Mymennsingh >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RajshahiDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Rajshahi >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RangpurDetailsScreen()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.00),
                            child: Text(
                              'Rangpur >',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.00),
                            child: Image.asset(AssetsUtils.dhakaPng),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
