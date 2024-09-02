import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trinity/core/deck.dart';



class TrinityCard extends StatelessWidget {
  const TrinityCard({
    super.key,
    required this.card,
    required this.width,
    required this.heigth,
    required this.titleFontSize,
    required this.valueFontSize,
    required this.descriptionFontSize,
    required this.iconSize,
  });

  final Deck card;

  final double width;
  final double heigth;
  final double titleFontSize;
  final double valueFontSize;
  final double descriptionFontSize;
  final double iconSize;
  // final String cardImageAsset; TODO

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            _CardSubtitle(value: card.value, type: card.suitType, iconSize: iconSize),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _CardTitle(title: card.title, titleFontSize: titleFontSize),
                // CardImage(cardImageAsset),
                const Spacer(flex: 10),
                _CardValue(
                  value: card.value,
                  suit: card.suitType,
                  valueFontSize: valueFontSize,
                ),
                const SizedBox(height: 4),
                _CardDescription(
                  description: card.description,
                  descriptionFontSize: descriptionFontSize,
                ),
                const Spacer(),
                _CardLevel(
                  type: card.levelType,
                  descriptionFontSize: descriptionFontSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle({required this.title, required this.titleFontSize});

  final String title;
  final double titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: titleFontSize,
      ),
    );
  }
}

class _CardSubtitle extends StatelessWidget {
  const _CardSubtitle(
      {required this.value, required this.type, required this.iconSize});

  final int value;
  final CardSuitType type;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          for (int index = 0; index < value; index++)
            SvgPicture.asset(
              'assets/icons/${type.name}.svg',
              fit: BoxFit.cover,
              width: iconSize,
              height: iconSize,
            ),
        ],
      ),
    );
  }
}

class _CardValue extends StatelessWidget {
  const _CardValue({
    required this.value,
    required this.suit,
    required this.valueFontSize,
  });

  final int value;
  final CardSuitType suit;
  final double valueFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: valueFontSize,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/${suit.name}.svg',
          fit: BoxFit.cover,
          width: valueFontSize,
          height: valueFontSize,
        ),
      ],
    );
  }
}

class _CardDescription extends StatelessWidget {
  const _CardDescription({
    required this.description,
    required this.descriptionFontSize,
  });

  final String description;
  final double descriptionFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: descriptionFontSize,
      ),
    );
  }
}

class _CardLevel extends StatelessWidget {
  const _CardLevel({
    required this.type,
    required this.descriptionFontSize,
  });

  final CardLevelType type;
  final double descriptionFontSize;

  @override
  Widget build(BuildContext context) {
    return _LevelStarsRow(
      type: type,
      descriptionFontSize: descriptionFontSize,
    );
  }
}

class _LevelStarsRow extends StatelessWidget {
  const _LevelStarsRow({
    required this.type,
    required this.descriptionFontSize,
  });

  final CardLevelType type;
  final double descriptionFontSize;

  @override
  Widget build(BuildContext context) {
    final levelStar = SvgPicture.asset(
      'assets/icons/level.svg',
      fit: BoxFit.cover,
      width: descriptionFontSize,
      height: descriptionFontSize,
    );

    switch (type) {
      case CardLevelType.first:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [levelStar],
        );
      case CardLevelType.second:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [levelStar, levelStar],
        );
      case CardLevelType.third:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [levelStar, levelStar, levelStar],
        );
    }
  }
}
