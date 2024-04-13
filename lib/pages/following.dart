import 'package:flutter/material.dart';
import 'package:pardhu_main/pages/tab_item.dart';


class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Potfoliator',
              style: TextStyle(
                fontFamily: 'quicksand',
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRect(
                //borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   //change this eventually
                   color: Colors.green,
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    TabItem(title: 'Following', count: 6),
                    TabItem(title: 'Followers', count: 6),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
