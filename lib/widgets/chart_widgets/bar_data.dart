import 'package:disneyland_app/models/graph_model/graph_model.dart';

class IndivisualBar {
  final int x;
  final double y;

  IndivisualBar(this.x, this.y);
}

class BarData {
  final List data;

  BarData({
    required this.data,
  });

  List<IndivisualBar> get barData {
    return data
        .asMap()
        .entries
        .map((entry) => IndivisualBar(entry.key, entry.value.votes!.toDouble()))
        .toList();
  }
}

// class IndivisualBarCharacter {
//   final String x;
//   final double y;

//   IndivisualBarCharacter(this.x, this.y);
// }

// class BarDataCharacter {
//   final List data;

//   BarDataCharacter({
//     required this.data,
//   });

//   List<IndivisualBarCharacter> get barData {
//     return data
//         .asMap()
//         .entries
//         .map((entry) => IndivisualBarCharacter(entry.key.toString(), entry.value.votes!.toDouble()))
//         .toList();
//   }
// }
