import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_guide/ui/screens/division_locations.dart';
import 'package:travel_guide/ui/screens/hotels_screen.dart';
import 'package:travel_guide/ui/screens/popular_places_screen.dart';


class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({super.key});

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int _selectedScreenIndex = 0;

  final List<Widget> _screens = const [
    DivisionLocation(),
    PopularPlacesScreen(),
    HotelsScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFF9F9FF),
        currentIndex: _selectedScreenIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepOrange,
        onTap: (int index){
          _selectedScreenIndex = index;
          if(mounted){
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.locationDot,size: 20,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house,size: 20,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.hotel,size: 20,),
            label: '',
          ),
        ],
      ),
    );
  }
}
