import 'package:disneyland_app/models/graph_model/graph_model.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/chart_widgets/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShiftChart extends StatelessWidget {
  final List<CharacterVotes> shift;
  const ShiftChart({super.key, required this.shift});

  @override
  Widget build(BuildContext context) {
    BarData data = BarData(
      data: shift,
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
            topTitles:
                AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: gettopTitles)),
            bottomTitles:
                AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getbottomTitles)),
          ),
          minY: 0,
          maxY: 10000,
          barGroups: data.barData
              .map((e) => BarChartGroupData(x: e.x, barRods: [
                    BarChartRodData(
                        toY: e.y.toDouble(),
                        color: primaryColor,
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
    final int index = value.toInt() % shift.length;
    const style = TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal);
    return SideTitleWidget(axisSide: meta.axisSide, child: Text(shift[index].character!, style: style));
  }

  //getting bottom widget
  Widget gettopTitles(double value, TitleMeta meta) {
    return SideTitleWidget(axisSide: meta.axisSide, child: const Text(''));
  }
}
