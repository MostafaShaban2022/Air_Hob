import 'package:air_hop/cubit/page_cubit.dart';
import 'package:air_hop/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              margin: const EdgeInsets.only(bottom: 80),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/image_success.png',
                ),
              )),
            ),
            const Text(
              'Well Booked 😍',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'my Booking',
              onPressed: () {
                context.read<PageCubit>().setPage(1);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              margin: const EdgeInsets.only(top: 50),
              width: 220,
            )
          ],
        ),
      ),
    );
  }
}
