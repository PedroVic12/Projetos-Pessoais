// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    var data = [
      TaxaAumentoAltura(
          '0', 0, charts.ColorUtil.fromDartColor(Colors.blue[300]!)),
      TaxaAumentoAltura(
          '1', 1, charts.ColorUtil.fromDartColor(Colors.green[300]!)),
      TaxaAumentoAltura(
          '2', 2, charts.ColorUtil.fromDartColor(Colors.red[300]!)),
      TaxaAumentoAltura(
          '3', 3, charts.ColorUtil.fromDartColor(Colors.yellow[300]!)),
      TaxaAumentoAltura('4', 4, charts.ColorUtil.fromDartColor(Colors.black)),
      TaxaAumentoAltura(
          '5', 5, charts.ColorUtil.fromDartColor(Colors.purple[300]!)),
    ];

    var series = [
      charts.Series(
        id: 'Taxa de Aumento da Altura',
        data: data,
        domainFn: (TaxaAumentoAltura sales, _) => sales.altura,
        measureFn: (TaxaAumentoAltura sales, _) => sales.taxa,
        colorFn: (TaxaAumentoAltura sales, _) => sales.barColor,
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Taxa de aumento da altura do líquido'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: chart,
      ),
    );
  }
}

class TaxaAumentoAltura {
  final String altura;
  final int taxa;
  charts.Color barColor;

  TaxaAumentoAltura(
    this.altura,
    this.taxa,
    this.barColor,
  ) {
    barColor = charts.ColorUtil.fromDartColor(Colors.blue[300]!);
  }
}
