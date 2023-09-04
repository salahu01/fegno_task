import 'package:fegno_task/src/presentation/home/view/tabs/bags/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/application/application.dart';
import 'package:fegno_task/src/core/core.dart';
import 'package:flutter/material.dart';

class BagView extends StatelessWidget {
  const BagView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        body: ListView(
          children: [
            const CartComponent(),
            const CouponComponent(),
            const DeliveryComponent(),
            TimeSlotsComponent(),
            const OrderComponent(),
          ],
        ).pad(8),
        bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (previous, current) => current.contentsLength == 5 || previous.instruction != current.instruction,
            builder: (context, state) {
              String text = '';
              return Visibility(
                visible: state.contentsLength == 5 && state.instruction == null,
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: AppColors.white,
                          hintText: 'Enter Instructions here',
                          hintStyle: TextStyle(fontSize: 12),
                        ),
                        onChanged: (value) => text = value,
                      ).pOnly(right: 12, left: 8),
                    ),
                    IconButton(
                      onPressed: () {
                        if (text.isNotEmpty) {
                          context.read<HomeBloc>().add(HomeEvent.addInstruction(text));
                        }
                      },
                      icon: const Icon(Icons.send),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
