import 'package:flutter/material.dart';

class SlideTransitionWidget extends StatefulWidget {
  final AnimationController? animationController;
  final Widget child;
  final bool willAnimate;
  final bool? isHorizontal;

  const SlideTransitionWidget({
    Key? key,
    this.animationController,
    required this.child,
    required this.willAnimate,
    this.isHorizontal = true,
  }) : super(key: key);

  @override
  State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
}

class _SlideTransitionWidgetState extends State<SlideTransitionWidget> with TickerProviderStateMixin {
  late final AnimationController backupController;

  late final Animation<Offset> _offsetAnimation;

  late final Animation<Offset> _noAnimation;

  @override
  void initState() {
    backupController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _offsetAnimation = Tween<Offset>(
      begin: widget.isHorizontal! ? const Offset(1.5, 0.0) : const Offset(0.0, 1.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: widget.animationController ?? backupController, curve: Curves.bounceIn));

    _noAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: widget.animationController ?? backupController, curve: Curves.bounceIn));

    widget.animationController?.forward() ?? backupController.forward();
    super.initState();
  }

  @override
  void dispose() {
    widget.animationController?.dispose();
    backupController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: widget.willAnimate ? _offsetAnimation : _noAnimation,
      child: widget.child,
    );
  }
}
