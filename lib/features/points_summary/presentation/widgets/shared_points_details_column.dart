import 'package:auto_size_text/auto_size_text.dart';

import '../../../../exports.dart';

class SharedPointsDetailsColumn extends StatelessWidget {
  const SharedPointsDetailsColumn({
    super.key,
    required this.pointsType,
    required this.pointsNum,
  });
  final String pointsType;
  final String pointsNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child:   AutoSizeText(
          pointsType,
          textAlign: TextAlign.center,
          style: getRegularTextStyle(color: AppColors.accentColor),
        )),
        5.vs,
        Text(
          pointsNum,
          style: getRegularTextStyle(color: AppColors.subTitleColor),
        )
      ],
    ),
    );
  }
}
