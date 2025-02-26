import 'package:get/get.dart';
import 'package:logo/model/Car.dart';

class HomeGetxController extends GetxController {
  bool loading = false;
  List<Car> items = [];

  @override
  void onInit() async {
    await read();
    super.onInit();
  }

  Future<void> read() async {
    loading = true;
    items = fillList();
    loading = false;
    update();
  }

  Future<void> toggleFavorite({
    required index,
  }) async {
    items[index].isFav = !items[index].isFav;
    update();
  }

  List<Car> fillList() {
    return [
      Car(
        id: 1,
        imgUrl: 'assets/images/car.png',
        title: 'Mercedes gt 63',
        subtitle: '300 DH/Jour',
        rating: '4.5',
        isFav: false,
      ),
      Car(
        id: 2,
        imgUrl: 'assets/images/car.png',
        title: 'BMW Loz 63',
        subtitle: '310 DH/Jour',
        rating: '4.6',
        isFav: false,
      ),
      Car(
        id: 3,
        imgUrl: 'assets/images/car.png',
        title: 'Lambornini 63',
        subtitle: '320 DH/Jour',
        rating: '4.7',
        isFav: false,
      ),
      Car(
        id: 4,
        imgUrl: 'assets/images/car.png',
        title: 'Toyota yoyo 63',
        subtitle: '330 DH/Jour',
        rating: '4.8',
        isFav: false,
      ),
      Car(
        id: 5,
        imgUrl: 'assets/images/car.png',
        title: 'Hyonda huhu 63',
        subtitle: '340 DH/Jour',
        rating: '4.9',
        isFav: false,
      ),
    ];
  }
}
