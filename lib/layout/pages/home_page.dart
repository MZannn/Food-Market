part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        style: greyText14.copyWith(fontWeight: FontWeight.w300),
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
            sizedBoxHeight(24),
            FoodCard(foodModels: mockFood),
          ],
        ),
      ],
    );
  }
}
