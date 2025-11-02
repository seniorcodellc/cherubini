import 'dart:async';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/on_boarding/presentation/managers/onboarding_manager_cubit.dart';

import '../../../../config/local_notification/local_notification.dart';
import '../../../../exports.dart';

import '../manager/get_configration_cubit.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Counter to track timer ticks
  int counter = 0;

  // Stores the route name for navigation after the splash screen
  String? route;
  bool? isNotificationEnabled;
  Timer? timer;
  // bool? isNotificationEnabled;
  nextScreen() {
    timer = Timer.periodic(1.seconds, (timer) {
      counter++;
      if (route.isNotNull && counter >= 5) {
        route!.moveToAndRemoveCurrent(); // Navigate and remove splash screen
        timer.cancel();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      bool isNew = await getBlocData<OnboardingManagerCubit>().isNewInstalled();
      if (isNew.isTrue) {
        isNotificationEnabled = await checkNotificationPermissionAndDoOperation(
          context,
          onSuccess: () {
            NotificationsService().showSimpleNotification(
              title: 'أهلا بك فى تطبيق نقاط الولاء',
              description: "نرحب بك في منصة عيادتى للحجوزات الطبيه و الكشوفات",
            );
          },
        );
        route = Routes.onBoardingRoute;
      } else {
        route = Routes.loginRoute;
      }
      //    UserDataModel? user = await getBlocData<AuthCubit>().getUser();
      // bool isNew = await getBlocData<ConfigurationCubit>().isNewInstalled();
      //  isNotificationEnabled = await checkNotificationPermission(context);
      // bool isLanguageSaved = await getBlocData<LanguageCubit>().getSavedLanguage();
      //   print("saved language is :$isLanguageSaved");
      // print("token is :${user?.token}");
      // if (isNew.isTrue) {
      //   bool cachedNewInstall = await getBlocData<ConfigurationCubit>()
      //       .cachedNewInstall();
      //   print("cachedNewInstall: $cachedNewInstall");
      //   /*      isNotificationEnabled = await checkNotificationPermissionAndDoOperation(
      //     context,
      //     onSuccess: () {
      //       NotificationsService().showSimpleNotification(
      //         title: 'أهلا بك فى عيادتى',
      //         description: "نرحب بك في منصة عيادتى للحجوزات الطبيه و الكشوفات",
      //       );
      //     },
      //   );*/
      //   route = Routes.onBoardingRoute;
      // } else {
      //   route = Routes.bottomNavRoute;
      // }
      /*   print("is User NULL: ${user.isNull}");
      if(isNew.isTrue) {
        route = Routes.secondSplashScreen;
      } else if(user != null) {
        route = Routes.bottomNavRoute;
      }else{
        route = Routes.bottomNavRoute;
      }*/
    });
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      statusBarColor: AppColors.gradientColorStart,

      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.gradientColorStart, AppColors.gradientColorEnd],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPngImage(image: AppAssets.splashImage),
              32.vs,
              Text("برنامج نقاط الولاء", style: getSemiBoldTextStyle(color: AppColors.white, fontSize: 32)),
              8.vs,
              Text("نظام إدارة النقاط الذكي", style: getRegularTextStyle(fontSize: 16, color: AppColors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
