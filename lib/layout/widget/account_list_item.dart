part of 'widgets.dart';

class AccountListItem extends StatelessWidget {
  final Function onTapEditProfile;
  final Function onTapHomeAddress;
  final Function onTapSecurity;
  final Function onTapPayments;
  const AccountListItem(
      {Key? key,
      required this.onTapEditProfile,
      required this.onTapHomeAddress,
      required this.onTapSecurity,
      required this.onTapPayments})
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
                onTapEditProfile();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Edit Profile",
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
                onTapHomeAddress();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home Address",
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
                onTapSecurity();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Security",
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
                onTapPayments();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payments",
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
