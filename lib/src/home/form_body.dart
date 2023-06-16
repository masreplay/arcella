import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FormBody extends StatelessWidget {
  FormBody({
    super.key,
    required this.padding,
    required this.children,
    this.gap = 8.0,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.formKey,
  })  : assert(children.isNotEmpty, 'children must not be empty'),
        assert(gap >= 0, 'gap must be greater than or equal to 0');

  final GlobalKey<FormState>? formKey;
  final EdgeInsets? padding;
  final List<Widget> children;
  final double gap;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    Widget current = Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        for (var i = 0; i < children.length; i++)
          if (i != children.length - 1) ...[
            children[i],
            Gap(gap),
          ] else
            children[i],
      ],
    );

    if (formKey != null) {
      current = Form(
        key: formKey!,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: current,
      );
    }
    if (padding != null) {
      current = Padding(padding: padding!, child: current);
    }

    return SingleChildScrollView(child: current);
  }
}
