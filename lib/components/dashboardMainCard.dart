import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/model/statistics.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../AHD.dart';
import 'BaseTable.dart';
import 'fonts.dart';

class DashboardMainCard extends GetResponsiveView {
  String selectedValue = "1";

  DashboardMainCard({Key? key}) : super(key: key);

  @override
  // TODO: implement screen
  ResponsiveScreen get screen => super.screen;
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
        value: "1",
        child: Text(
          "هذا الشهر",
          style: Fonts().style3(),
        )),
    DropdownMenuItem(
        value: "2", child: Text("هذا الاسبوع", style: Fonts().style3())),
    DropdownMenuItem(
        value: "3", child: Text("هذا السنة", style: Fonts().style3())),
  ];

  @override
  Widget phone() {
    return Column(
      children: [
        mainCard(double.maxFinite, screen.height * 0.20),
        mainCard(double.maxFinite, screen.height * 0.20),
        titleDropdownBut(),
        table(ColumnWidthMode.auto)
      ],
    );
  }

  @override
  Widget tablet() {
    return Column(
      children: [
        mainCard(double.maxFinite, screen.height * 0.20),
        mainCard(double.maxFinite, screen.height * 0.20),
        titleDropdownBut(),
        table(ColumnWidthMode.fill)
      ],
    );
  }

  @override
  Widget desktop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child:mainCard(screen.width * 0.20, screen.height * 0.20) ,
            ),
            Expanded(
              flex: 1,
              child: mainCard(screen.width * 0.20, screen.height * 0.20),
            ),
          ],
        ),
        titleDropdownBut(),
        table(ColumnWidthMode.fill)
      ],
    );
  }

  Widget titleDropdownBut() {
    return ListTile(
      title: Text(
        "إحصائيات المبيعات",
        style: Fonts().style2(color: AhdColors.secondary),
      ),
      trailing: DropdownButton(
        value: selectedValue,
        borderRadius: BorderRadius.zero,
        underline: null,
        elevation: 0,
        style: Fonts().style2(color: AhdColors.secondary),
        items: menuItems,
        onChanged: (String? value) {},
      ),
    );
  }

  Widget table(ColumnWidthMode columnWidthMode) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SfDataGrid(
        columnWidthMode: columnWidthMode,
        source: BaseTable(statistics: [
          Statistics(
            successOrder: '12',
            failOrder: '1',
            totalPrice: '12,800 د.ع',
            totalOrder: '2,800 د.ع',
            filed: "الاسبوع الاول"
          ),
          Statistics(
            successOrder: '12',
            failOrder: '1',
            totalPrice: '12,800 د.ع',
            totalOrder: '2,800 د.ع',
            filed: "الاسبوع الاول"
          ),
          Statistics(
            successOrder: '12',
            failOrder: '1',
            totalPrice: '12,800 د.ع',
            totalOrder: '2,800 د.ع',
            filed: "الاسبوع الاول"
          ),
          Statistics(
            successOrder: '12',
            failOrder: '1',
            totalPrice: '12,800 د.ع',
            totalOrder: '2,800 د.ع',
            filed: "الاسبوع الاول"
          ),
          Statistics(
            successOrder: '12',
            failOrder: '1',
            totalPrice: '12,800 د.ع',
            totalOrder: '2,800 د.ع',
            filed: "الاسبوع الاول"
          ),
        ]),
        columns: <GridColumn>[
          GridColumn(
              columnName: '',
              label: Container(
                  color: AhdColors.secondary,
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    '',
                    style: Fonts().style5(fontColor: Colors.white),
                  ))),
          GridColumn(
              columnName: 'successOrder',
              label: Container(
                  color: AhdColors.secondary,
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'الطلبات الناجحة',
                    style: Fonts().style6(fontColor: Colors.white),
                  ))),
          GridColumn(
              columnName: 'failOrder',
              label: Container(
                  color: AhdColors.secondary,
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    ' الملغية',
                    style: Fonts().style6(fontColor: Colors.white),
                  ))),
          GridColumn(
              columnName: 'totalPrice',
              width: 120,
              label: Container(
                  color: AhdColors.secondary,
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'المبلغ الإجمالي',
                    style: Fonts().style6(fontColor: Colors.white),
                  ))),
          GridColumn(
              columnName: 'totalOrder',
              label: Container(
                  color: AhdColors.secondary,
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: Text(
                    'الأرباح',
                    style: Fonts().style6(fontColor: Colors.white),
                  ))),
        ],
      ),
    );
  }

  Widget mainCard(double w, double h) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 8),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: AhdColors.background2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 13),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sales',
                      style: GoogleFonts.cairo(
                        color: AhdColors.secondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Total Sales Today',
                        style: GoogleFonts.cairo(
                          color: AhdColors.secondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Text(
                        '\$500.20',
                        style: GoogleFonts.cairo(
                          color: AhdColors.secondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CircularPercentIndicator(
                percent: 0.55,
                radius: 45,
                lineWidth: 4,
                animation: true,
                progressColor: AhdColors.secondary,
                backgroundColor: Color(0x2B202529),
                center: Text(
                  '55%',
                  style: GoogleFonts.cairo(
                    color: AhdColors.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.trending_up_sharp,
                    color: AhdColors.secondary,
                    size: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


