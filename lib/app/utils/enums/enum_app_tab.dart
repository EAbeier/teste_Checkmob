enum EnumAppTab { home, historic }

extension EnumGetter on EnumAppTab {
  String get title {
    switch (this) {
      case EnumAppTab.home:
        return "QuestionĂ¡rios";
      case EnumAppTab.historic:
        return "Historico";
    }
  }
}
