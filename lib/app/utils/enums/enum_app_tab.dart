enum EnumAppTab { home, historic }

extension EnumGetter on EnumAppTab {
  String get title {
    switch (this) {
      case EnumAppTab.home:
        return "Questionários";
      case EnumAppTab.historic:
        return "Historico";
    }
  }
}
