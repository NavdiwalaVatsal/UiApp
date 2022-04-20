import 'package:demo_ui_app/screen/events_view.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({ Key? key }) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int pageIndex = 0;

  final pages = [
    const Text(""),
    const EventsView(),
    const Text(""),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Color(0xff2E2739),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    icon: pageIndex == 0
                        ? Icon(
                            Icons.dashboard_rounded,
                            color: Colors.white,
                            size: 25,
                          )
                        : Icon(
                            Icons.dashboard_rounded,
                            color: Color(0xff827D88),
                            size: 25,
                          ),
                  ),
                  if (pageIndex == 0)
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (pageIndex != 0)
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Color(0xff827D88),
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    icon: pageIndex == 1
                        ? Icon(
                            Icons.video_collection_rounded,
                            color: Colors.white,
                            size: 25,
                          )
                        : Icon(
                            Icons.video_collection_outlined,
                            color: Color(0xff827D88),
                            size: 25,
                          ),
                  ),
                  if (pageIndex == 1)
                    Text(
                      "Watch",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (pageIndex != 1)
                    Text(
                      "Watch",
                      style: TextStyle(
                        color: Color(0xff827D88),
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    enableFeedback: false,
                    onPressed: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    icon: pageIndex == 2
                        ? const Icon(
                            Icons.auto_awesome_motion,
                            color: Colors.white,
                            size: 25,
                          )
                        : const Icon(
                            Icons.auto_awesome_motion_outlined,
                            color: Color(0xff827D88),
                            size: 25,
                          ),
                  ),
                  if (pageIndex == 2)
                    Text(
                      "Media Library",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (pageIndex != 2)
                    Text(
                      "Media Library",
                      style: TextStyle(
                        color: Color(0xff827D88),
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}