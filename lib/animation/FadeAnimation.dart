import 'package:flutter/cupertino.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:simple_animations/movie_tween/movie_tween.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500))
          .thenTween('translateY', Tween(begin: 120.0, end: 0.0),
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);

    return CustomAnimationBuilder(
        builder: (BuildContext context, Movie value, Widget? child) {
          return Opacity(
              opacity: value.get("opacity"),
              child: Transform.translate(
                  offset: Offset(0.0, value.get("translateY")), child: child));
        },
        child: child,
        tween: tween,
        delay: Duration(milliseconds: (500 * delay).round()),
        duration: tween.duration);
  }
}
