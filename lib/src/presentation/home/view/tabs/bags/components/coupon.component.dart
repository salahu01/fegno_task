import 'package:fegno_task/src/application/application.dart';
import 'package:fegno_task/src/presentation/home/widgets/button.widget.dart';
import 'package:fegno_task/src/presentation/home/widgets/message.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/core/core.dart';

class CouponComponent extends StatelessWidget {
  const CouponComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => current.contentsLength >= 1 || previous.selectedCoupon != current.selectedCoupon,
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
                            'assets/success.png',
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ).pOnly(bottom: 12),
                        const Text('Yahoo!!!'),
                        const Text('I won \$10'),
                      ],
                    ).pad(12),
                  ),
                ),
              ),
              child: const Message(isUser: true, text: 'Continue without applying').pOnly(bottom: 12),
            );
          }
          return Visibility(
            visible: state.contentsLength == 1,
            replacement: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Message(isUser: false, text: 'Add products worth \$10 to avall coupons'),
                KButton(
                  text: 'Proceed',
                  onPressed: () {
                    context.read<HomeBloc>().add(const HomeEvent.updateContentsLength(1));
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
                KButton(
                  text: 'Apply coupon',
                  onPressed: () {
                    applyCouponDialog(context);
                  },
                ).pOnly(bottom: 12)
              ],
            ),
          );
        });
  }

  //* show apply coupon dialog
  void applyCouponDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          child: SizedBox(
            height: ctx.sizeOf.height * 0.6,
            width: ctx.sizeOf.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.discount_outlined,
                    color: context.theme.primaryColor,
                  ),
                  title: const Text('1 Unused Coupons'),
                  subtitle: const Text('Apply coupon and get discount'),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(const HomeEvent.selectCoupon(discount: 10));
                    context.pop();
                    successCouponDialog(context);
                  },
                  child: Card(
                    child: Image.asset(
                      'assets/gift box.png',
                      height: context.sizeOf.height * 0.1,
                    ),
                  ),
                ),
                const Spacer(),
                const Divider(),
                const Text('Note : Coupon will expire with in 2 days ').pSymmetric(y: 12),
                KButton(
                  text: 'Continue without applying',
                  onPressed: () {
                    context.read<HomeBloc>().add(const HomeEvent.selectCoupon());
                    context.pop();
                  },
                ).pOnly(bottom: 12)
              ],
            ).pad(12),
          ),
        );
      },
    );
  }

  //* Success coupon Dialog
  void successCouponDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          child: SizedBox(
            height: ctx.sizeOf.height * 0.6,
            width: ctx.sizeOf.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('COUPON APPLIED!'),
                Image.asset(
                  'assets/gift box.png',
                  height: context.sizeOf.height * 0.3,
                ),
                const Text('Congradulations, You\'ve saved').pOnly(bottom: 12),
                Text(
                  '\$ 10',
                  style: TextStyle(color: context.theme.primaryColor, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ).pad(12),
          ),
        );
      },
    );
  }
}
