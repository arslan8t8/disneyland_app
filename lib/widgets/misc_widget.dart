import 'package:disneyland_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> toastWidget({required String message}) async {
  return await Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: const Color.fromARGB(255, 242, 240, 240),
    textColor: const Color.fromARGB(255, 4, 0, 0),
    fontSize: 16.0,
  );
}

Widget loadingWidget() {
  return const Center(
    child: SizedBox(
      width: 30,
      height: 30,
      child: CircularProgressIndicator(
        color: color4,
      ),
    ),
  );
}



   // Container(
                        //     decoration: BoxDecoration(
                        //       color: colorWhite,
                        //       border: Border.all(
                        //           color: const Color.fromARGB(255, 189, 185, 185), width: 0.2),
                        //       borderRadius: BorderRadius.circular(10.0),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           offset: const Offset(0, 4),
                        //           blurRadius: 15,
                        //           color: colorBlack.withOpacity(0.10),
                        //         ),
                        //       ],
                        //     ),
                        //     width: 265.w,
                        //     height: 50.h,
                        //     child: Center(
                        //       child: TypeAheadField(
                        //           textFieldConfiguration: TextFieldConfiguration(
                        //               onChanged: (value) {
                        //                 if (value.isEmpty) {
                        //                   setState(() {
                        //                     itemsToshow = items!.data.items;
                        //                   });
                        //                 }
                        //               },
                        //               controller: searchController,
                        //               textAlignVertical: const TextAlignVertical(y: 1.0),
                        //               decoration: const InputDecoration(
                        //                   prefixIcon: Icon(Icons.search),
                        //                   border: OutlineInputBorder(
                        //                     borderRadius: BorderRadius.all(
                        //                       Radius.circular(10.0),
                        //                     ),
                        //                   ),
                        //                   hintText: 'Search here')),
                        //           suggestionsCallback: (pattern) async {
                        //             return pattern.isNotEmpty
                        //                 ? items!.data.items.where((element) {
                        //                     return element.item!.itemDescription!
                        //                         .toLowerCase()
                        //                         .contains(pattern.toLowerCase());
                        //                   }).toList()
                        //                 : [];
                        //           },
                        //           itemBuilder: (context, suggestion) {
                        //             return ListTile(
                        //                 leading: CircleAvatar(
                        //                   backgroundImage: NetworkImage(suggestion.item!.thumbnail!),
                        //                 ),
                        //                 title: Text(
                        //                   suggestion.item!.itemDescription!,
                        //                   overflow: TextOverflow.ellipsis,
                        //                   softWrap: true,
                        //                   maxLines: 2,
                        //                 ),
                        //                 subtitle: Text(suggestion.category!.categoryName!),
                        //                 trailing:
                        //                     Text('AED: ${suggestion.item!.sellingPrice!.toString()}'));
                        //           },
                        //           onSuggestionSelected: (suggestion) {
                        //             setState(() {
                        //               searchController.text = suggestion.item!.itemDescription!;
                        //               itemsToshow = [suggestion];
                        //             });
                        //           },
                        //           hideOnEmpty: true,
                        //           hideOnError: true,
                        //           noItemsFoundBuilder: (context) => ListTile(
                        //                 title: const Text('No items found'),
                        //                 trailing: const Icon(Icons.cancel),
                        //                 onTap: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //               )),
                        //     )),