import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        PositionedDirectional(
          top: 60,
          bottom: 0,
          start: 0,
          end: 0,
          child: Card(
            color: theme.colorScheme.primary,
            child: Container(
              height: 150,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Expanded(child: Image.asset(imagePath))
          ],
        ),
        PositionedDirectional(
          top: 70,
          bottom: 0,
          start: 20,
          end: 0,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "عرض خاص",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                      const Gap(8),
                      Image.asset("images/fire.png", width: 20, height: 20)
                    ],
                  ),
                  Text(
                    "خصم 50%",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  // Text(
                  //   "التوصيل مجــــاناً",
                  //   style: theme.textTheme.bodySmall?.copyWith(
                  //     fontWeight: FontWeight.bold,
                  //     color: theme.colorScheme.onPrimary,
                  //   ),
                  // ),
                  const Spacer(),

                  ElevatedButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 20))),
                    onPressed: () {},
                    child: const Text(
                      "اطلب الان",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                ],
              )),
              Expanded(child: Container()),
            ],
          ),
        ),
      ],
    );
  }
}
