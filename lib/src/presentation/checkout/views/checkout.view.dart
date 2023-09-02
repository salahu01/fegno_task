import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/extensions/textstyle.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: ListView(
        children: [
          Text(
            'Products',
            style: context.theme.listTileTheme.titleTextStyle?.copyWith(fontSize: 18),
          ).pOnly(bottom: 12),
          ListView.builder(
            itemCount: AppDats.products.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(AppDats.products[index].image),
                title: Text(AppDats.products[index].name, maxLines: 1, overflow: TextOverflow.ellipsis),
                trailing: Text('\$${AppDats.products[index].price}'),
                tileColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ).pOnly(bottom: 12);
            },
          ).pOnly(bottom: 16),
          Text(
            'Payment Methord',
            style: context.theme.listTileTheme.titleTextStyle?.copyWith(fontSize: 18),
          ).pOnly(bottom: 12),
          Column(
            children: List.generate(2, (index) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cash On Delivery',
                      style: context.theme.listTileTheme.titleTextStyle,
                    ),
                    Radio(
                      value: '',
                      groupValue: '',
                      onChanged: (value) {},
                      fillColor: MaterialStatePropertyAll(context.theme.primaryColor),
                    ),
                  ],
                ).pad(12),
              ).pOnly(bottom: 12);
            }),
          ).pOnly(bottom: 12),
          Text(
            'Total Amount',
            style: context.theme.listTileTheme.titleTextStyle?.copyWith(fontSize: 18),
          ).pOnly(bottom: 12),
          const Divider(color: AppColors.black, height: 16),
          Text(
            '\$${2000}',
            style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.accent,
          ).pSymmetric(y: 8),
        ],
      ).pad(16),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Order',
          style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.light,
        ).pad(12),
      ).pad(16),
    );
  }
}
