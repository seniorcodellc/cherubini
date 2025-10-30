import 'package:cherubini/features/on_boarding/presentation/screens/onboarding_screen.dart';
import 'package:cherubini/core/pdf_handle/get_file_cubit.dart';
import 'package:cherubini/features/Auth/presentation/screens/sign_up_as_tech.dart';
import 'package:cherubini/features/Auth/presentation/screens/sign_up_as_trader.dart';
import 'package:cherubini/features/auth/presentation/screens/register_accept_screen.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_dashboard.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_points_summary_screen.dart';

import 'package:nested/nested.dart';

import '../../exports.dart';

import '../../features/Auth/presentation/screens/login_screen.dart';
import '../../features/merchant_dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/splash_screen/presentation/screens/splash_screen.dart';

class RouteGenerator {
  AnimationType? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 400.milliseconds;
  static Route<T>? generateRoute<T>(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return buildPageRoute<T>(
          child: SplashScreen(),
          routeSettings: routeSettings,
        );
      case Routes.onBoardingRoute:
        return buildPageRoute<T>(
          child: OnboardingScreen(),
          routeSettings: routeSettings,
        );
      case Routes.dashboardRoute:
        return buildPageRoute<T>(
          child: DashboardScreen(),
          routeSettings: routeSettings,
        );
      case Routes.loginRoute:
        return buildPageRoute<T>(child: LoginScreen());
      case Routes.registerTechRoute:
        return buildPageRoute<T>(child: SignUpAsTech());
      case Routes.registerTraderRoute:
        return buildPageRoute<T>(child: SignUpAsTrader());
      case Routes.registerAccept:
        return buildPageRoute<T>(child: RegisterAcceptScreen());
      case Routes.techDashboard:
        return buildPageRoute<T>(child: TechDashboard());
      case Routes.techPointsSummary:
        return buildPageRoute<T>(child: TechPointsSummaryScreen());

      /*
        case Routes.followUps:
        return buildPageRoute<T>(child: FollowUps(), routeSettings: routeSettings);
      case Routes.reservationDetails:
        return buildPageRoute<T>(child: ReservationDetails(), routeSettings: routeSettings);
      case Routes.consultationsRoute:
        return buildPageRoute<T>(child: ConsultationsScreen(), routeSettings: routeSettings);
      case Routes.reservationSteps:
        bool isConsultation = (routeSettings.arguments as Map<String, dynamic>)["isConsultation"];
        return buildPageRoute<T>(
          child: ReservationSteps(isConsultation: isConsultation.orTrue),
          routeSettings: routeSettings,
        );
      case Routes.myReservationsRoute:
        return buildPageRoute<T>(child: MyReservations(), routeSettings: routeSettings);
      case Routes.bottomNavRoute:
        return buildPageRoute<T>(child: BottomNavigationScreens(), routeSettings: routeSettings);
case Routes.insurances:
        return buildPageRoute<T>(child: InsurancesScreen(), routeSettings: routeSettings);
case Routes.addInsuranceMembers:
        return buildPageRoute<T>(child: AddInsuranceMembers(), routeSettings: routeSettings);
        case Routes.addInsuranceCompany:
        return buildPageRoute<T>(child: AddInsuranceCompany(), routeSettings: routeSettings);
      case Routes.creditCard:
        return buildPageRoute<T>(child: MasterCardScreen(), routeSettings: routeSettings);
      case Routes.completed:
        return buildPageRoute<T>(child: CompletedScreen(), routeSettings: routeSettings);

      case Routes.loginRoute:
        return buildPageRoute<T>(
          child: LoginScreen(),
          providers: [BlocProvider(create: (context) => ErrorCubit())],
          routeSettings: routeSettings,
        );

      case Routes.registerRoute:
        return buildPageRoute<T>(
          child: RegisterScreen(),
          routeSettings: routeSettings,
          providers: [BlocProvider(create: (context) => ErrorCubit())],
        );

      case Routes.enterOtpRoute:
        return buildPageRoute<T>(
          child: EnterOtpScreen(
            */
      /*         isForgetPassword: (routeSettings.arguments
                  as Map<String, dynamic>)["isForgetPassword"],
              phoneNumber:
                  (routeSettings.arguments as Map<String, dynamic>)["phone"],
              otpNumber: (routeSettings.arguments
                  as Map<String, dynamic>)["otpNumber"],
              userId:
                  (routeSettings.arguments as Map<String, dynamic>)["userId"],
              countryCode: (routeSettings.arguments
                  as Map<String, dynamic>)["countryCode"],*/ /*

          ),
          providers: [BlocProvider(create: (context) => ErrorCubit())],
          routeSettings: routeSettings,
        );
      case Routes.enterPhoneNumberRoute:
        return buildPageRoute<T>(
          child: ForgetPasswordScreen(
            isForgetPassword: (routeSettings.arguments as Map<String, dynamic>)["isForgetPassword"],
            userId: (routeSettings.arguments as Map<String, dynamic>)["userId"],
          ),
          routeSettings: routeSettings,
        );

      case Routes.resetPasswordRoute:
        return buildPageRoute<T>(
          child: ResetPasswordScreen(
            phone: (routeSettings.arguments as Map<String, dynamic>)["phone"],
            code: (routeSettings.arguments as Map<String, dynamic>)["code"],
            countryCode: (routeSettings.arguments as Map<String, dynamic>)["countryCode"],
          ),
          providers: [BlocProvider(create: (context) => ErrorCubit())],
          routeSettings: routeSettings,
        );
*/

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for ${routeSettings.name}"),
            ),
          ),
        );
    }
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
    List<SingleChildWidget>? providers,
  }) {
    if (providers.isNotNullOrEmpty) {
      child = MultiBlocProvider(providers: providers!, child: child);
    }
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
            child: child,
            turns: ReverseAnimation(anim),
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.scale) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(child: child, scale: anim);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slide) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            child: child,
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}
