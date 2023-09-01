import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/textstyle.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/presentation/checkout/views/checkout.view.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: AppDats.products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(AppDats.products[index].image),
            title: Text(AppDats.products[index].name),
            trailing: Text('₹ ${AppDats.products[index].price}'),
            subtitle: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                Text(
                  '${AppDats.products[index].count}',
                  style: context.theme.listTileTheme.leadingAndTrailingTextStyle,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () => context.push(const CheckoutView()),
        child: Text(
          'Continue',
          style: context.theme.listTileTheme.leadingAndTrailingTextStyle?.light,
        ).pad(12),
      ).pad(16),
    );
  }
}
