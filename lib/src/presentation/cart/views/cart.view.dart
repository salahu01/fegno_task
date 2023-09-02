import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/textstyle.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:fegno_task/src/presentation/cart/widgets/coupon.clipper.dart';
import 'package:fegno_task/src/presentation/checkout/views/checkout.view.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: ListView.builder(
        itemCount: AppDats.products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(AppDats.products[index].image),
            title: Text(AppDats.products[index].name, maxLines: 1, overflow: TextOverflow.ellipsis),
            trailing: Text('\$${AppDats.products[index].price}'),
            tileColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            subtitle: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_circle, color: context.theme.primaryColor),
                ),
                Text('${AppDats.products[index].count}').pSymmetric(x: 8),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle, color: context.theme.primaryColor),
                ),
              ],
            ),
          ).pSymmetric(x: 20, y: 12);
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        child: ColoredBox(
          color: AppColors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total ',
                    style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.dark,
                  ),
                  Text(
                    '\$${2000}',
                    style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.accent,
                  ),
                ],
              ).pOnly(top: 28, right: 32, left: 32, bottom: 8),
              const Divider(color: AppColors.black, height: 16).pSymmetric(x: 16),
              ElevatedButton(
                onPressed: () {
                  // context.push(const CheckoutView());
                  showCouponsDialog(context);
                },
                child: Text(
                  'Continue',
                  style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.light,
                ).pad(12),
              ).pad(16),
            ],
          ),
        ),
      ),
    );
  }

  void showCouponsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ColoredBox(
                  color: context.theme.scaffoldBackgroundColor,
                  child: SizedBox(
                    height: context.sizeOf.height * 0.7,
                    width: context.sizeOf.width * 0.9,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.transparent,
                          title: const Text('Apply coupons and get discounts'),
                          subtitle: Text(
                            '9 Unused Coupons',
                            style: context.theme.listTileTheme.titleTextStyle?.w500,
                          ),
                          leading: Icon(Icons.discount, color: Colors.green.shade700, size: 30),
                        ),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemCount: 9,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  showAppliedCouponDialog(context);
                                },
                                child: Card(
                                  child: Image.asset('assets/gift box.png'),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pop();
                  context.push(const CheckoutView());
                },
                child: Text(
                  'Continue ',
                  style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.light,
                ).pad(12),
              ).pSymmetric(y: 12),
            ],
          ),
        );
      },
    );
  }

  void showAppliedCouponDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: ClipPath(
            clipper: CouponClipper(holeRadius: 32),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ColoredBox(
                color: AppColors.white,
                child: SizedBox(
                  height: context.sizeOf.height * 0.6,
                  width: context.sizeOf.width * 0.8,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.close)),
                      ),
                      const Spacer(),
                      Text(
                        'COUPON APPLIED!',
                        style: const TextStyle(color: Colors.black87, fontSize: 20).w600,
                      ).pOnly(bottom: 12),
                      Image.asset('assets/gift box.png', height: context.sizeOf.height * 0.18).pOnly(bottom: 12),
                      Text(
                        'Congragulations, you\'ve saved',
                        style: const TextStyle(color: Colors.black, fontSize: 16).w700,
                      ).pOnly(bottom: 12),
                      Text(
                        '\$ 10',
                        style: const TextStyle(color: Colors.green, fontSize: 20).w900,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
