import 'package:flutter/material.dart';
import 'package:karngea4u/core/utils/custom_shapes/curved_shape.dart';

class CCurvedWidgets extends StatelessWidget {
  const CCurvedWidgets({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CCustumCurvedEdges(), child: child);
  }
}
