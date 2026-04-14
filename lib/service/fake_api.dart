class FakeApi {
  Future<List<String>> fechApi() async {
    await Future.delayed(Duration(seconds: 2));

    final List<String> fatos = [
      "Polvos têm três corações.",
      "Bananas são levemente radioativas.",
      "Gatos não sentem gosto doce.",
      "Tubarões existiam antes das árvores.",
      "Abelhas podem reconhecer rostos humanos.",
      "O polvo pode abrir potes com tampa.",
      "O mel nunca estraga.",
      "Cavalos não conseguem vomitar.",
      "O cérebro humano gera eletricidade suficiente pra acender uma lâmpada.",
      "Pinguins pedem pedras como presente.",
    ];

    return fatos;
  }
}
