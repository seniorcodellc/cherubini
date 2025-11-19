import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/core/widgets/shimmer_widget.dart';
import 'package:cherubini/exports.dart';

class TechShimmer extends StatelessWidget {
  const TechShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomShimmer.fromRectangle(
          borderRadius: BorderRadius.circular(20),
          width: 343.w,
          height: 382.h,
          padding: getPadding(vertical: 16.h, horizontal: 16.w),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), spreadRadius: 1, blurRadius: 4)],

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomShimmer.fromCircular(radius: 30),
                  16.hs,
                  Column(
                    children: [
                      CustomShimmer.fromRectangle(width: 106, height: 11, borderRadius: BorderRadius.circular(20)),
                      16.vs,
                      CustomShimmer.fromRectangle(width: 106, height: 11, borderRadius: BorderRadius.circular(20)),
                    ],
                  ),
                ],
              ),
              25.vs,
              CustomShimmer.fromRectangle(width: 113, height: 30, borderRadius: BorderRadius.circular(20)),
              8.vs,
              CustomShimmer.fromRectangle(width: 173, height: 30, borderRadius: BorderRadius.circular(20)),
              8.vs,
              CustomShimmer.fromRectangle(width: 173, height: 30, borderRadius: BorderRadius.circular(20)),
              16.vs,
              HLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomShimmer.fromRectangle(width: 25.w, height: 11, borderRadius: BorderRadius.circular(20)),
                      8.vs,
                      CustomShimmer.fromRectangle(width: 50.w, height: 11, borderRadius: BorderRadius.circular(20)),
                    ],
                  ),
                  CustomShimmer.fromRectangle(width: 3.w,
                      height: 50.h, borderRadius: BorderRadius.circular(20)),
                  Column(
                    children: [
                      CustomShimmer.fromRectangle(width: 25.w, height: 11, borderRadius: BorderRadius.circular(20)),
                      8.vs,
                      CustomShimmer.fromRectangle(width: 50.w, height: 11, borderRadius: BorderRadius.circular(20)),
                    ],
                  ),
                  CustomShimmer.fromRectangle(width: 3.w,
                      height: 50.h, borderRadius: BorderRadius.circular(20)),
                  CustomShimmer.fromRectangle(width: 99, height: 26, borderRadius: BorderRadius.circular(20)),
                ],
              ),
              HLine(),
              4.vs,
              CustomShimmer(width: 311, height: 48, borderRadius: BorderRadius.circular(20)),
            ],
          ),
        ),
      ],
    );
  }
}
