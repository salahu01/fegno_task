import 'package:fegno_task/src/application/application.dart';
import 'package:fegno_task/src/core/core.dart';
import 'package:fegno_task/src/presentation/home/widgets/button.widget.dart';
import 'package:fegno_task/src/presentation/home/widgets/message.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderComponent extends StatelessWidget {
  const OrderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => current.contentsLength >= 4 || current.instruction != previous.instruction || current.orderPlaced != previous.orderPlaced,
        builder: (context, state) {
          return Visibility(
            visible: state.contentsLength >= 4,
            child: Visibility(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: context.sizeOf.width * 0.9,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Bill Details',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ).pad(8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Item total',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  '\$ ${state.products.fold(0.0, (e, v) => e + (v.count * v.price))}',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ],
                            ).pad(8),
                            Visibility(
                              visible: state.selectedCoupon != -1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Coupon discount',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    '\$ 9.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.green.shade800,
                                    ),
                                  ),
                                ],
                              ).pad(8),
                            ),
                            const Divider().pSymmetric(y: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Grand Total',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  '\$ ${state.products.fold(0.0, (e, v) => e + (v.count * v.price)) - (state.selectedCoupon == -1 ? 0 : (state.selectedCoupon ?? 0))}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green.shade800,
                                  ),
                                ),
                              ],
                            ).pad(8),
                            const Text('There might be a change in the final bill which will be generated from the shop').pad(8),
                            Visibility(
                              visible: state.instruction == null && state.orderPlaced == null,
                              child: Column(
                                children: [
                                  const Divider().pad(8),
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        context.read<HomeBloc>().add(const HomeEvent.updateContentsLength(5));
                                      },
                                      child: const Text(
                                        'Add Instructions +',
                                        style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ).pSymmetric(y: 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: state.instruction != null,
                    child: Message(isUser: true, text: state.instruction ?? ''),
                  ),
                  Visibility(
                    visible: state.contentsLength == 6 && state.instruction != null && state.orderPlaced == null,
                    child: const Message(isUser: false, text: 'Your instruction has been shared to the shop owner'),
                  ),
                  Visibility(
                    visible: (state.contentsLength == 6 || state.contentsLength == 4) && state.orderPlaced == null,
                    child: Column(
                      children: [
                        KButton(
                          text: 'Cancel',
                          isWhite: true,
                          onPressed: () {
                            context.read<HomeBloc>().add(const HomeEvent.placeOrder(false));
                          },
                        ).pSymmetric(y: 12),
                        KButton(
                          text: 'Place order',
                          onPressed: () {
                            placeOrderDialog(context);
                            context.read<HomeBloc>().add(const HomeEvent.placeOrder(true));
                          },
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: state.orderPlaced != null,
                    child: Message(
                      isUser: true,
                      text: (state.orderPlaced ?? false) ? 'Order Placed' : 'Order Cancelled',
                    ),
                  ).pOnly(top: 12),
                ],
              ),
            ),
          );
        });
  }

  //* Place Order Dialog
  void placeOrderDialog(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3)).then((_) {
        context.pop();
      });
    });
    showDialog(
      barrierColor: context.theme.primaryColor,
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          child: ColoredBox(
            color: context.theme.primaryColor,
            child: SizedBox(
              height: context.sizeOf.height,
              width: context.sizeOf.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HOOORAY',
                    style: TextStyle(color: AppColors.white, fontSize: 32),
                  ),
                  CircleAvatar(
                    radius: context.sizeOf.aspectRatio * 148,
                    backgroundColor: AppColors.white,
                    child: Icon(
                      Icons.done,
                      color: context.theme.primaryColor,
                      size: context.sizeOf.aspectRatio * 180,
                    ),
                  ).pSymmetric(y: 48),
                  const Text(
                    'Your order has been placed successfully',
                    style: TextStyle(color: AppColors.white),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
