part of 'pages.dart';

class SuccessPageOrder extends StatelessWidget {
  const SuccessPageOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPage(
      title: "You've Made Order",
      subtitle: "Just stay at home while we are \npreparing your best foods",
      picturePath: "assets/img/bike.png",
      buttonTitle1: "Order Other Foods",
      buttonTitle2: "View My Order",
      buttonTap1: () {},
      buttonTap2: () {},
    );
  }
}
