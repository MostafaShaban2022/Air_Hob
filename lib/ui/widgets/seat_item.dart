import 'package:air_hop/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;
  const SeatItem({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return const Color(0xffEBECF1);
      } else {
        if (isSelected) {
          return const Color(0xff5C40CC);
        } else {
          return const Color(0xffE0D9FF);
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return const Color(0xffEBECF1);
      } else {
        return const Color(0xff5C40CC);
      }
    }

    child() {
      if (isSelected) {
        return const Center(
          child: Text(
            'YOU',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: borderColor(),
            )),
        child: child(),
      ),
    );
  }
}
