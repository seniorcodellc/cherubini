import '../../exports.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isOn=false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: AppColors.primaryColor,
      value: isOn, onChanged: (value) {
      isOn=value;
      setState(() {

      });
    },);
  }
}
