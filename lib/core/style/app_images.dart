import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



@immutable
sealed class AppImages {
  const AppImages._();

  ///  SVG
  static final homeFlutter = SvgPicture.asset(
    'assets/icons/cv_flutter.svg',
    height: 75,
    width: 60.57,
    fit: BoxFit.cover,
  );

  static final homePython = SvgPicture.asset(
    'assets/icons/cv_python.svg',
    height: 75,
    width: 75,
    fit: BoxFit.cover,
  );

  static final homeFrontend = SvgPicture.asset(
    'assets/icons/cv_frontend.svg',
    height: 49,
    width: 73,
    fit: BoxFit.cover,
  );

  static final homeJava = SvgPicture.asset(
    'assets/icons/cv_java.svg',
    height: 74.98,
    width: 40.31,
    fit: BoxFit.cover,
  );

  static final homeCPlus = SvgPicture.asset(
    'assets/icons/cv_c++.svg',
    height: 75,
    width: 75,
    fit: BoxFit.cover,
  );

  static final homeCSharp = SvgPicture.asset(
    'assets/icons/cv_c#.svg',
    height: 75,
    width: 75,
    fit: BoxFit.cover,
  );


  /// PNG
  static final pngExample = Image.asset(
    "",
    height: 40,
    width: 40,
    fit: BoxFit.cover,
  );

}