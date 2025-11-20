import 'package:cherubini/features/authentication/domain/usecase/question_use_cases.dart';
import 'package:cherubini/features/authentication/presentation/managers/cities_cubit.dart';
import 'package:cherubini/features/authentication/presentation/managers/governorates_cubit.dart';
import 'package:cherubini/features/authentication/presentation/managers/merchant_list_cubit.dart';
import 'package:cherubini/features/authentication/presentation/managers/question_cubit.dart';
import 'package:cherubini/features/edit_profile/domain/use_cases/edit_profile_use_case.dart';
import 'package:cherubini/features/edit_profile/presentation/manager/edit_profile_cubit.dart';
import 'package:cherubini/features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:cherubini/features/languages/presentation/screens/language_screen.dart';
import 'package:cherubini/features/on_boarding/presentation/screens/onboarding_screen.dart';
import 'package:cherubini/features/authentication/presentation/screens/sign_up_as_tech.dart';
import 'package:cherubini/features/authentication/presentation/screens/sign_up_as_trader.dart';
import 'package:cherubini/features/authentication/presentation/screens/register_accept_screen.dart';
import 'package:cherubini/features/scan/domain/use_cases/qrcode_usecase.dart';
import 'package:cherubini/features/scan/presentation/screens/scan_screen.dart';
import 'package:cherubini/features/technican_management/domain/use_cases/technician_use_case.dart';
import 'package:cherubini/features/technican_management/presentation/manager/technician_cubit.dart';
import 'package:cherubini/features/warranty/presentation/screens/merchant_warranty_screen.dart';
import 'package:cherubini/features/warranty/presentation/screens/tech_warranty_screen.dart';

import 'package:nested/nested.dart';

import '../../exports.dart';

