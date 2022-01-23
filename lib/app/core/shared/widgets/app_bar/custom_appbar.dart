import 'package:avaliacao_checkmob/app/core/theme/stores/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:avaliacao_checkmob/app/core/tab/stores/tab_store.dart';
import 'package:avaliacao_checkmob/app/utils/enums/enum_app_tab.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool canGoBack;
  final String? title;
  const CustomAppBar({
    Key? key,
    this.canGoBack = false,
    this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    final _themeStore = Provider.of<ThemeStore>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Center(
          child: Row(
            children: [
              canGoBack
                  ? IconButton(
                      onPressed: Navigator.of(context).pop,
                      icon: const Icon(Icons.arrow_back_ios))
                  : const Icon(null),
              const SizedBox(width: 4),
              Expanded(
                child: Consumer<TabStore>(
                  builder: (_, store, __) {
                    final EnumAppTab appTab = store.value;
                    return Text(
                      title ?? appTab.title,
                      style: Theme.of(context).textTheme.headline6,
                    );
                  },
                ),
              ),
              InkWell(
                onTap: _themeStore.toggleTheme,
                child: _themeStore.isDark
                    ? Icon(
                        Icons.dark_mode,
                        color: Theme.of(context).iconTheme.color,
                      )
                    : Icon(
                        Icons.light_mode,
                        color: Theme.of(context).iconTheme.color,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
