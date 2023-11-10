import 'package:air_hop/cubit/seat_cubit.dart';
import 'package:air_hop/models/destination_model.dart';
import 'package:air_hop/models/transaction_model.dart';
import 'package:air_hop/ui/pages/checkout_page.dart';
import 'package:air_hop/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: const Text(
          'Select Your\nFaavourite Seat',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            const Text(
              'Available',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            const Text(
              'Selected',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Container(
              height: 16,
              width: 16,
              margin: const EdgeInsets.only(
                right: 6,
                left: 10,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            const Text(
              'Unavailable',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 22,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A1',
                      isAvailable: false,
                    ),
                    SeatItem(
                      id: 'B1',
                      isAvailable: false,
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C1',
                    ),
                    SeatItem(
                      id: 'D1',
                    ),
                  ],
                ),
              ),

              // NOTE: SEAT 2
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A2',
                    ),
                    SeatItem(
                      id: 'B2',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C2',
                    ),
                    SeatItem(
                      id: 'D2',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 3
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A3',
                    ),
                    SeatItem(
                      id: 'B3',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C3',
                    ),
                    SeatItem(
                      id: 'D3',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 4
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A4',
                    ),
                    SeatItem(
                      id: 'B4',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C4',
                    ),
                    SeatItem(
                      id: 'D4',
                    ),
                  ],
                ),
              ),
              // NOTE: SEAT 5
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      id: 'A5',
                    ),
                    SeatItem(
                      id: 'B5',
                    ),
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SeatItem(
                      id: 'C5',
                    ),
                    SeatItem(
                      id: 'D5',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Seat',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      state.join(', '),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                        locale: 'id_ID',
                        name: 'Dollars',
                        decimalDigits: 0,
                      ).format(state.length * destination.price),
                      style: const TextStyle(
                        color: Color(0xff5C40CC),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      );
    }

    Widget checkedoutButton() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: 220,
            height: 53,
            margin: const EdgeInsets.only(
              top: 8,
              bottom: 45,
            ),
            child: TextButton(
              onPressed: () {
                int price = destination.price * state.length;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutPage(
                      TransactionModel(
                        destination: destination,
                        amountOfTraveler: state.length,
                        selectedSeats: state.join(', '),
                        insurance: true,
                        refundable: false,
                        vat: 0.45,
                        price: price,
                        grandTotal: price * (price * 0.45).toInt(),
                      ),
                    ),
                  ),
                );
              },
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff5C40CC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  )),
              child: const Text(
                'Continue To Checkout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkedoutButton(),
        ],
      ),
    );
  }
}
