enum CardLevelType { first, second, third }

enum CardSuitType { beast, folk, yard, curse, trophy }

enum Deck {
  // ============== СКОТ ==============

  /// Свинья - Возьми верхнюю карту из Помойной ямы
  pig(
    title: 'Свинья',
    description: 'Возьми верхнюю карту из Помойной ямы',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.first,
  ),

  /// Корова - Возьми верхнюю карту из Истока
  cow(
    title: 'Корова',
    description: 'Возьми верхнюю карту из Истока',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.first,
  ),

  /// Овца - Перемести одну верхнюю карту Скота из Помойной ямы на свой Двор
  sheep(
    title: 'Овца',
    description:
        'Перемести одну верхнюю карту Скота из Помойной ямы на свой Двор',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.first,
  ),
  hound(
    title: 'Гончая',
    description: 'Сбрось карту из руки и возьми две верхние карты из Истока',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.first,
  ),

  /// Козел - Ничего ИЛИ сбрось Козла и перемести любого Люда со Двора врага на свой Двор
  goat(
    title: 'Козел',
    description:
        'Ничего ИЛИ сбрось Козла и перемести любого Люда со Двора врага на свой Двор',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.second,
  ),

  /// Гусь - Уменьшает стоимость строительства Города на один Град
  goose(
    title: 'Гусь',
    description: 'Уменьшает стоимость строительства Города на один Град',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.second,
  ),

  /// Пчела - Посмотри три верхние карты Истока, возьми один любой Град, если среди них есть такая карта
  bee(
    title: 'Пчела',
    description:
        'Посмотри три верхние карты Истока, возьми один любой Град, если среди них есть такая карта',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.second,
  ),

  /// Волк - Сбрось любой Скот со Двора врага
  wolf(
    title: 'Волк',
    description: 'Сбрось любой Скот со Двора врага',
    value: 1,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.second,
  ),

  /// Единорог - Восстанови любую карту из Помойной ямы на свой Двор И дает дополнительно 1Л или 1Г на выбор
  unicorn(
    title: 'Единорог',
    description:
        'Восстанови любую карту из Помойной ямы на свой Двор И дает дополнительно 1Л или 1Г на выбор',
    value: 2,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.third,
  ),

  /// Грифон - Один раз защищает любую карту от сброса И пока Грифон на Дворе, бери одну карту из Истока каждый раз, когда выкладываешь Люда
  griffon(
    title: 'Грифон',
    description:
        'Один раз защищает любую карту от сброса И пока Грифон на Дворе, бери одну карту из Истока каждый раз, когда выкладываешь Люда',
    value: 2,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.third,
  ),

  /// Дракон - Сбрось две карты Град на выбор со Двора врага И возьми одну верхнюю карту Люд и одну верхнюю карту Скот из Помойной ямы
  dragon(
    title: 'Дракон',
    description:
        'Сбрось две карты Град на выбор со Двора врага И возьми одну верхнюю карту Люд и одну верхнюю карту Скот из Помойной ямы',
    value: 3,
    suitType: CardSuitType.beast,
    levelType: CardLevelType.third,
  );

  // ============== ЛЮД ==============

  // ГРАД

  // шаблон:
  // (title: '',
  // description: '',
  // value: 0,
  // suitType: CardSuitType. ,
  // levelType: CardLevelType. ,),

  const Deck({
    required this.title,
    required this.description,
    required this.value,
    required this.suitType,
    required this.levelType,
  });

  final String title;
  final String description;
  final int value;

  final CardSuitType suitType;
  final CardLevelType levelType;
}
