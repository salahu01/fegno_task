import 'package:fegno_task/src/application/application.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fegno_task/src/core/core.dart';

class CartComponent extends StatelessWidget {
  const CartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
                                title: Text(state.products[index].name, maxLines: 1),
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
    ).pOnly(bottom: 12);
  }
}
