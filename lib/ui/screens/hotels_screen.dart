import 'package:flutter/material.dart';
import 'package:travel_guide/ui/screens/hotels/chattogram_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/barishal_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/dhaka_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/khulna_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/mymennsingh_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/rajshahi_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/rangpur_hotels_screen.dart';
import 'package:travel_guide/ui/screens/hotels/sylhet_hotels_screen.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/app_bar_widget.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DhakaHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BarishalHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SylhetHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChattogramHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const KhulnaHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MymennsinghHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RajshahiHotelsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RangpurHotelsScreen()));
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
