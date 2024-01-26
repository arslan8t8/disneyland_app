// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wardrobes/models/bar_models/bardata.dart';
// import 'package:wardrobes/models/dashboard_model/dashboard_model.dart';

// class MonthlyChart extends StatelessWidget {
//   final List<MonthlySale> monthlySale;
//   const MonthlyChart({super.key, required this.monthlySale});

//   @override
//   Widget build(BuildContext context) {
//     BarData data = BarData(
//       data: monthlySale,
//     );

//     return BarChart(
//       BarChartData(
//           borderData: FlBorderData(show: false),
//           gridData: FlGridData(
//             show: true,
//             drawHorizontalLine: true,
//             drawVerticalLine: false,
//             getDrawingHorizontalLine: (value) => FlLine(strokeWidth: 0.5, color: Colors.grey[350]!),
//           ),
//           titlesData: FlTitlesData(
//             show: true,
//             rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//             topTitles:
//                 AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: gettopTitles)),
//             bottomTitles:
//                 AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getbottomTitles)),
//           ),
//           minY: 0,
//           maxY: 30000,
//           barGroups: data.barData
//               .map((e) => BarChartGroupData(x: e.x, barRods: [
//                     BarChartRodData(
//                         toY: e.y.toDouble(),
//                         color: e.x % 2 == 0
//                             ? const Color.fromRGBO(255, 153, 164, 1)
//                             : const Color.fromRGBO(100, 214, 205, 1),
//                         width: 20.w,
//                         //circular border for top only
//                         borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(6), topRight: Radius.circular(6)))
//                   ]))
//               .toList()),
//     );
//   }

// //getting bottom widget
//   Widget getbottomTitles(double value, TitleMeta meta) {
//     final int index = value.toInt() % monthlySale.length;
//     const style = TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal);
//     return SideTitleWidget(axisSide: meta.axisSide, child: Text(monthlySale[index].month, style: style));
//   }

//   //getting bottom widget
//   Widget gettopTitles(double value, TitleMeta meta) {
//     return SideTitleWidget(axisSide: meta.axisSide, child: const Text(''));
//   }
// }
