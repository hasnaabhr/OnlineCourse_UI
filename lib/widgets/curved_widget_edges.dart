import 'package:coursecenter/widgets/t_custome_curved_edges.dart';
import 'package:flutter/material.dart';

class TCustomCurvedWidget extends StatelessWidget {
  const TCustomCurvedWidget({
    super.key, this.child,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomeCurvedEdges(),
      child: child
    );
  }
}