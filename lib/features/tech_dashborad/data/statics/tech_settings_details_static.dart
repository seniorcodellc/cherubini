import 'package:cherubini/exports.dart';

import '../models/tech_settings_model.dart';

class TechSettingsDetailsStatic {
  static List<TechSettingsModel> techSettingsDetailsList = [
    TechSettingsModel(title: 'تعديل الملف الشخصي', asset: AppAssets.profile),
    TechSettingsModel(title: 'تغيير كلمة المرور', asset: AppAssets.lock),
    TechSettingsModel(title: 'شهادات الضمان', asset: AppAssets.profile),
  ];
}
