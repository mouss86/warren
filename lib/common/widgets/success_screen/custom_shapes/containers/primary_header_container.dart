

import 'package:flutter/material.dart';
import 'package:warren/common/widgets/success_screen/custom_shapes/containers/curved_edges/curved_edges_widget.dart';

import '../../../../../utils/constants/colors.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const  PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                    backgroundColor:
                        TColors.textWhite.withOpacity(0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                    backgroundColor:
                        TColors.textWhite.withOpacity(0.1))),
          child],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
