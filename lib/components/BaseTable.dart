import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/AHD.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/statistics.dart';

class BaseTable extends DataGridSource {
  BaseTable({required List<Statistics> statistics}) {
    _statistics = statistics;
    updateDataGridRows();
  }

  List<DataGridRow> dataGridRow = [];
  late List<Statistics> _statistics;

  void updateDataGridRows() {

    dataGridRow = _statistics
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: '', value:e.filed),
      DataGridCell<String>(columnName: 'successOrder', value: e.successOrder),
      DataGridCell<String>(columnName: 'failOrder', value: e.failOrder),
      DataGridCell<String>(
          columnName: 'totalPrice', value: e.totalPrice),
      DataGridCell<String>(columnName: 'totalOrder', value: e.totalOrder),
    ]))
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRow;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
          Color? columnBackgroundColor;
          if (dataGridCell.columnName == '') {
            columnBackgroundColor = AhdColors.secondary;

          } else {
            columnBackgroundColor = Colors.transparent;
          }
          return Container(
            alignment: Alignment.center,
            color: columnBackgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(dataGridCell.value.toString(),
              textAlign: TextAlign.center,
              style: AhdFonts.style6(
                  fontColor: dataGridCell.columnName == '' ? AhdColors.white:AhdColors.secondary,

              ),
            ),
          );
        }).toList());
  }
}
