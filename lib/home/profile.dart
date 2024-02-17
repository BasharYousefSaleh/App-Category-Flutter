import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widget/user_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const UserInfoCard(),
          const Gap(10),
          Column(
            children: [
              Card(
                child: ListTile(
                  leading: Image.asset(
                    "icons/${theme.brightness.name}/update.png",
                    width: 20,
                    height: 20,
                  ),
                  title: const Text("تحديث بيانات التطبيق"),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.logout),
                  tileColor: theme.colorScheme.error,
                  textColor: theme.colorScheme.onError,
                  iconColor: theme.colorScheme.onError,
                  title: const Text("تسجيل الخروج"),
                  onTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
