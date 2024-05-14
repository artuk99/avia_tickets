import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TyperAndDelitingAnimatedText extends AnimatedText {
  TyperAndDelitingAnimatedText(
    String text, {
    super.textAlign,
    super.textStyle,
    this.speed = const Duration(milliseconds: 120),
    this.curve = Curves.linear,
  }) : super(
          text: text,
          duration: speed * text.characters.length,
        );

  final Duration speed;
  final Curve curve;
  late Animation<double> _typingText;

  @override
  Duration get remaining => speed * (textCharacters.length - _typingText.value);

  @override
  void initAnimation(AnimationController controller) {
    _typingText = TweenSequence<double>(
      [
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1),
          weight: 1,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 0),
          weight: 1,
        ),
      ],
    ).animate(controller);
  }

  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    final count = (_typingText.value.clamp(0, 1) * textCharacters.length).round();

    assert(count <= textCharacters.length);
    return textWidget(textCharacters.take(count).toString());
  }

  @override
  Widget completeText(BuildContext context) => const Text('');
}
