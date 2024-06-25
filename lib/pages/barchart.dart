import 'package:fl_chart/fl_chart.dart'as barchart;
import 'package:flutter/material.dart';
 Widget chartToRun() {
  LabelLayoutStrategy? xContainerLabelLayoutStrategy;
  ChartData chartData;
  ChartOptions chartOptions = const ChartOptions();
  // Example shows how to create ChartOptions instance
  //   which will request to start Y axis at data minimum.
  // Even though startYAxisAtDataMinRequested is set to true, this will not be granted on bar chart,
  //   as it does not make sense there.
  chartOptions = const ChartOptions(
    dataContainerOptions: DataContainerOptions(
      startYAxisAtDataMinRequested: true,
    ),
  );
  chartData = ChartData(
    dataRows: const [
      [20.0, 25.0, 30.0, 35.0, 40.0, 20.0],
      [35.0, 40.0, 20.0, 25.0, 30.0, 20.0],
    ],
    xUserLabels: const ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    dataRowsLegends: const [
      'Off zero 1',
      'Off zero 2',
    ],
    chartOptions: chartOptions,
  );
  var lineChartContainer = LineChartTopContainer(
    chartData: chartData,
    xContainerLabelLayoutStrategy: xContainerLabelLayoutStrategy,
  );

  var lineChart = LineChart(
    painter: LineChartPainter(
      lineChartContainer: lineChartContainer,
    ),
  );
  return lineChart;
}