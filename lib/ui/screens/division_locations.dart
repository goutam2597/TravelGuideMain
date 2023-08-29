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

class DivisionLocation extends StatefulWidget {
  const DivisionLocation({super.key});
  @override
  State<DivisionLocation> createState() => _DivisionLocationState();
}
class _DivisionLocationState extends State<DivisionLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xffFFF9F9FF),
        title: Image.network(
          AssetsUtils.logoPng,
          width: 150,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  CircleAvatar(
                    child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png",),
                    radius: 40,
                  ),
                  SizedBox(height: 8,),
                  const Text(
                    'OnnoPoth',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home',style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.home,color: Colors.black,),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Dashboard',style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.dashboard,color: Colors.black,),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Settings',style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.settings,color: Colors.black,),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Settings',style: TextStyle(color: Colors.black),),
              leading: const Icon(Icons.settings,color: Colors.black,),
              onTap: () {
              },
            ),
          ],
        ),
      ),

      body: Column(
        children: [
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const BarishalDetailsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SylhetDetailsScreen()));
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
                            child: Image.network(
                              AssetsUtils.sylhetPng,
                              height: 200,
                              width:double.infinity,
                              fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChattoheanDetailsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const KhulnaDetailsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MymennsingDetailsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RajshahiDetailsScreen()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RangpurDetailsScreen()));
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
