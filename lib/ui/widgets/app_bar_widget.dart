import 'package:flutter/material.dart';
import 'package:travel_guide/ui/screens/utils/asset_utils.dart';

class OpAppBar extends StatefulWidget {
  final bool? isUpdateScreen;

  const OpAppBar({super.key, this.isUpdateScreen});

  @override
  State<OpAppBar> createState() => _OpAppBarState();
}

class _OpAppBarState extends State<OpAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color(0xffFFF9F9FF),
      title: Image.asset(
        AssetsUtils.logoPng,
        width: 150,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
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
    );
  }
}
