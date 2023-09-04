import 'package:fegno_task/src/application/application.dart';
import 'package:fegno_task/src/presentation/home/widgets/button.widget.dart';
import 'package:fegno_task/src/presentation/home/widgets/message.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/core/core.dart';

class DeliveryComponent extends StatelessWidget {
  const DeliveryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => previous.deliveryMethord != current.deliveryMethord || current.contentsLength >= 2,
      builder: (context, state) {
        return Visibility(
          visible: state.contentsLength >= 2,
          child: Visibility(
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
            ),
          ),
        );
      },
    );
  }
}
