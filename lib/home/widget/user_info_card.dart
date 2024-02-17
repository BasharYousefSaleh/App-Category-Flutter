import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Column(
          children: [
            const Gap(40),
            Card(
              child: Container(
                width: double.infinity,
                height: 160,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.colorScheme.background,
                ),
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            Center(
              child: Text(
                "بشار يوسف صالح عبدة الخربي",
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  FloatingActionButton(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: const Icon(Icons.qr_code, size: 50),
                  ),
                  const Gap(6),
                  Expanded(
                    child: Card(
                      elevation: 0,
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(
                                child: InputDecorator(
                              decoration: InputDecoration(
                                labelText: "رقم الحساب",
                                labelStyle: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                              child: const Text("778014486"),
                            )),
                            const VerticalDivider(),
                            Expanded(
                                child: InputDecorator(
                              decoration: InputDecoration(
                                labelText: "نوع الحساب",
                                labelStyle: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                              child: const Text("تاجر"),
                            )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
