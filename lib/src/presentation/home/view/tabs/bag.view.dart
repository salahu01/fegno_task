import 'package:fegno_task/src/presentation/home/widgets/button.widget.dart';
import 'package:fegno_task/src/presentation/home/widgets/message.widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/application/bloc/home_bloc.dart';
import 'package:fegno_task/src/core/constants/app.datas.dart';
import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

class BagView extends StatelessWidget {
  BagView({super.key});
  final times = ['10 am to 12 pm', '12 pm to 2 pm', '2 pm to 4 pm'];

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
          ).pOnly(bottom: 12),

          //* Coupon Widgets
          BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) => previous.showApplyCoupon != current.showApplyCoupon || previous.selectedCoupon != current.selectedCoupon,
              builder: (context, state) {
                if (state.selectedCoupon != null) {
                  return Visibility(
                    visible: state.selectedCoupon == -1,
                    replacement: Align(
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
                    child: const Message(isUser: true, text: 'Continue without applying').pOnly(bottom: 12),
                  );
                }
                return Visibility(
                  visible: state.showApplyCoupon,
                  replacement: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Message(isUser: false, text: 'Add products worth \$10 to avall coupons'),
                      KButton(
                        text: 'Proceed',
                        onPressed: () {
                          context.read<HomeBloc>().add(const HomeEvent.showApplyCoupon());
                        },
                      ).pSymmetric(y: 12),
                    ],
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 12),
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
                      ),
                      KButton(
                        text: 'Continue without applying',
                        isWhite: true,
                        onPressed: () {
                          context.read<HomeBloc>().add(const HomeEvent.selectCoupon());
                        },
                      ).pOnly(bottom: 12),
                      const KButton(text: 'Apply coupon').pOnly(bottom: 12)
                    ],
                  ),
                );
              }),

          //* select delivery methord
          BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) => previous.deliveryMethord != current.deliveryMethord,
              builder: (context, state) {
                return Visibility(
                    visible: state.deliveryMethord == null,
                    replacement: Message(isUser: true, text: 'I prefer ${state.deliveryMethord}').pOnly(bottom: 12),
                    child: Column(
                      children: [
                        const Message(isUser: false, text: 'Select delivery methord').pOnly(bottom: 6),
                        KButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(const HomeEvent.selectDeliveryMethord('Home delivery'));
                          },
                          isWhite: true,
                          text: 'Home delivery',
                          icon: Icons.home,
                        ).pOnly(bottom: 6),
                        KButton(
                          onPressed: () {
                            context.read<HomeBloc>().add(const HomeEvent.selectDeliveryMethord('Take away'));
                          },
                          isWhite: true,
                          text: 'Take away',
                          icon: Icons.store_mall_directory_outlined,
                        ),
                      ],
                    ));
              }),

          //* Select TimeSlots
          BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) => previous.takeAwayTime != current.takeAwayTime,
              builder: (context, state) {
                return Visibility(
                  visible: state.takeAwayTime == null,
                  replacement: Message(isUser: true, text: 'I prefer ${state.takeAwayTime}').pOnly(bottom: 12),
                  child: Column(
                    children: [
                      const Message(isUser: false, text: 'Please select a time slot to collect the products from our store'),
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 4.5,
                        shrinkWrap: true,
                        children: times
                            .map(
                              (e) => KButton(
                                text: e,
                                isWhite: true,
                                onPressed: () {
                                  context.read<HomeBloc>().add(HomeEvent.selectTakeAwayTime(e));
                                },
                              ),
                            )
                            .toList(),
                      ).pSymmetric(y: 12),
                    ],
                  ),
                );
              }),
        ],
      ).pad(8),
    );
  }
}
