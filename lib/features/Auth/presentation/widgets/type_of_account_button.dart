import 'package:cherubini/exports.dart';

class TypeOfAccountButton extends StatelessWidget {
  const TypeOfAccountButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(163, 40)),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: getRegularTextStyle(color: AppColors.primaryColor),
      ),
    );
  }
}
