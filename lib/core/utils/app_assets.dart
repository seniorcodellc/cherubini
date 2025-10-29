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
  static String success = "${SvgImages.svgPath}dialog_success.svg";
  static String failure = "${SvgImages.svgPath}dialog_failure.svg";
  static String arrowBack = "${SvgImages.svgPath}arrow_back.svg";
  static String eyeIcon = "${SvgImages.svgPath}eye.svg";
  static String eyeOffIcon = "${SvgImages.svgPath}eye_off.svg";
  static String arrow = "${SvgImages.svgPath}arrow.svg";
  static String calendar = "${SvgImages.svgPath}calendar.svg";
  static String clock = "${SvgImages.svgPath}clock.svg";
  static String userName = "${SvgImages.svgPath}userName.svg";
  static String password = "${SvgImages.svgPath}password.svg";
  static String add = "${SvgImages.svgPath}add.svg";
  static String right = "${SvgImages.svgPath}right.svg";
  static String phone = "${SvgImages.svgPath}phone.svg";
  static String lock = "${SvgImages.svgPath}lock.svg";
  static String eyeOn = "${SvgImages.svgPath}eye_on.svg";
  static String email = "${SvgImages.svgPath}email.svg";
  static String location = "${SvgImages.svgPath}location.svg";
  static String questionMark = "${SvgImages.svgPath}question_mark.svg";
  static String clockCircle = "${SvgImages.svgPath}clock_circle.svg";
  static String check = "${SvgImages.svgPath}check.svg";

  //! PNG

  static String logo = "${PngImages.imagesPath}logo.png";
  static String loginImage = "${PngImages.imagesPath}login_image.png";
  static String splashImage = "${PngImages.imagesPath}splash_img.png";
}
