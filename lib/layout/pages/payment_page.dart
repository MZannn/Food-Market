part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final TransactionModels transactionModels;
  final UserModels userModels;
  final int quantity;
  const PaymentPage({
    Key? key,
    required this.transactionModels,
    required this.userModels,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final num tax = quantity * transactionModels.foodModels.price * 0.1;
    const int driverCost = 50000;
    final num totalPrice =
        tax + driverCost + quantity * transactionModels.foodModels.price;
    return GeneralPages(
        title: "Payment",
        subtitle: "You deserve better meal",
        onBackPressButton: () => Get.back(),
        backColor: const Color(0xFFFAFAFC),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item Ordered", style: blackText14),
                  sizedBoxHeight(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(
                                    transactionModels.foodModels.picturePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 180,
                                  child: Text(
                                    transactionModels.foodModels.name,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                    style: blackText16,
                                  ),
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id-ID',
                                          decimalDigits: 0,
                                          symbol: 'Rp. ')
                                      .format(
                                          transactionModels.foodModels.price),
                                  style: greyText14.copyWith(fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "$quantity items",
                        style: greyText14.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                  sizedBoxHeight(12),
                  Text(
                    "Details Transaction",
                    style: blackText14,
                  ),
                  sizedBoxHeight(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 180,
                        child: Text(
                          transactionModels.foodModels.name,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: greyText14,
                        ),
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp. ',
                                decimalDigits: 0)
                            .format(
                                quantity * transactionModels.foodModels.price),
                        style: blackText14,
                      ),
                    ],
                  ),
                  sizedBoxHeight(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Driver",
                        style: greyText14,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp. ',
                                decimalDigits: 0)
                            .format(driverCost),
                        style: blackText14,
                      ),
                    ],
                  ),
                  sizedBoxHeight(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax 10%",
                        style: greyText14,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'Rp. ',
                                decimalDigits: 0)
                            .format(tax),
                        style: blackText14,
                      ),
                    ],
                  ),
                  sizedBoxHeight(6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            .format(totalPrice),
                        style: blackText14.copyWith(
                          color: const Color(0xFF1ABC9C),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: defaultMargin),
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin, vertical: 16),
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver to: ",
                      style: blackText14,
                    ),
                    sizedBoxHeight(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: greyText14,
                        ),
                        Text(
                          userModels.name,
                          style: blackText14,
                        ),
                      ],
                    ),
                    sizedBoxHeight(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Phone No",
                          style: greyText14,
                        ),
                        Text(
                          userModels.phoneNumber,
                          style: blackText14,
                        ),
                      ],
                    ),
                    sizedBoxHeight(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Address",
                          style: greyText14,
                        ),
                        Text(
                          userModels.address,
                          style: blackText14,
                        ),
                      ],
                    ),
                    sizedBoxHeight(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "House No.",
                          style: greyText14,
                        ),
                        Text(
                          userModels.houseNumber,
                          style: blackText14,
                        ),
                      ],
                    ),
                    sizedBoxHeight(6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "City",
                          style: greyText14,
                        ),
                        Text(
                          userModels.city,
                          style: blackText14,
                        ),
                      ],
                    ),
                  ]),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: defaultMargin),
                height: 45,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Checkout Now",
                    style: blackText14.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ],
        ));
  }
}
