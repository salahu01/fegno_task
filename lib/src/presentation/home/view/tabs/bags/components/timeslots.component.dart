import 'package:fegno_task/src/application/application.dart';
import 'package:fegno_task/src/core/core.dart';
import 'package:fegno_task/src/presentation/home/widgets/button.widget.dart';
import 'package:fegno_task/src/presentation/home/widgets/message.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeSlotsComponent extends StatelessWidget {
  TimeSlotsComponent({super.key});
  final times = ['10 am to 12 pm', '12 pm to 2 pm', '2 pm to 4 pm'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous.takeAwayTime != current.takeAwayTime || current.contentsLength >= 3,
        builder: (context, state) {
          return Visibility(
            visible: state.contentsLength >= 3,
            child: Visibility(
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
            ),
          );
        });
  }
}
