import 'package:flutter/material.dart';

class BodyWithHeader extends StatelessWidget {

  final Widget child;
  final String? imagePath;

  const BodyWithHeader({ super.key, required this.child, this.imagePath });

   @override
   Widget build(BuildContext context) {
       return CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 185,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: Image.asset(
                imagePath ?? "assets/bookings_header.png",
              ),
            ),
          ),
          SliverFillRemaining(
            child: child,
          ),
        ],
    );
  }
}