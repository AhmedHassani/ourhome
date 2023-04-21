import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/components/fonts.dart';
import 'package:gemstone_dashboard/model/order.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../AHD.dart';
import '../components/BaseTable.dart';
import '../components/button.dart';
import '../components/order_table.dart';


class OrderView extends GetResponsiveView {


  OrderView({Key? key}) : super(key: key);

  @override
  ResponsiveScreen get screen => super.screen;


  @override
  Widget phone() {
    return view();
  }

  @override
  Widget tablet() {
    return view();
  }

  @override
  Widget desktop() {
    return view();
  }


  Widget view(){
     return DefaultTabController(
       initialIndex: 0,
       length: 5,
       child: Scaffold(
         backgroundColor: Colors.white,
         appBar: AppBar(
           title: Text(
             "مساء الخير",
             style: GoogleFonts.cairo(color: Colors.black),
           ),
           bottom: TabBar(
             labelStyle: Fonts().style5_5(fontColor: Colors.black),
             labelColor: Colors.black,
             isScrollable: false,
             indicatorColor:AhdColors.secondary,
             unselectedLabelColor:Colors.black38,
             tabs: const [
               Tab(
                 text: "الكل (64)",
               ),
               Tab(
                 text: "تم التدقيق",
               ),
               Tab(
                 text: "تم التجهيز",
               ),
               Tab(
                 text: "مكتمل",
               ),
               Tab(
                 text: "ملغى",
               ),
             ],
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
         body: TabBarView(
           children:  [
             table(ColumnWidthMode.fill),
             Center(
               child: Text("It's rainy here"),
             ),
             Center(
               child: Text("It's sunny here"),
             ),
             Center(
               child: Text("It's sunny here"),
             ),
             Center(
               child: Text("It's sunny here"),
             ),
           ],
         ),
       ),
     );
  }

  Widget table(ColumnWidthMode columnWidthMode) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SfDataGrid(
        columnWidthMode: columnWidthMode,
        checkboxColumnSettings: const DataGridCheckboxColumnSettings(
          showCheckboxOnHeader: true,
        ),
        source: OrderTable(order: [
          Order(1, "name1", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(2, "name2", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(3, "name3", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(4, "name4", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(5, "name5", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(6, "name6", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(7, "name7", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(8, "name8", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
          Order(9, "name9", "2023/02/14", "pinding","250.00 د.ع", "26/11/2022", "Ab12kO"),
        ]),
        columns: <GridColumn>[
          GridColumn(
              columnName: 'id',
              label: headerTable('رقم الطلب')
          ),
          GridColumn(
              columnName: 'name',
              label: headerTable('اسم المستخدم') 
          ),
          GridColumn(
              columnName: 'date',
              label: headerTable('تاريخ الطلب')
          ),
          GridColumn(
              columnName: 'status',
              width: 120,
              label: headerTable('حالة الطلب')
          ),
          GridColumn(
              columnName: 'total',
              label:headerTable('المجموع')
          ),
          GridColumn(
              columnName: 'datein',
              label: headerTable('تاريخ التسليم')
          ),
          GridColumn(
              columnName: 'discount',
              label: headerTable('كود الخصم')
          ),
          GridColumn(
              columnName: '',
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                     Expanded(
                        flex: 1,
                        child:Container(
                            color: AhdColors.secondary,
                            alignment: Alignment.center,
                        ),
                     ),
                     const SizedBox(
                       width: 10,
                     ),
                     Container(
                     decoration: BoxDecoration(
                        color: AhdColors.secondary,
                        borderRadius: BorderRadius.all(Radius.circular(4))
                     ),
                     child: IconButton(
                       color: AhdColors.secondary,
                       onPressed: () {

                       },
                       icon: Icon(Icons.more_horiz,color: AhdColors.white,),
                     ),
                   ),
                 ],
              )
          ),
        ],
      ),
    );
  }
  
  Widget headerTable(String title){
     return Container(
         color: AhdColors.secondary,
         alignment: Alignment.center,
         child: Text(
           title,
           style: Fonts().style6(fontColor: Colors.white),
         )
     );
  }

}


