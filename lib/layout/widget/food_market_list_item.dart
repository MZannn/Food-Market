part of 'widgets.dart';

class FoodMarketListItem extends StatelessWidget {
  final Function onTapRateApp;
  final Function onTapHelpCenter;
  final Function onTapPrivacy;
  final Function onTapTerms;
  const FoodMarketListItem(
      {Key? key,
      required this.onTapRateApp,
      required this.onTapHelpCenter,
      required this.onTapPrivacy,
      required this.onTapTerms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            child: GestureDetector(
              onTap: () {
                onTapRateApp();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rate App",
                    style: blackText14,
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/img/right_arrow.png")))),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            child: GestureDetector(
              onTap: () {
                onTapHelpCenter();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Help Center",
                    style: blackText14,
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/img/right_arrow.png")))),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            child: GestureDetector(
              onTap: () {
                onTapPrivacy();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy & Policy",
                    style: blackText14,
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/img/right_arrow.png")))),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            child: GestureDetector(
              onTap: () {
                onTapTerms();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms & Conditions",
                    style: blackText14,
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/img/right_arrow.png")))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
