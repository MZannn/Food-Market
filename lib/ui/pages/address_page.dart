part of 'pages.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AddressController>();
    return GeneralPages(
      title: "Address",
      subtitle: "Make sure it's valid",
      onBackPressButton: () => Get.back(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Phone No.",
              style: blackText16,
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type your phone number",
                    hintStyle: greyText14),
              ),
            ),
            sizedBoxHeight(16),
            Text(
              "Address",
              style: blackText16,
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type your address",
                    hintStyle: greyText14),
              ),
            ),
            sizedBoxHeight(16),
            Text(
              "House No.",
              style: blackText16,
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type your house number",
                    hintStyle: greyText14),
              ),
            ),
            sizedBoxHeight(16),
            Text(
              "City",
              style: blackText16,
            ),
            Obx(() => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
                    isExpanded: true,
                    value: controller.dropdownValue.value,
                    onChanged: (value) => controller.dropdownSet(value),
                    items: <String>['Jakarta', 'Bandung', 'Surabaya', 'Bali']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )),
            sizedBoxHeight(24),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Sign Up Now",
                    style: blackText14.copyWith(fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
