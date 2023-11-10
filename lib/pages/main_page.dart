import 'package:air_hop/cubit/page_cubit.dart';
import 'package:air_hop/pages/home_page.dart';
import 'package:air_hop/pages/setting_page.dart';
import 'package:air_hop/ui/pages/wallet_page.dart';
import 'package:air_hop/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:air_hop/widgets/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double defaultMargin = 24.0;

    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: const Color(0xff1F1449),
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
