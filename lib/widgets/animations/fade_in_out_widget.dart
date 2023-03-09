import 'package:flutter/material.dart';

class FadeInOutWidget extends StatefulWidget {
  FadeInOutWidget({
    Key? key,
    required this.animationController,
    required this.child,
    this.willFadeOut,
  }) : super(key: key);

  final AnimationController animationController;
  final Widget child;
  bool? willFadeOut = false;

  @override
  State<FadeInOutWidget> createState() => _FadeInOutWidgetState();
}

class _FadeInOutWidgetState extends State<FadeInOutWidget> {
  late final Animation<double> _fadeInFadeOut =
      Tween<double>(begin: widget.willFadeOut! ? 1.0 : 0.0, end: widget.willFadeOut! ? 0.3 : 1.0)
          .animate(widget.animationController);

  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    widget.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInFadeOut,
      child: widget.child,
    );
  }
}
