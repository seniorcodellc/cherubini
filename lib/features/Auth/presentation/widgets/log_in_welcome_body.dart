import '../../../../exports.dart';

class LogInWelcomeBody extends StatelessWidget {
  const LogInWelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
            width: 80.w,
            child: Image.asset(AppAssets.loginImage),
          ),
          16.vs,
          Text(
            "تسجيل الدخول",
            style: getSemiBoldTextStyle(
              fontSize: 24,
              color: AppColors.primaryColor,
            ),
          ),
          8.vs,
          Text(
            "مرحباً بك في برنامج نقاط الولاء",
            style: getSemiBoldTextStyle(
              fontSize: 16,
              color: AppColors.subTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
