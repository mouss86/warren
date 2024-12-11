import 'package:flutter/material.dart';
import 'package:warren/common/widgets/success_screen/custom_shapes/containers/curved_edges/curved_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TcustomCurvedEdges(),
      child: child,
    );
  }
}