import '../../features/authentication/domain/usecase/auth_use_case.dart';
import '../../features/authentication/domain/usecase/merchant_list_use_cases.dart';
import '../../features/authentication/presentation/managers/auth_cubit.dart';
import '../../features/change_password/presentation/screens/change_password_screen.dart';
import '../../features/forget_password/presentation/screens/enter_code_screen.dart';
import '../../features/forget_password/presentation/screens/forget_password_screen.dart';
import '../../features/forget_password/presentation/screens/reset_password.dart';
import '../../features/authentication/domain/usecase/governorates_use_cases.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/operation_details/presentation/screens/operation_details.dart';
import '../../features/operations_history/presentation/screens/operation_history.dart';
import '../../features/points_summary/domain/use_cases/cash_reward_use_cases.dart';
import '../../features/points_summary/domain/use_cases/due_pay_use_cases.dart';
import '../../features/points_summary/presentation/managers/due_pay_cubit.dart';
import '../../features/points_summary/presentation/managers/dues_cubit.dart';
import '../../features/points_summary/presentation/screens/due_details_screen.dart';
import '../../features/points_summary/presentation/screens/dues_screen.dart';
import '../../features/scan/presentation/managers/qrcode_cubit.dart';
import '../../features/settings/domain/use_cases/user_manual_use_cases.dart';
import '../../features/settings/presentation/managers/user_manual_cubit.dart';
import '../../features/settings/presentation/screens/settings.dart';
import '../../features/splash_screen/presentation/screens/splash_screen.dart';
import '../../features/technican_management/presentation/screens/technicians_management_screen.dart';
import '../widgets/error_screen.dart';

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
      case Routes.operationsHistoryRoute:
        return buildPageRoute<T>(child: OperationsHistoryScreen(), routeSettings: routeSettings);
      case Routes.errorScreenRoute:
        return buildPageRoute<T>(
          child: ErrorScreen(),
          routeSettings: routeSettings,
        );

      case Routes.merchantDashboardRoute:
        return buildPageRoute<T>(
          child: HomeScreen(),
          routeSettings: routeSettings,
        );

      case Routes.techniciansManagementRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider(
              create: (context) => TechnicianCubit(
                technicianUseCase: ServiceLocator().getIt<TechnicianUseCase>(),
              )..filterTechnicians(),
            ),
          ],
          child: TechniciansManagementScreen(),
          routeSettings: routeSettings,
        );
      case Routes.operationsDetailsRoute:
        return buildPageRoute<T>(
          child: OperationsDetailsScreen(),
          routeSettings: routeSettings,
        );
      case Routes.duesRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider(
              create: (context) => DuesCubit(
                cashRewardUseCases: ServiceLocator()
                    .getIt<CashRewardUseCases>(),
              )..getList(),
            ),
          ],
          child: DuesScreen(),
          routeSettings: routeSettings,
        );
        return buildPageRoute<T>(
          child: OnboardingScreen(),
          routeSettings: routeSettings,
        );
      case Routes.scanRoute:
        return buildPageRoute<T>(
          child: ScanScreen(),
          providers: [
            BlocProvider(
              create: (context) => QrCodeCubit(
                qrCodeUseCases: ServiceLocator().getIt<QrCodeUseCases>(),
              ),
            ),
          ],
          routeSettings: routeSettings,
        );
      case Routes.merchantWarrantyRoute:
        return buildPageRoute<T>(
          child: MerchantWarrantyScreen(),
          routeSettings: routeSettings,
        );
      case Routes.techWarrantyRoute:
        return buildPageRoute<T>(
          child: TechWarrantyScreen(),
          routeSettings: routeSettings,
        );
      case Routes.loginRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
          ],
          child: LoginScreen(),
        );
      case Routes.dueDetails:
        return buildPageRoute<T>(
          providers: [
            BlocProvider(
              create: (context) => DuePayCubit(
                duePayUseCases: ServiceLocator().getIt<DuePayUseCases>(),
              ),
            ),
          ],
          routeSettings: routeSettings,
          child: DuesDetailsScreen(),
        );
      case Routes.registerTechRoute:
        return buildPageRoute<T>(
          child: SignUpAsTech(),
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
            BlocProvider(
              create: (context) => QuestionCubit(
                questionUseCases: ServiceLocator().getIt<QuestionUseCases>(),
              )..requestData(),
            ),

            BlocProvider<MerchantListCubit>(
              create: (context) => MerchantListCubit(
                merchantListUseCases: ServiceLocator()
                    .getIt<MerchantListUseCases>(),
              )..getList(),
            ),
          ],
        );
      case Routes.registerTraderRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
            BlocProvider<GovernoratesCubit>(
              create: (context) => GovernoratesCubit(
                governoratesUseCases: ServiceLocator()
                    .getIt<GovernoratesUseCases>(),
              )..getList(),
            ),
            BlocProvider<CitiesCubit>(create: (context) => CitiesCubit()),
          ],
          child: SignUpAsTrader(),
        );
      case Routes.registerAccept:
        return buildPageRoute<T>(child: RegisterAcceptScreen());

        ;

      case Routes.merchantSettings:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<UserManualCubit>(
              create: (context) => UserManualCubit(
                userManualUseCases: ServiceLocator()
                    .getIt<UserManualUseCases>(),
              ),
            ),
          ],
          child: SettingsScreen(),
        );

      case Routes.editProfile:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
            BlocProvider<EditProfileCubit>(
                create: (context) => EditProfileCubit(editProfileUseCase: ServiceLocator().getIt<EditProfileUseCase>() )),
          ],

          child: EditProfileScreen(),
        );
      case Routes.forgetPasswordRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
            // BlocProvider<AuthCubit>(
            //   create: (context) =>
            //       AuthCubit(authUseCase: ServiceLocator().getIt<AuthUseCase>()),
            // ),
          ],
          child: ForgetPasswordScreen(),
        );
      case Routes.forgetPasswordRoute2:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
          ],
          child: ResetPasswordScreen(),
        );
      case Routes.enterCodeRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
            // BlocProvider<AuthCubit>(
            //   create: (context) =>
            //       AuthCubit(authUseCase: ServiceLocator().getIt<AuthUseCase>()),
            // ),
          ],
          child: EnterCodeScreen(),
        );
      case Routes.changePasswordRoute:
        return buildPageRoute<T>(
          providers: [
            BlocProvider<ErrorCubit>(create: (context) => ErrorCubit()),
          ],
          child: ChangePasswordScreen(),
        );
        case Routes.selectLanguageRoute:
        return buildPageRoute<T>(
          child: LanguageScreen(),
        );

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
