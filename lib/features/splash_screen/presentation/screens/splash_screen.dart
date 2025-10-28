import 'dart:async';
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
  //    UserDataModel? user = await getBlocData<AuthCubit>().getUser();
      bool isNew = await getBlocData<ConfigurationCubit>().isNewInstalled();
      isNotificationEnabled = await checkNotificationPermission(context);
     // bool isLanguageSaved = await getBlocData<LanguageCubit>().getSavedLanguage();
   //   print("saved language is :$isLanguageSaved");
     // print("token is :${user?.token}");
      if (isNew.isTrue) {
       bool cachedNewInstall = await getBlocData<ConfigurationCubit>().cachedNewInstall();
       print("cachedNewInstall: $cachedNewInstall");
  /*      isNotificationEnabled = await checkNotificationPermissionAndDoOperation(
          context,
          onSuccess: () {
            NotificationsService().showSimpleNotification(
              title: 'أهلا بك فى عيادتى',
              description: "نرحب بك في منصة عيادتى للحجوزات الطبيه و الكشوفات",
            );
          },
        );*/
        route = Routes.onBoardingRoute;
      } else {
        route = Routes.bottomNavRoute;
      }
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
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: AppColors.white),
          ),
          SizedBox(
            width: 200.w,
            height: 200.h,
            child: Image.asset(AppAssets.logo, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
