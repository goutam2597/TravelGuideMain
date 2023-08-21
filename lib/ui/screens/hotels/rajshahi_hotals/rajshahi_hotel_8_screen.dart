import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';
import 'package:travel_guide/ui/widgets/app_bar_widget.dart';
import 'package:url_launcher/url_launcher.dart';


class RajshahiHotel8Screen extends StatefulWidget {

  const RajshahiHotel8Screen({super.key});

  @override
  State<RajshahiHotel8Screen> createState() => _RajshahiHotel8ScreenState();
}

class _RajshahiHotel8ScreenState extends State<RajshahiHotel8Screen> {

  Uri dialNumber = Uri(scheme: 'tel',path: '12345678901');
  final Uri _url = Uri.parse('https://goo.gl/maps/95YYF4NtCPvEmdKS9');

  callNumber()async{
    await launchUrl(dialNumber);
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                bottomRight: Radius.circular(10)),
                            child: Image.asset(
                              AssetsUtils.detailsPng,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
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
                          const Text(
                            'Dhaka Regency',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Barishal is the capital and largest city of Bangladesh. Located on the eastern banks of the Buriganga River, Dhaka is a vibrant and densely populated metropolis. It serves as the political, cultural, and economic hub of the country.",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: callNumber,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.squarePhoneFlip),
                                  SizedBox(width: 8,),
                                  Text('01403818435',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: _launchUrl,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.squarePhoneFlip),
                                  SizedBox(width: 8,),
                                  Text('Dhaka Regency',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
