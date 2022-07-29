part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int index) onTap;
  const CustomTabBar(
      {Key? key,
      required this.selectedIndex,
      required this.onTap,
      required this.titles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 49),
            color: const Color(0xFFF2F2F2),
            height: 1,
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: const EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTap(titles.indexOf(e));
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? blackText14.copyWith(
                                      fontWeight: FontWeight.w500)
                                  : greyText14,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: const EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? const Color(0xFF020202)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
