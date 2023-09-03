import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/application/bloc/home_bloc.dart';
import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

class BagView extends StatelessWidget {
  const BagView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: ListView(
        children: [
          //* Cart Widget
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: context.sizeOf.width * 0.9,
              child: BlocBuilder<HomeBloc, HomeState>(
                  buildWhen: (previous, current) => previous.showCart != current.showCart || !listEquals(previous.products, current.products),
                  builder: (context, state) {
                    return Card(
                      color: const Color.fromRGBO(200, 230, 201, 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Cart(3)',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              IconButton(
                                onPressed: () => context.read<HomeBloc>().add(const HomeEvent.showCart()),
                                icon: const Icon(Icons.keyboard_arrow_down),
                              )
                            ],
                          ).pad(8),
                          Visibility(
                            visible: state.showCart,
                            child: Column(
                              children: [
                                const Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Grand total',
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Text(
                                      '\$ ${state.products.fold(0.0, (e, v) => e + (v.count * v.price))}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.green.shade800,
                                      ),
                                    ),
                                  ],
                                ).pad(8),
                                const Text('There might be a change in the final bill which will be generated from the shop').pad(8),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: state.products.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Image.network(state.products[index].image),
                                      ),
                                      title: Text(AppDats.products[index].name, maxLines: 1),
                                      subtitle: Text('\$ ${state.products[index].price}'),
                                      trailing: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              context.read<HomeBloc>().add(HomeEvent.updateCart(false, index));
                                            },
                                            icon: Icon(
                                              Icons.remove_circle,
                                              color: context.theme.primaryColor,
                                            ),
                                          ),
                                          Text('${state.products[index].count}'),
                                          IconButton(
                                            onPressed: () {
                                              context.read<HomeBloc>().add(HomeEvent.updateCart(true, index));
                                            },
                                            icon: Icon(
                                              Icons.add_circle,
                                              color: context.theme.primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                const Divider(),
                                Center(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Add More Items +',
                                      style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ).pSymmetric(y: 8),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),

          //* Coupons Widget
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: SizedBox(
                    width: context.sizeOf.width * 0.9,
                    child: const Text('Add products worth \$10 to avall coupons'),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.theme.primaryColor,
                    padding: EdgeInsets.zero,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: context.sizeOf.width * 0.9,
                    child: const Center(child: Text('Proceed')),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: context.sizeOf.width * 0.9,
                    child: ListTile(
                      leading: Icon(
                        Icons.discount_outlined,
                        color: context.theme.primaryColor,
                      ),
                      title: const Text('9 Unused Coupons'),
                      subtitle: const Text('Apply coupon and get discount'),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    padding: EdgeInsets.zero,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: context.sizeOf.width * 0.9,
                    child: Center(
                      child: Text(
                        'Continue without applying',
                        style: TextStyle(color: context.theme.primaryColor),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.theme.primaryColor,
                    padding: EdgeInsets.zero,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: SizedBox(
                    width: context.sizeOf.width * 0.9,
                    child: const Center(child: Text('Apply coupon')),
                  ),
                ),
              ],
            ),
          ),

          //* Success Coupon Widget
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              width: context.sizeOf.width * 0.4,
              child: Card(
                color: Colors.green.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/gift box.png',
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ).pOnly(bottom: 12),
                    const Text('Yahoo!!!'),
                    const Text('I won \$ 2'),
                  ],
                ).pad(12),
              ),
            ),
          ),

          //*
          Align(
            alignment: Alignment.topLeft,
            child: Card(
              child: SizedBox(
                width: context.sizeOf.width * 0.9,
                child: const Text('Select delivery methord'),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white,
              padding: EdgeInsets.zero,
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: SizedBox(
              width: context.sizeOf.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: context.theme.primaryColor,
                  ),
                  const Text(
                    'Home delivery',
                    style: TextStyle(color: AppColors.black),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white,
              padding: EdgeInsets.zero,
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: SizedBox(
              width: context.sizeOf.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.store_mall_directory_outlined,
                    color: context.theme.primaryColor,
                  ),
                  const Text(
                    'Take away',
                    style: TextStyle(color: AppColors.black),
                  ),
                ],
              ),
            ),
          ),

          //*
          Align(
            alignment: Alignment.topRight,
            child: Card(
              color: Colors.green.shade100,
              child: const Text('I prefer Take away'),
            ),
          ),

          //*
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: context.sizeOf.width * 0.9,
              child: const Card(
                child: Text('Please select a time slot to collect the products from our store'),
              ),
            ),
          ),
        ],
      ).pad(8),
    );
  }
}
