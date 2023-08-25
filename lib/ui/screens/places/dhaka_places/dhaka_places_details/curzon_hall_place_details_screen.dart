import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:travel_guide/ui/screens/places/dhaka_places/dhaka_place_screen.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/app_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class CurzonHallPlaceDetailsScreen extends StatefulWidget {
  const CurzonHallPlaceDetailsScreen({super.key});

  @override
  State<CurzonHallPlaceDetailsScreen> createState() => _CurzonHallPlaceDetailsScreenState();
}

class _CurzonHallPlaceDetailsScreenState extends State<CurzonHallPlaceDetailsScreen> {

  final Uri _url = Uri.parse('https://goo.gl/maps/T1cRm4QMQMFbBB4K6');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _launchUrl,
        child: const Icon(Icons.location_on_outlined,size: 30,),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const OpAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ImageSlideshow(
                        width: double.infinity,
                        height: 250,
                        initialPage: 0,
                        indicatorColor: Colors.lightBlue,
                        indicatorRadius: 5,
                        indicatorBackgroundColor: Colors.white60,
                        isLoop: true,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            child: Image.asset(
                              AssetsUtils.detailsPng,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            child: Image.asset(
                              AssetsUtils.detailsPng,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            child: Image.asset(
                              AssetsUtils.detailsPng,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            child: Image.asset(
                              AssetsUtils.detailsPng,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Curzon Hall',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          const SizedBox(height: 8),
                          const Text("The Curzon Hall is a British Raj-era building and home of the Faculty of Sciences at the University of Dhaka. Curzon Hall, meant to be a town hall originally, was named after Lord Curzon Viceroy of India, who laid its foundation in 1904 at the time of Bengal partition Th magnificent establishment, a part of the University of Dhaka, gloriously represents the architectural Style of Dhaka, elements. which is a happy blend of European and Mughal.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          const SizedBox(height: 16),
                          ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DhakaPlacesScreen()));
                          },
                              child: const Text('click')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
