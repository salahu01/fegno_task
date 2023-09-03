import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:fegno_task/src/presentation/home/view/tabs/bag.view.dart';
import 'package:fegno_task/src/presentation/home/view/tabs/items.view.dart';
import 'package:fegno_task/src/presentation/home/view/tabs/shop.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final tabs = <Map>[
    {'label': 'Shop', 'icon': Icons.storefront},
    {'label': 'Items', 'icon': Icons.fastfood_outlined},
    {'label': 'Bag', 'icon': Icons.shopping_bag_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Zappy'),
          actions: [
            const Icon(
              Icons.notifications_none_outlined,
              color: AppColors.white,
              size: 30,
            ),
            const Icon(
              Icons.more_vert,
              color: AppColors.white,
              size: 30,
            ).pSymmetric(x: 12),
          ],
          bottom: TabBar(
            indicatorWeight: 0.5,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.white, width: 3),
            ),
            tabs: tabs
                .map(
                  (e) => Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          e['icon'],
                          color: AppColors.white,
                        ).pOnly(right: 8),
                        Text(
                          e['label'],
                          style: const TextStyle(color: AppColors.white, fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        body: const TabBarView(
          children: [
            ShopView(),
            ItemsView(),
            BagView(),
          ],
        ),
      ),
    );
  }
}
