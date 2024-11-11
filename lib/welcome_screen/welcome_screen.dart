import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '_welcome_bloc.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
      create: (context) => WelcomeBloc(
        WelcomeState(
          welcomeModelObj: const WelcomeModel(),
        ),
      )..add(WelcomeInitialEvent()),
      child: const WelcomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF000000),
                width: 1,
              ),
              gradient: const LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 0.3),
                colors: [
                  Color(0xFFF47FE86),
                  Color(0xFFFD7042A),
                ],
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/STARS BG WELCOME PAGE@2x.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 250.0),
                  child: Positioned(
                    bottom: 0,
                    child: Image.asset(
                      "assets/images/image 51.png",
                      height: 540,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 65.0),
                      child: Text(
                        "MERRY CHRISTMAS TO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFBD0D2C),
                          fontSize: 31,
                          fontFamily: 'Rye',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Text(
                      "NAME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 45,
                        fontFamily: 'Rosarivo',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset(
                        "assets/images/Variant2.png",
                        height: 24,
                        width: 350,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Image.asset(
                      "assets/images/christmas WELCOME PAGE.png",
                      height: 140,
                      width: 229,
                    ),
                    Image.asset(
                      "assets/images/Group 7517 (1).png",
                      height: 175,
                      width: 381,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "JUST TYPE IN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24,
                        fontFamily: 'Ribeye',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      "ALL YOUR WISHES",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 24,
                        fontFamily: 'Ribeye',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                      const Text(
                      "FOR CHRISTMAS!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 31,
                        fontFamily: 'Ribeye',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Image.asset(
                      "assets/images/Group 8699.png",
                      height: 110,
                      width: 381,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
