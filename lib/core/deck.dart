enum CardLevelType { first, second, third }

enum CardSuitType { beast, folk, yard, curse, trophy }

enum Deck {
  // шаблон:
  // '',
  // '',
  // 0,
  // CardSuitType. ,
  // CardLevelType. ,
  //
  // СКОТ
  volk(
    'Волк',
    'Сбрось любую карту Скота из Двора врага',
    1,
    CardSuitType.beast,
    CardLevelType.second,
  ),
  edinorog(
    'Единорог',
    'Восстанови любую карту из Помойной ямы на свой Двор; дает дополнительно 1Л или 1Г на выбор',
    2,
    CardSuitType.beast,
    CardLevelType.third,
  ),
  grifon(
    'Грифон',
    'Один раз защищает любую карту от сброса; когда на свой Двор выкладывается Люд, возьми карту из Истока',
    2,
    CardSuitType.beast,
    CardLevelType.third,
  ),
  dragon(
    'Дракон',
    'Сбрось две карты Град со Двора врага на выбор; возьми одну карту Люд и одну карту Скот из Помойной ямы',
    3,
    CardSuitType.beast,
    CardLevelType.third,
  );
  // ЛЮД

  // ДВОР

  const Deck(
    this.title,
    this.description,
    this.value,
    this.suitType,
    this.levelType,
  );

  final String title;
  final String description;
  final int value;

  final CardSuitType suitType;
  final CardLevelType levelType;
}
