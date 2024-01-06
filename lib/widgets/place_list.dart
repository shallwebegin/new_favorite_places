import 'package:flutter/material.dart';
import 'package:new_favorite_places/models/place.dart';
import 'package:new_favorite_places/screens/place_details.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({super.key, required this.places});
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'Not found places yet',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(places[index].title),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlaceDetailScreen(
                place: places[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
