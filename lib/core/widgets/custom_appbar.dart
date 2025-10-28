import '../../exports.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: getRegularTextStyle(fontSize: 24.sp)),
      backgroundColor: AppColors.scaffold,
      automaticallyImplyLeading: false,
      leadingWidth: 56.w,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          pop();
        },
        child: Container(
          height: 10.h,
          width: 40.h,
          margin: getPadding(start: 16.w, vertical: 7.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(color: AppColors.notificationBoxBBackgroundColor, borderRadius: BorderRadius.circular(6.r)),
          child: Icon(Icons.arrow_back, color: AppColors.cyanBlue),
        ),
      ),
      actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(width, 50.h);
}
