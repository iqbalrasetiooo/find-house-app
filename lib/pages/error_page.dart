import 'package:find_house_app/pages/home_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/404.svg',
                width: 300,
              ),
              const SizedBox(height: 70),
              Text(
                'Where are you going?',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                'Seems like the page that you were\nrequested is already gone',
                textAlign: TextAlign.center,
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(height: 50),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(purpleColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                  child: Text(
                    'Back to Home',
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
