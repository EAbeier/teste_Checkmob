import 'package:avaliacao_checkmob/app/core/shared/widgets/app_bar/custom_appbar.dart';
import 'package:avaliacao_checkmob/app/core/tab/stores/tab_store.dart';
import 'package:avaliacao_checkmob/app/modules/historic/presenter/pages/historic.dart';
import 'package:avaliacao_checkmob/app/modules/questionnaire/presenter/pages/questionnaire.dart';
import 'package:avaliacao_checkmob/app/utils/enums/enum_app_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/shared/widgets/navigation_bar/custom_navigationbar.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: PageView(
        onPageChanged: (index) {
          final value = EnumAppTab.values[index];
          Provider.of<TabStore>(context, listen: false).changeTab(value);
        },
        controller: controller,
        children: const [
          Questionnaire(),
          Historic(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) {
          controller.animateToPage(index,
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}
