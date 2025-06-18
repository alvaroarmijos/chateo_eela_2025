import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:flutter/material.dart';

class OnboardingDivider extends StatelessWidget {
  const OnboardingDivider({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? AppColors.lightGrey;
    return Row(
      children: [
        Expanded(child: Divider(color: dividerColor.withOpacity(0.2))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'OR',
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(color: dividerColor),
          ),
        ),
        Expanded(child: Divider(color: dividerColor.withOpacity(0.2))),
      ],
    );
  }
}
