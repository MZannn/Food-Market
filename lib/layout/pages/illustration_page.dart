part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function buttonTap1;
  final Function? buttonTap2;
  const IllustrationPage(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.picturePath,
      required this.buttonTitle1,
      this.buttonTitle2,
      required this.buttonTap1,
      this.buttonTap2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.only(bottom: 30),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(picturePath))),
        ),
        Text(
          title,
          style: blackText20,
        ),
        sizedBoxHeight(6),
        Text(
          subtitle,
          style: greyText14.copyWith(fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 45,
          width: 200,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                buttonTitle1,
                style: blackText14.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              )),
        ),
        buttonTap2 == null
            ? const SizedBox()
            : Container(
                margin: const EdgeInsets.only(top: 12),
                height: 45,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: greyColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      buttonTitle2 ?? "",
                      style: blackText14.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
              ),
      ],
    ));
  }
}
