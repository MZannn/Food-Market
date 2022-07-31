part of 'pages.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: const Color(0xFFFAFAFC),
              ),
              SafeArea(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    controller.setIndex(index);
                  },
                  children: [
                    const HomePage(),
                    const OrderHistoryPage(),
                    ProfilePage(
                      userModels: mockUser,
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: CustomBottomNavbar(
            selectedIndex: controller.selectedIndex,
            onTap: (index) {
              controller.setIndex(index);
              pageController.jumpToPage(index);
            },
          ),
        );
      },
    );
  }
}
