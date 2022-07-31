part of 'pages.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TransactionModels> inProgress = mockTransaction
        .where((element) =>
            element.status == TransactionStatus.onDelivery ||
            element.status == TransactionStatus.pending)
        .toList();
    List<TransactionModels> past = mockTransaction
        .where((element) =>
            element.status == TransactionStatus.delivered ||
            element.status == TransactionStatus.cancelled)
        .toList();
    if (inProgress.isEmpty && past.isEmpty) {
      return IllustrationPage(
        title: "Ouch! Hungry",
        subtitle: "Seems like you have not \nordered any food yet",
        picturePath: "assets/img/love_burger.png",
        buttonTitle1: "Find Foods",
        buttonTap1: () {},
      );
    } else {
      return GetBuilder<OrderHistoryController>(
        builder: (controller) {
          final double itemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;
          return GeneralPages(
            title: "Your Orders",
            subtitle: "Wait for the best meal",
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: const ['In Progress', 'Past Orders'],
                      selectedIndex: controller.selectedIndex,
                      onTap: (index) {
                        controller.setIndex(index);
                      },
                    ),
                    sizedBoxHeight(16),
                    Column(
                        children:
                            (controller.selectedIndex == 0 ? inProgress : past)
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: defaultMargin),
                                      child: OrderListItem(
                                        transactionModels: e,
                                        itemWidth: itemWidth,
                                      ),
                                    ))
                                .toList()),
                    sizedBoxHeight(defaultMargin),
                  ],
                )),
          );
        },
      );
    }
  }
}
