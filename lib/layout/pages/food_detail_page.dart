part of 'pages.dart';

class FoodDetailPage extends StatelessWidget {
  final Function? onBackPressButton;
  final TransactionModels? transactionModels;
  const FoodDetailPage(
      {Key? key, this.onBackPressButton, this.transactionModels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: mainColor,
        ),
        SafeArea(
            child: Container(
          color: Colors.white,
        )),
        SafeArea(
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(transactionModels!.foodModels.picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: defaultMargin, top: defaultMargin),
                    child: GestureDetector(
                      onTap: () {
                        onBackPressButton!();
                      },
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black26,
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/img/back_arrow_white.png"))),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 180,
                                  child: Text(
                                    transactionModels!.foodModels.name,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                    style: blackText16,
                                  ),
                                ),
                                sizedBoxHeight(6),
                                RatingStars(
                                    rate: transactionModels!.foodModels.rate),
                              ],
                            ),
                            GetBuilder<FoodDetailController>(
                              builder: (controller) {
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.minQuantity();
                                      },
                                      child: Container(
                                        height: 26,
                                        width: 26,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img/btn_min.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                      child: Text(
                                        controller.quantity.toString(),
                                        textAlign: TextAlign.center,
                                        style: blackText16,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.addQuantity();
                                      },
                                      child: Container(
                                        height: 26,
                                        width: 26,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/img/btn_add.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 14),
                          child: Text(
                            transactionModels!.foodModels.description,
                            style: greyText14,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: Text(
                            "Ingredients : ",
                            style: blackText14,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: Text(
                            transactionModels!.foodModels.ingredients,
                            style: greyText14,
                          ),
                        ),
                        sizedBoxHeight(40),
                        GetBuilder<FoodDetailController>(
                          builder: (controller) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Price",
                                      style: greyText14,
                                    ),
                                    Text(
                                      NumberFormat.currency(
                                              locale: 'id-ID',
                                              symbol: 'Rp. ',
                                              decimalDigits: 0)
                                          .format(controller.quantity *
                                              transactionModels!
                                                  .foodModels.price)
                                          .toString(),
                                      style: blackText14.copyWith(fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 163,
                                  height: 45,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: mainColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      "Order Now",
                                      style: blackText14.copyWith(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        )
                      ]),
                )
              ],
            )
          ],
        )),
      ],
    ));
  }
}
