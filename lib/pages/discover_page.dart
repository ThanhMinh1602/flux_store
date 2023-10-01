import 'package:flutter/material.dart';

import 'package:flux_store/resource/app_colors.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      children: const [
        SearchBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(Icons.search_outlined),
          ),
          hintText: 'Search',
          backgroundColor: MaterialStatePropertyAll(
            AppColor.h_FAFAFA,
          ),
        ),

        // Row(
        //   children: [
        //     Container(
        //       height: 46,
        //       width: double.infinity,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20.0),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.grey.withOpacity(0.5),
        //             spreadRadius: 0.0,
        //             blurRadius: 2.0,
        //             offset: const Offset(0, 3),
        //           ),
        //         ],
        //       ),
        //       child: TextFormField(
        //         decoration: InputDecoration(
        //           hintText: 'Search',
        //           prefixIcon: const Padding(
        //             padding: EdgeInsets.only(left: 28.0, right: 10.0),
        //             child: Icon(Icons.search),
        //           ),
        //           filled: true,
        //           fillColor: AppColor.h_FAFAFA,
        //           contentPadding: const EdgeInsets.symmetric(
        //               horizontal: 28.0, vertical: 13.0),
        //           border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(20.0),
        //               borderSide: BorderSide.none),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(12.0),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20.0),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.grey.withOpacity(0.5),
        //             spreadRadius: 0.0,
        //             blurRadius: 2.0,
        //             offset: const Offset(0, 3),
        //           ),
        //         ],
        //       ),
        //       child: Icon(Icons.abc),
        //     )
        //   ],
        // )
      ],
    );
  }
}
