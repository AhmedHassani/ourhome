import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../AHD.dart';
import '../components/button.dart';
import '../components/dashboardMainCard.dart';
import '../components/fonts.dart';
import '../service/panel_controller.dart';





class PanelView extends GetView<PanelController> {
  const PanelView({super.key});

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AhdColors.white,
        appBar: AppBar(
          title: Text(
            "مساء الخير",
            style: GoogleFonts.cairo(color: Colors.black),
          ),
          actions: [
            ButtonAppar(
              onTap: () {},
              icon: Icons.search_outlined,
            ),
            ButtonAppar(
              onTap: () {},
              icon: Icons.notifications_none,
            ),
            ButtonAppar(
              onTap: () {},
              icon: Icons.person_outline,
            ),
          ],
          elevation: 0,
          backgroundColor: AhdColors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
             children: [
               Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(

                       padding: EdgeInsets.only(right: 12),
                       child: Text(
                         "25/11/2022  13:10 مساءً",
                         style: GoogleFonts.cairo(color: Colors.black),
                       ),
                    ),
                    const Divider(),
                    const SizedBox(
                       height: 12,
                    )
                  ],
               ),
               ResponsiveGridRow(children: [
                 ResponsiveGridCol(
                   lg: 8,
                   child: DashboardMainCard(),
                 ),
                 ResponsiveGridCol(
                   lg: 4,
                   child: Column(
                     children: [
                       ListTile(
                         title: Text(
                           "المنتجات الاكثر مبيعا",
                            style: Fonts().style2(color: AhdColors.secondary),
                         ),
                         trailing: Text(
                           "المزيد",
                           style: GoogleFonts.tajawal(color: AhdColors.secondary),
                         ),
                       ),
                       Container(
                         height: Get.height * 0.90,
                         color: AhdColors.white,
                         margin: const EdgeInsets.only(bottom: 10),
                         alignment: const Alignment(0, 0),
                         child: ListView.separated(
                           itemCount: 9,
                           physics: NeverScrollableScrollPhysics(),
                           itemBuilder: (BuildContext context, int index) {
                             return ListTile(
                               leading: ClipRRect(
                                 borderRadius: BorderRadius.circular(4.0),
                                 child: Image.asset("images/item.png"),
                               ),
                               title: Text(
                                 "خاتم زركون أمريكي",
                                 style: AhdFonts.style5(),
                               ),
                               subtitle: Text(
                                 "49.99 د.ع",
                                 style: AhdFonts.style5(),
                               ),
                               trailing: Text(
                                 "متوفر",
                                 style: AhdFonts.style5(fontColor: AhdColors.main),
                               ),
                             );
                           },
                           separatorBuilder: (BuildContext context, int index) {
                             return const SizedBox(
                               height: 5,
                             );
                           },
                         ),
                       ),
                     ],
                   ),
                 ),
               ]),
             ],
          ),
        ),
      ),
    );
  }
}
