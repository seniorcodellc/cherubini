import 'package:cherubini/exports.dart';

class TypeOfAccountButton extends StatelessWidget {
  const TypeOfAccountButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(163, 40)),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: getRegularTextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
