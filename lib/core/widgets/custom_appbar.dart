import '../../exports.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: getSemiBoldTextStyle(
          fontSize: 26.sp,
          color: AppColors.primaryColor,
        ),
      ),
      backgroundColor: AppColors.scaffold,
      automaticallyImplyLeading: false,
      leadingWidth: 56.w,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          pop();
        },
        child: Icon(Icons.arrow_back, color: AppColors.primaryColor),
      ),
      actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(width, 50.h);
}
