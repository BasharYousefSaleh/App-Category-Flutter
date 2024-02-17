import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OperationPage extends StatelessWidget {
  const OperationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //
        ListTile(
          title: const Text("العمليات"),
          titleTextStyle:
              theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(),

        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image.asset(
                "icons/${theme.brightness.name}/empty.png",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              const Gap(10),
              Text(
                "لا يوجد عمليات",
                style: theme.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "قم بالتحويل او دفع مشتريات عن طريق محفظة الحكمة لمشاهدة عملياتك",
                style:
                    TextStyle(color: theme.colorScheme.outline, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
