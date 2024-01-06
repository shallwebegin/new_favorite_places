import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_favorite_places/riverpods/user_place.dart';
import 'package:new_favorite_places/screens/add_places.dart';
import 'package:new_favorite_places/widgets/place_list.dart';

class PlaceScren extends ConsumerWidget {
  const PlaceScren({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newPlace = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: PlaceList(
        places: newPlace,
      ),
    );
  }
}
