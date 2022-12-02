import 'package:dev_dtd/components/menu.dart';
import 'package:grid_staggered_lite/grid_staggered_lite.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:dev_dtd/models/planet_model.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SolarSystem extends StatelessWidget {
  // Widget get _animatedStars {
  //   return Lottie.asset('images/animations/stars.json');
  // }

  @override
  Widget build(BuildContext context) {
    const _planets = PlanetName.values;
    return LayoutBuilder(builder: (context, constraints) {
      final size = Size(constraints.maxWidth, constraints.maxHeight);
      final Orientation orientation = MediaQuery.of(context).orientation;

      final double cellSize = size.width / 4;

      final spaceLeft = orientation == Orientation.landscape
          ? (size.height - (2 * cellSize))
          : (size.height - (6 * cellSize));
      final double mainAxisPadding =
          orientation == Orientation.landscape ? spaceLeft / 2 : spaceLeft / 6;

      final double crossAxisPadding = spaceLeft < 0
          ? (orientation == Orientation.landscape
              ? spaceLeft.abs()
              : (4 * spaceLeft.abs() / 6) / 2)
          : 0;

      final List<StaggeredTile> _portraitTilesLayout = [
        const StaggeredTile.count(3, 1),
        const StaggeredTile.count(1, 2),
        const StaggeredTile.count(1, 2),
        const StaggeredTile.count(2, 2),
        const StaggeredTile.count(2, 1),
        const StaggeredTile.count(2, 2),
        const StaggeredTile.count(2, 2),
        const StaggeredTile.count(2, 1),
      ];

      final List<StaggeredTile> _landscapeTilesLayout = [
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
        const StaggeredTile.count(1, 1),
      ];
      return Container(
        alignment: Alignment.center,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/stars_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // _animatedStars,
            StaggeredGridView.count(
              crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: mainAxisPadding > 0 ? mainAxisPadding : 0,
              padding: EdgeInsets.symmetric(horizontal: crossAxisPadding),
              staggeredTiles: orientation == Orientation.landscape
                  ? _landscapeTilesLayout
                  : _portraitTilesLayout,
              children: List.generate(
                  _planets.length, (index) => _PlanetCard(_planets[index])),
            ),
          ],
        ),
      );
    });
  }
}

class _PlanetCard extends StatelessWidget {
  final PlanetName planetName;
  const _PlanetCard(this.planetName);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, PlanetScreen.route, arguments: planetName);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Menu()));
      },
      child: Column(
        children: [
          Flexible(
            child: Hero(
              tag: describeEnum(planetName),
              child:
                  Image.asset('images/planets/${describeEnum(planetName)}.png'),
            ),
          ),
        ],
      ),
    );
  }
}
