part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  final UserModels userModels;
  const ProfilePage({Key? key, required this.userModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 26),
                width: double.infinity,
                height: 232,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/photo_border.png"),
                        ),
                      ),
                      child: Container(
                          decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/16/2886217516.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                    ),
                    Text(
                      mockUser.name,
                      style: blackText16.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    sizedBoxHeight(6),
                    Text(
                      mockUser.email,
                      style: greyText14.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              GetBuilder<ProfileController>(
                builder: (controller) {
                  return Container(
                    height: 220,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: defaultMargin),
                    color: Colors.white,
                    child: Column(
                      children: [
                        CustomTabBar(
                            selectedIndex: controller.selectedIndex,
                            onTap: (index) {
                              controller.setIndex(index);
                            },
                            titles: const ["Account", "Food Market"]),
                        sizedBoxHeight(16),
                        (controller.selectedIndex == 0)
                            ? AccountListItem(
                                onTapEditProfile: () {},
                                onTapHomeAddress: () {},
                                onTapSecurity: () {},
                                onTapPayments: () {})
                            : FoodMarketListItem(
                                onTapRateApp: () {},
                                onTapHelpCenter: () {},
                                onTapPrivacy: () {},
                                onTapTerms: () {})
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
