abstract class PngImages {
  static String imagesPath = "assets/images/";
}

abstract class SvgImages {
  static String svgPath = "assets/icons/";

  ///Icons svg
}

class AppAssets {
  //! SVG

  static String home = "${SvgImages.svgPath}home.svg";
  static String profile = "${SvgImages.svgPath}profile.svg";
  static String visits = "${SvgImages.svgPath}visits.svg";
  static  String success = "${SvgImages.svgPath}dialog_success.svg";
  static  String failure = "${SvgImages.svgPath}dialog_failure.svg";
  static  String arrowBack = "${SvgImages.svgPath}arrow_back.svg";
  static String eyeIcon = "${SvgImages.svgPath}eye.svg";
  static String eyeOffIcon = "${SvgImages.svgPath}eye_off.svg";
  static String arrow = "${SvgImages.svgPath}arrow.svg";
  static String calendar = "${SvgImages.svgPath}calendar.svg";
  static String clock = "${SvgImages.svgPath}clock.svg";
  static String userName="${SvgImages.svgPath}userName.svg";
  static String password="${SvgImages.svgPath}password.svg";
  static String add="${SvgImages.svgPath}add.svg";
  static String right="${SvgImages.svgPath}right.svg";


  //! PNG


  static String logo="${PngImages.imagesPath}logo.png";


}
