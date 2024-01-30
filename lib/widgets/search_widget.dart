import 'package:disneyland_app/services/state_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:provider/provider.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var items = context.watch<SearchState>().getSearchList();
    return
        // Container(
        //     decoration: BoxDecoration(
        //       color: colorWhite,
        //       border: Border.all(color: const Color.fromARGB(255, 189, 185, 185), width: 0.2),
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
        //     child:
        TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
          onChanged: (value) {
            if (value.isEmpty) {
              //call serach stateservice items to show methos here
              //context.read<SearchState>().setItemsToShow(items);
            }
          },
          controller: searchController,
          textAlignVertical: const TextAlignVertical(y: 1.0),
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              hintText: 'Search here')),
      suggestionsCallback: (pattern) async {
        return pattern.isNotEmpty
            ? items.where((element) {
                return element.name.toLowerCase().contains(pattern.toLowerCase());
              }).toList()
            : [];
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(suggestion.imageUrl),
          ),
          title: Text(
            suggestion.name,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 2,
          ),
        );
      },
      onSuggestionSelected: (suggestion) {
        searchController.text = suggestion.name;
        context.read<SearchState>().setItemsToShow([suggestion]);
      },
      hideOnEmpty: true,
      hideOnError: true,
    );
  }
}
