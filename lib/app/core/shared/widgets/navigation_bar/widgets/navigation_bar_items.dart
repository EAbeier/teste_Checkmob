import 'package:avaliacao_checkmob/app/core/tab/stores/tab_store.dart';
import 'package:avaliacao_checkmob/app/utils/enums/enum_app_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final IconData? iconData;
  final EnumAppTab value;
  const Item({
    Key? key,
    required this.onTap,
    required this.title,
    this.iconData,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Consumer<TabStore>(
            builder: (_, store, __) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: store.value == value
                      ? Theme.of(context).cardColor
                      : Theme.of(context).scaffoldBackgroundColor,
                ),
                width: 40,
                height: 40,
                child: Center(
                  child: Icon(
                    iconData,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
