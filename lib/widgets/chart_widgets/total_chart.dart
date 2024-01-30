import 'package:disneyland_app/models/graph_model/graph_model.dart';
import 'package:disneyland_app/widgets/chart_widgets/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalChart extends StatelessWidget {
  final List<DailyVotes> dailyvotes;
  TotalChart({super.key, required this.dailyvotes});

  @override
  Widget build(BuildContext context) {
    BarData data = BarData(
      data: dailyvotes,
    );

    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) => FlLine(strokeWidth: 0.5, color: Colors.grey[350]!),
          ),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles:
                AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getbottomTitles)),
          ),
          minY: 0,
          maxY: 1050,
          barGroups: data.barData
              .map((e) => BarChartGroupData(x: e.x, barRods: [
                    BarChartRodData(
                        toY: e.y.toDouble(),
                        color: const Color.fromRGBO(255, 153, 164, 1),
                        width: 20.w,
                        //circular border for top only
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6), topRight: Radius.circular(6)))
                  ]))
              .toList()),
    );
  }

//getting bottom widget
  Widget getbottomTitles(double value, TitleMeta meta) {
    final int index = value.toInt() % dailyvotes.length;
    const style = TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal);
    return SideTitleWidget(
        axisSide: meta.axisSide, child: Text(dailyvotes[index].day.toString(), style: style));
  }
}
