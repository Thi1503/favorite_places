import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Quản lý địa điểm do người dùng thêm vào
class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  // thêm một địa điểu mới
  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
