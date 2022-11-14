import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttermvc/controller/apicontroller.dart';
import 'package:fluttermvc/model/modeldata.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApiService _apiService = ApiService();
  CryptoModel _cryptoModel = CryptoModel();


  Future<void> getApiData() async {
    final http.Response response = await _apiService.getProductAll();
    var _productalljson = json.decode(response.body);
   setState(() {
     _cryptoModel = CryptoModel.fromJson(_productalljson);
   });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _cryptoModel.openTrades.toString() != "null" ? Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Expanded(
          child: ListView.builder(
          itemCount: _cryptoModel.openTrades!.length,
              itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Text("${_cryptoModel.symbol}"),
                trailing: Text("${_cryptoModel.openTrades![index].c}",
                  style: const TextStyle(
                      color: Colors.green,fontSize: 15),),
                title:Text("${_cryptoModel.openTrades![index].i}")
            );
              }

          ),
        ),
          ],
        ) : const CircularProgressIndicator(),
      ),

    );
  }
}
