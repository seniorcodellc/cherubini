import "package:cherubini/features/on_boarding/presentation/managers/onboarding_manager_cubit.dart";

import "exports.dart";

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<OnboardingManagerCubit>(
      create: (context) => ServiceLocator().getIt<OnboardingManagerCubit>(),
    ),

    /*    BlocProvider<LanguageCubit>(create: (context) => ServiceLocator().getIt<LanguageCubit>()),

 */
    /*   BlocProvider<BottomNavOperationCubit>(
        create: (context) => BottomNavOperationCubit()),*/
    /*
    BlocProvider<AuthCubit>(
        create: (context) => ServiceLocator().getIt<AuthCubit>()),

    BlocProvider<BottomNavOperationCubit>(create: (context) => BottomNavOperationCubit()),
    BlocProvider<ConfigurationCubit>(create: (context) => ServiceLocator().getIt<ConfigurationCubit>()),
    BlocProvider<CompanyCubit>(
      create: (context) => CompanyCubit(companyUseCases: ServiceLocator().getIt<CompanyUseCases>())..getList(),
    ),   BlocProvider<InsurancePolicyCubit>(
      create: (context) => InsurancePolicyCubit(insurancePolicyUseCases: ServiceLocator().getIt<InsurancePolicyUseCases>()),
    ),*/
  ];
}
