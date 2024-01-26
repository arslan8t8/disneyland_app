// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:wardrobes/models/bar_models/bardata.dart';
// import 'package:wardrobes/models/dashboard_model/dashboard_model.dart';

// class YearlyChart extends StatelessWidget {
//   final List<YearlySale> yeartoYearsale;
//   const YearlyChart({super.key, required this.yeartoYearsale});

//   @override
//   Widget build(BuildContext context) {
//     List<Color> colors = [
//       const Color.fromRGBO(255, 153, 164, 1),
//       const Color.fromRGBO(100, 214, 205, 1),
//       const Color(0xFFE80054),
//       const Color(0xFFFF3AF2),
//       const Color(0xFF6E1BFF),
//       const Color(0xFF3BFF49),
//       const Color(0xFF2196F3),
//       const Color(0xFFFFC300)
//     ];

//     return LineChart(
//       LineChartData(
//         borderData: FlBorderData(show: false),
//         gridData: FlGridData(
//           show: true,
//           drawHorizontalLine: true,
//           drawVerticalLine: false,
//           getDrawingHorizontalLine: (value) => FlLine(strokeWidth: 0.5, color: Colors.grey[350]!),
//         ),
//         titlesData: FlTitlesData(
//           show: true,
//           rightTitles:
//               AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: gettopTitles)),
//           topTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: gettopTitles)),
//           bottomTitles:
//               AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getbottomTitles)),
//         ),
//         minY: 0,
//         maxY: 30000,
//         lineBarsData: yeartoYearsale.asMap().entries.map((e) {
//           final yearColor = colors[e.key % colors.length];
//           return LineChartBarData(
//             spots: e.value.months
//                 .asMap()
//                 .entries
//                 .map((e) => FlSpot(e.key.toDouble(), e.value.amount.toDouble()))
//                 .toList(),
//             isCurved: true,
//             color: yearColor,
//             barWidth: 3.h,
//             isStrokeCapRound: true,
//             dotData: const FlDotData(show: true),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   Widget getbottomTitles(double value, TitleMeta meta) {
//     // Specify the number of data points in a month
//     const dataPointsPerMonth = 1; // Adjust as needed

//     // Calculate the month index based on the value
//     final monthIndex = (value / dataPointsPerMonth).floor();

//     // List of month names
//     final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

//     // Check if this label should display a month name
//     final shouldDisplayMonth = value == 0 || (value % dataPointsPerMonth == 0);

//     if (shouldDisplayMonth) {
//       final monthName = months[monthIndex % months.length];
//       return Text(monthName,
//           style: const TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal));
//     } else {
//       return const SizedBox(width: 0); // Display an empty space for other labels
//     }
//   }

//   //getting bottom widget
//   Widget gettopTitles(double value, TitleMeta meta) {
//     return SideTitleWidget(axisSide: meta.axisSide, child: const Text(''));
//   }
// }
