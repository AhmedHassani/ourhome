import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/view/panel.dart';
import 'package:google_fonts/google_fonts.dart';
import '../AHD.dart';
import 'order_view.dart';




class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController page = PageController();
  SideMenuController sideMenu = SideMenuController();
  @override
  void initState() {
    sideMenu.addListener((p0) {
      page.jumpToPage(p0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Directionality(
        textDirection: TextDirection.rtl,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SideMenu(
              controller: sideMenu,
              showToggle: true,
              style: SideMenuStyle(
                showTooltip: true,
                displayMode: SideMenuDisplayMode.auto,
                backgroundColor: AhdColors.main,
                hoverColor: Colors.blue[100],
                selectedColor:  AhdColors.white,
                unselectedIconColor: AhdColors.white,
                unselectedTitleTextStyle: GoogleFonts.tajawal(color:AhdColors.secondary),
                selectedTitleTextStyle:GoogleFonts.tajawal(color:AhdColors.secondary),
                selectedIconColor: AhdColors.secondary,
              ),
              title: Column(
                children: [
                  SizedBox(height: 15,),
                  Image.asset("images/logo.png",width: 150,),
                  SizedBox(height: 15,),
                ],
              ),
              items: [
                SideMenuItem(
                  priority: 0,
                  title: 'لوحة التحكم',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.home),
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  tooltipContent: "This is a tooltip for Dashboard item",
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'الطلبات',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.supervisor_account),
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'المنتجات',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.file_copy_rounded),
                  trailing: Container(
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 3),
                        child: Text(
                          'New',
                          style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                        ),
                      )),
                ),
                SideMenuItem(
                  priority: 3,
                  title: 'الواجهة الرئيسية',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.download),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'العروض',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'المستخدمين',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'سياسات التطبيق',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'المقالات',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
                SideMenuItem(
                  priority: 4,
                  title: 'تسجيل خروج',
                  onTap: (page, _) {
                    sideMenu.changePage(page);
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: page,
                children: [
                  PanelView(),
                  OrderView(),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Files',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Download',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Only Title',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Only Icon',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}