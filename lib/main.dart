import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Role")),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text("Emon")),
                DataCell(Text("25")),
                DataCell(Text("Student")),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text("Emon")),
                DataCell(Text("25")),
                DataCell(Text("Student")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
