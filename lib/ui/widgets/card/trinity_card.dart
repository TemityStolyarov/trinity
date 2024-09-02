import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CardLevelType { first, second, third }

enum CardSuitType { beast, folk, yard, curse, trophy }

class TrinityCard extends StatelessWidget {
  const TrinityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.value,
    required this.suitType,
    required this.levelType,
  });

  final String title;
  final String subtitle;
  final String description;
  final int value;

  final CardSuitType suitType;
  final CardLevelType levelType;
  // final String cardImageAsset; TODO

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 320,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _CardTitle(title),
            // _CardSubtitle(subtitle),
            // CardImage(cardImageAsset),
            const Spacer(flex: 10),
            _CardValue(
              value: value,
              suit: suitType,
            ),
            const SizedBox(height: 4),
            _CardDescription(description),
            const Spacer(),
            _CardLevel(levelType),
          ],
        ),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }
}

// class _CardSubtitle extends StatelessWidget {
//   const _CardSubtitle(this.subtitle);

//   final String subtitle;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(subtitle),
//       ],
//     );
//   }
// }

class _CardValue extends StatelessWidget {
  const _CardValue({
    required this.value,
    required this.suit,
  });

  final int value;
  final CardSuitType suit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/${suit.name}.svg',
          fit: BoxFit.cover,
          width: 22,
          height: 22,
        ),
      ],
    );
  }
}

class _CardDescription extends StatelessWidget {
  const _CardDescription(this.description);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}

class _CardLevel extends StatelessWidget {
  const _CardLevel(this.type);

  final CardLevelType type;

  @override
  Widget build(BuildContext context) {
    return _LevelStarsRow(type: type);
  }
}

class _LevelStarsRow extends StatelessWidget {
  const _LevelStarsRow({required this.type});

  final CardLevelType type;

  @override
  Widget build(BuildContext context) {
    final levelStar = SvgPicture.asset(
      'assets/icons/level.svg',
      fit: BoxFit.cover,
      width: 12,
      height: 12,
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
