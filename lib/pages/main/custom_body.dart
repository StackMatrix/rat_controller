import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pluto_layout/pluto_layout.dart';

import '/app/controllers/controllers.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late MainController mainController = Get.find<MainController>();

    return const ExamplePage();
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  late MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return PlutoLayout(
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.escape):
        PlutoLayoutActions.hideAllTabView(),
        LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.digit1):
        PlutoLayoutActions.rotateTabView(
          PlutoLayoutId.left,
        ),
        LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.digit2):
        PlutoLayoutActions.rotateTabView(
          PlutoLayoutId.right,
        ),
        LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowUp):
        PlutoLayoutActions.increaseTabView(),
        LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowDown):
        PlutoLayoutActions.decreaseTabView(),
      },
      body: PlutoLayoutContainer(
        child: Text(mainController.mainState.textString),
      ),
      top: PlutoLayoutContainer(
        child: PlutoLayoutTabs(
          mode: PlutoLayoutTabMode.showOne,
          draggable: true,
          items: [
            PlutoLayoutTabItem(
              id: '主机',
              title: '主页',
              showRemoveButton: true,
            ),
            PlutoLayoutTabItem(
              id: 'top2',
              title: '个人',
              showRemoveButton: true,
            ),
          ],
        ),
      ),
      // left: PlutoLayoutContainer(
      //   child: PlutoLayoutTabs(
      //     items: [
      //       PlutoLayoutTabItem(
      //         id: 'left1',
      //         title: 'left1',
      //         tabViewWidget: const Text('left1'),
      //       ),
      //       PlutoLayoutTabItem(
      //         id: 'left2',
      //         title: 'left2',
      //         tabViewWidget: const Text('left2'),
      //       ),
      //     ],
      //   ),
      // ),
      // right: PlutoLayoutContainer(
      //   child: PlutoLayoutTabs(
      //     items: [
      //       PlutoLayoutTabItem(
      //         id: 'right1',
      //         title: 'right1',
      //         tabViewWidget: const Text('right1'),
      //       ),
      //       PlutoLayoutTabItem(
      //         id: 'right2',
      //         title: 'right2',
      //         tabViewWidget: const Text('right2'),
      //       ),
      //     ],
      //   ),
      // ),
      bottom: PlutoLayoutContainer(
        child: PlutoLayoutTabs(
          items: [
            PlutoLayoutTabItem(
              id: 'bottom1',
              title: 'bottom1',
              tabViewWidget: const Text('bottom1'),
            ),
            PlutoLayoutTabItem(
              id: 'bottom2',
              title: 'bottom2',
              tabViewWidget: const Text('bottom2'),
            ),
          ],
        ),
      ),
    );
  }
}