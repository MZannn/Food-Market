part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return GeneralPages(
      title: "Sign Up",
      subtitle: "Register and eat",
      onBackPressButton: () => Get.back(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 26,
        ),
        child: Column(
          children: [
            Container(
              width: 110,
              height: 110,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/photo_border.png"))),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/16/2886217516.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            sizedBoxHeight(16),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Full Name",
                style: blackText16.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                cursorColor: mainColor,
                controller: nameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your full name",
                  hintStyle: greyText14.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            sizedBoxHeight(16),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Email Address",
                style: blackText16.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                cursorColor: mainColor,
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your email address",
                  hintStyle: greyText14.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            sizedBoxHeight(16),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Password",
                style: blackText16.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                cursorColor: mainColor,
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your password",
                  hintStyle: greyText14.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            sizedBoxHeight(24),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const AddressPage());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Continue",
                    style: blackText14.copyWith(fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
