import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_get_started.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              const Text(
                'Fly Like a Bird',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: 220,
                height: 55,
                margin: const EdgeInsets.only(top: 50, bottom: 80),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff5C40CC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
