
import 'item_detail.dart';

class itemRepository {

  List<ItemDetail> itemList = [];

  itemRepository() {
    itemList.add( new ItemDetail('assets/images/in_the_circle_1.jpg', 'assets/audio/in_the_circle_1.mp3') );
    itemList.add( new ItemDetail('assets/images/in_the_circle_2.jpg', 'assets/audio/in_the_circle_2.mp3') );
    itemList.add( new ItemDetail('assets/images/in_the_circle_3.jpg', 'assets/audio/in_the_circle_3.mp3') );
    itemList.add( new ItemDetail('assets/images/in_the_circle_4.jpg', 'assets/audio/in_the_circle_4.mp3') );
    itemList.add( new ItemDetail('assets/images/by_the_fire_1.jpg', 'assets/audio/by_the_fire_1.mp3') );
    itemList.add( new ItemDetail('assets/images/by_the_fire_2.jpg', 'assets/audio/by_the_fire_2.mp3') );
    itemList.add( new ItemDetail('assets/images/by_the_fire_3.jpg', 'assets/audio/by_the_fire_3.mp3') );
    itemList.add( new ItemDetail('assets/images/by_the_fire_4.jpg', 'assets/audio/by_the_fire_4.mp3') );
  }

  String getAuthorAudio (int index) {
    return itemList[index].authorAudioFileName;
  }

  String getImageFile (int index) {
    return itemList[index].imageFileName;
  }

  int getLength () {
    return itemList.length;
  }
}