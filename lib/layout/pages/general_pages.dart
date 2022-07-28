part of 'pages.dart';

class GeneralPages extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackPressButton;
  final Color? backColor;
  final Widget? child;

  const GeneralPages(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.onBackPressButton,
      this.backColor,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: Container(
            decoration: BoxDecoration(color: backColor ?? Colors.white),
            child: ListView(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Row(
                      children: [
                        onBackPressButton != null
                            ? GestureDetector(
                                onTap: () {
                                  if (onBackPressButton != null) {
                                    onBackPressButton!();
                                  }
                                },
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  margin: const EdgeInsets.only(
                                      right: defaultMargin),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/img/back_arrow.png"),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: blackText22.copyWith(
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subtitle,
                              style: greyText14.copyWith(
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 24,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFAFAFC),
                  ),
                ),
                child ?? const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
