import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable with Pagination'),
        ),
        body: MyDataTable(),
      ),
    );
  }
}

class MyDataTable extends StatefulWidget {
  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  final int totalItems = 23;
  final int itemsPerPage = 10;
  int currentPage = 0;

  int get totalPages => (totalItems / itemsPerPage).ceil();

  void goToFirstPage() {
    setState(() {
      currentPage = 0;
    });
  }

  void goToPreviousPage() {
    setState(() {
      if (currentPage > 0) currentPage--;
    });
  }

  void goToNextPage() {
    setState(() {
      if (currentPage < totalPages - 1) currentPage++;
    });
  }

  void goToLastPage() {
    setState(() {
      currentPage = totalPages - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    int startItemIndex = currentPage * itemsPerPage + 1;
    int endItemIndex = (currentPage + 1) * itemsPerPage;
    if (endItemIndex > totalItems) endItemIndex = totalItems;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Index')),
                DataColumn(label: Text('Value')),
              ],
              rows: List.generate(
                itemsPerPage,
                (index) {
                  int itemIndex = currentPage * itemsPerPage + index;
                  if (itemIndex >= totalItems) return null;
                  return DataRow(
                    cells: [
                      DataCell(Text('${itemIndex + 1}')),
                      DataCell(
                          Text('ValueValueValueValueValue ${itemIndex + 1}')),
                    ],
                  );
                },
              ).where((row) => row != null).toList().cast<DataRow>(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.first_page),
                onPressed: goToFirstPage,
              ),
              IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: goToPreviousPage,
              ),
              Text('$startItemIndex-$endItemIndex / $totalItems'),
              IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: goToNextPage,
              ),
              IconButton(
                icon: Icon(Icons.last_page),
                onPressed: goToLastPage,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
