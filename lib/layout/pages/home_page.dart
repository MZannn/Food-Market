part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      final itemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FoodMarket",
                          style:
                              blackText22.copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Let's get some foods",
                          style:
                              greyText14.copyWith(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/16/2886217516.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 258,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Row(
                    children: mockFood
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left: e == mockFood.first ? defaultMargin : 0,
                                  right: defaultMargin),
                              child: FoodCard(foodModels: e),
                            ))
                        .toList(),
                  )
                ]),
              ),
              Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTabBar(
                        titles: const ['New Taste', 'Popular', 'Recommended'],
                        selectedIndex: controller.selectedIndex,
                        onTap: (index) {
                          controller.tabBarIndex(index);
                        },
                      ),
                      sizedBoxHeight(16),
                      Builder(builder: (context) {
                        List<FoodModels> foodModels =
                            (controller.selectedIndex == 0)
                                ? mockFood
                                : (controller.selectedIndex == 1)
                                    ? []
                                    : [];
                        return Column(
                          children: foodModels
                              .map((e) => Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        defaultMargin, 0, defaultMargin, 16),
                                    child: FoodListItem(
                                        foodModels: e, itemWidth: itemWidth),
                                  ))
                              .toList(),
                        );
                      }),
                      sizedBoxHeight(defaultMargin),
                    ],
                  )),
            ],
          ),
        ],
      );
    });
  }
}
