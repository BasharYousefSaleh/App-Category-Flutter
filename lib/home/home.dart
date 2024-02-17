// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:gap/gap.dart';

import 'widget/ad_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RefreshIndicator(
      onRefresh: () => Future.delayed(const Duration(seconds: 2)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اسحب للاسفل للتحديث",
                    style: TextStyle(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_double_arrow_down,
                    color: theme.colorScheme.primary,
                    size: 15,
                  )
                ],
              ),
            ),
            //
            FlutterCarousel(
              options: CarouselOptions(
                height: 240.0,
                // enableInfiniteScroll: false,
                floatingIndicator: false,
                slideIndicator: CircularSlideIndicator(
                  currentIndicatorColor: theme.colorScheme.primary,
                  indicatorBackgroundColor: theme.colorScheme.primaryContainer,
                  indicatorRadius: 5,
                  itemSpacing: 15,
                ),
              ),
              items: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const AdCard(imagePath: "images/pubg.png"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const AdCard(imagePath: "images/exchange.png"),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const AdCard(imagePath: "images/exchange2.png"),
                ),
              ],
            ),

            //
            FlutterCarousel(
              options: CarouselOptions(
                height: 70.0,
                autoPlay: true,
                enableInfiniteScroll: true,
                showIndicator: false,
              ),
              items: [1, 2].map((i) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: theme.colorScheme.secondaryContainer,
                    child: const Center(
                        child: Text(
                      "أعلان ممول",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                );
              }).toList(),
            ),

            //
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 2,
              ),
              padding: const EdgeInsets.all(8),
              children: [
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/transfers.png",
                    titleText: "حوالة",
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        clipBehavior: Clip.antiAlias,
                        builder: (context) => ListView(
                          children: [
                            AppBar(
                              leading: Center(
                                child: Image.asset(
                                  "icons/${theme.brightness.name}/transfers.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              title: const Text("تحويل لحساب "),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 1"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 2"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 3"), onTap: () {}),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath:
                        "icons/${theme.brightness.name}/accountTransfer.png",
                    titleText: "تحويل لحساب",
                     onTap: () {
                      showModalBottomSheet(
                        context: context,
                        clipBehavior: Clip.antiAlias,
                        builder: (context) => ListView(
                          children: [
                            AppBar(
                              leading: Center(
                                child: Image.asset(
                                  "icons/${theme.brightness.name}/transfers.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              title: const Text(" استلام حوالة"),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 1"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 2"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 3"), onTap: () {}),
                            ),
                          ],
                        ),
                      );
                    }
                  ),

                  
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/exchange.png",
                    titleText: " مصارف",
                      onTap: () {
                      showModalBottomSheet(
                        context: context,
                        clipBehavior: Clip.antiAlias,
                        builder: (context) => ListView(
                          children: [
                            AppBar(
                              leading: Center(
                                child: Image.asset(
                                  "icons/${theme.brightness.name}/transfers.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              title: const Text("تحويل لحساب "),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 1"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 2"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 3"), onTap: () {}),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath:
                        "icons/${theme.brightness.name}/accountTransfer.png",
                    titleText: "تحويل لحساب",
                     onTap: () {
                      showModalBottomSheet(
                        context: context,
                        clipBehavior: Clip.antiAlias,
                        builder: (context) => ListView(
                          children: [
                            AppBar(
                              leading: Center(
                                child: Image.asset(
                                  "icons/${theme.brightness.name}/transfers.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              title: const Text(" الخدمات"),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 1"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 2"), onTap: () {}),
                            ),
                            Card(
                              elevation: 0,
                              child: ListTile(
                                  title: const Text("الخدمة 3"), onTap: () {}),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath:
                        "icons/${theme.brightness.name}/mobilePayment.png",
                    titleText: " سداد جوال",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/payments.png",
                    titleText: " سداد خدمة",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath:
                        "icons/${theme.brightness.name}/generalLedger.png",
                    titleText: "كشف حساب ",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/games.png",
                    titleText: "النرفية",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/cashPull.png",
                    titleText: "سحب نقدي",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/shoping.png",
                    titleText: "شراء اون لاين",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/shoppingBag.png",
                    titleText: "دفع مشتريات",
                  ),
                ),
                Card(
                  child: ActionCard(
                    imagePath: "icons/${theme.brightness.name}/other.png",
                    titleText: "اخرئ",
                  ),
                ),
              ],
            ),

            //
            ListTile(
              title: const Text("العمليات"),
              titleTextStyle: theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "قم بالتحويل او دفع مشتريات عن طريق محفظة الخربي لمشاهدة عملياتك",
                style:
                    TextStyle(color: theme.colorScheme.outline, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(50),
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  const ActionCard({
    Key? key,
    required this.imagePath,
    required this.titleText,
    this.onTap,
  }) : super(key: key);
  final String imagePath;
  final String titleText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(6),
          Image.asset(
            imagePath,
            width: 30,
            height: 30,
          ),
          const Gap(6),
          Text(titleText),
          const Gap(6),
        ],
      ),
    );
  }
}
