import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/AHD.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../model/order.dart';
import 'fonts.dart';


class OrderTable extends DataGridSource {
  OrderTable({required List<Order> order}) {
    _order = order;
    updateDataGridRows();
  }

  List<DataGridRow> dataGridRow = [];
  late List<Order> _order;

  void updateDataGridRows() {

    dataGridRow = _order
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<int>(columnName: 'id', value:e.id),
      DataGridCell<String>(columnName: 'name', value: e.name),
      DataGridCell<String>(columnName: 'date', value: e.date),
      DataGridCell<String>(columnName: 'status', value: e.status),
      DataGridCell<String>(columnName: 'total', value: e.total),
      DataGridCell<String>(columnName: 'datein', value: e.datein),
      DataGridCell<String>(columnName: 'discount', value: e.discount),
      DataGridCell<String>(columnName: '', value: '')
    ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRow;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {

          if(dataGridCell.columnName == ''){
            return Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AhdColors.secondary),
                ),
                onPressed: () {

                },
                child: Text(
                  "التفاصيل",
                  style: Fonts().style6(fontColor: Colors.white),
                ),
              ),
            );
          }else if(dataGridCell.columnName=='status'){
            return Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                },
                child: Text(
                  dataGridCell.value.toString(),
                  style: Fonts().style6(fontColor: Colors.white),
                ),
              ),
            );
          }
          else{
            return Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(dataGridCell.value.toString(),
                textAlign: TextAlign.center,
                style: AhdFonts.style5(
                  fontColor: dataGridCell.columnName == '' ? AhdColors.white:AhdColors.secondary,

                ),
              ),
            );
          }
        }).toList());
  }
}