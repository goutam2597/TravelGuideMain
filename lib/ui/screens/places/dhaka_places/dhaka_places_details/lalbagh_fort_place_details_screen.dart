import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:travel_guide/ui/screens/places/dhaka_places/dhaka_place_screen.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/app_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LalbaghFortPlaceDetailsScreen extends StatefulWidget {
  const LalbaghFortPlaceDetailsScreen({super.key});

  @override
  State<LalbaghFortPlaceDetailsScreen> createState() => _LalbaghFortPlaceDetailsScreenState();
}

class _LalbaghFortPlaceDetailsScreenState extends State<LalbaghFortPlaceDetailsScreen> {

  final Uri _url = Uri.parse('https://goo.gl/maps/QZRV1DoURzMJd5rWA');

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
                          const Text('Lalbagh Fort',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
                          const SizedBox(height: 8),
                          const Text("Lalbagh Fort (also Fort Aurangabad) is an incomplete 17th-century Mughal fort complex that stands before the Buriganga River in the southwestern part of Dhaka, Bangladesh. The construction was started in 1678 AD by Mughal Subahdar Muhammad Azam Shah who was the son of Emperor Aurangzeb and later emperor himself. His successor, Shaista Khan, did not continue the work, though he stayed in Dhaka up to 1688.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
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
