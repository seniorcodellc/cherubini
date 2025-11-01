import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/tech_warranty_body.dart';

class TechWarrantyScreen extends StatelessWidget {
  const TechWarrantyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        appBar:CustomAppbar(title: "شهادة الضمان"),
        child: TechWarrantyBody()
    );
  }
}
