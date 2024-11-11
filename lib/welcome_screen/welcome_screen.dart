import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '_welcome_bloc.dart';

class WelcomeScreen extends StatefulWidget {
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
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  double _opacity1 = 0.0;
  double _opacity2 = 0.0;
  double _opacity3 = 0.0;
  double _opacity4 = 0.0;
  double _opacity5 = 0.0;
  double _opacity6 = 0.0;
  double _opacity7 = 0.0;

  @override
  void initState() {
    super.initState();
    _animateContent();
  }

  Future<void> _animateContent() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity1 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity2 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity3 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity4 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity5 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity6 = 1.0);
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() => _opacity7 = 1.0);
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
                    child: AnimatedOpacity(
                      opacity: _opacity1,
                      duration: const Duration(milliseconds: 500),
                      child: Image.asset(
                        "assets/images/image 51.png",
                        height: 540,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AnimatedOpacity(
                      opacity: _opacity2,
                      duration: const Duration(milliseconds: 500),
                      child: const Padding(
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
                    ),
                    AnimatedOpacity(
                      opacity: _opacity3,
                      duration: const Duration(milliseconds: 500),
                      child: const Text(
                        "NAME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 45,
                          fontFamily: 'Rosarivo',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: _opacity4,
                      duration: const Duration(milliseconds: 500),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Image.asset(
                          "assets/images/Variant2.png",
                          height: 24,
                          width: 350,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Overlapping GIFs
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: _opacity5,
                          duration: const Duration(milliseconds: 500),
                          child: Image.asset(
                            "assets/images/Animation - 1731329179405.gif",
                            height: 140,
                            width: 229,
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: _opacity5,
                          duration: const Duration(milliseconds: 500),
                          child: Image.asset(
                            "assets/images/stripes.gif",
                            height: 140,
                            width: 229,
                          ),
                        ),
                      ],
                    ),
                    AnimatedOpacity(
                      opacity: _opacity6,
                      duration: const Duration(milliseconds: 500),
                      child: Image.asset(
                        "assets/images/Group 7517 (1).png",
                        height: 175,
                        width: 381,
                      ),
                    ),
                    const SizedBox(height: 40),
                    AnimatedOpacity(
                      opacity: _opacity7,
                      duration: const Duration(milliseconds: 500),
                      child: const Column(
                        children: [
                          Text(
                            "JUST TYPE IN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 24,
                              fontFamily: 'Ribeye',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "ALL YOUR WISHES",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 24,
                              fontFamily: 'Ribeye',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "FOR CHRISTMAS!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 31,
                              fontFamily: 'Ribeye',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: _opacity7,
                      duration: const Duration(milliseconds: 500),
                      child: Image.asset(
                        "assets/images/Group 8699.png",
                        height: 110,
                        width: 381,
                      ),
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
