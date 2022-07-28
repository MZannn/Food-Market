part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return GeneralPages(
      title: "Sign In",
      subtitle: "Find your best ever meal",
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: 26, horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email Address", style: blackText16),
            Container(
              height: 45,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type your email address",
                  hintStyle: greyText14.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            sizedBoxHeight(16),
            Text(
              "Password",
              style: blackText16,
            ),
            Container(
              height: 45,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 6),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Sign In",
                  style: blackText14.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            sizedBoxHeight(14),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SignUpPage());
                },
                style: ElevatedButton.styleFrom(
                  primary: greyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Create new Account",
                  style: blackText14.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
