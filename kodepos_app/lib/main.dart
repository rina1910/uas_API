import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(KodeposApp());

class KodeposApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodepos App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KodeposScreen(),
    );
  }
}

class KodeposScreen extends StatefulWidget {
  @override
  _KodeposScreenState createState() => _KodeposScreenState();
}

class _KodeposScreenState extends State<KodeposScreen> {
  List<dynamic> data = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    final response = await http.get(Uri.parse(
        'https://kodepos-2d475.firebaseio.com/kota_kab/k69.json?print=pretty'));

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
        isLoading = false;
      });
    } else {
      // Error handling
      setState(() {
        isLoading = false;
      });
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to fetch data.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kodepos App'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : DataTable(
              columns: [
                DataColumn(label: Text('Kecamatan')),
                DataColumn(label: Text('Kelurahan')),
                DataColumn(label: Text('Kodepos')),
              ],
              rows: data
                  .map(
                    (item) => DataRow(cells: [
                      DataCell(Text(item['kecamatan'])),
                      DataCell(Text(item['kelurahan'])),
                      DataCell(Text(item['kodepos'])),
                    ]),
                  )
                  .toList(),
            ),
    );
  }
}
