import 'package:avaliacao_checkmob/app/core/shared/widgets/navigation_bar/widgets/navigation_bar_container.dart';
import 'package:avaliacao_checkmob/app/core/shared/widgets/navigation_bar/widgets/navigation_bar_items.dart';
import 'package:avaliacao_checkmob/app/utils/enums/enum_app_tab.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final void Function(int) onTap;
  const CustomNavigationBar({required this.onTap});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  void _onTap(int value) {
    widget.onTap(value);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Item(
              onTap: () => _onTap(0),
              title: EnumAppTab.home.title,
              iconData: Icons.list,
              value: EnumAppTab.home,
            ),
            const NavigationContainer(),
            Item(
              onTap: () => _onTap(2),
              title: EnumAppTab.historic.title,
              iconData: Icons.history,
              value: EnumAppTab.historic,
            ),
          ],
        ),
      ),
    );
  }
}
