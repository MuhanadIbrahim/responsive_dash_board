import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading:
                    IconButton(onPressed: () {
                        scaffoldkey.currentState!.openDrawer();

                    }, icon: const Icon(Icons.menu)),
              )
            : null,
        backgroundColor: const Color(0xfff7f9fa),
        drawer: MediaQuery.sizeOf(context).width < 800
            ? const CustomDrawer()
            : null,
        body: AdpativeLayoutWidget(
          mobileLayout: (context) => const DashBoardMobileLaout(),
          tabletLayout: (context) => const TabletDashBoardLayout(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
        ));
  }
}
