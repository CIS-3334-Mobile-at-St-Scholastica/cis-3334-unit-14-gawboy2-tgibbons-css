import 'dart:convert';                      // needed for json convert
import 'package:flutter/services.dart';     // needed for folder location
import 'item_detail.dart';

class itemRepository {

  final String imageFolderLocation = 'assets/images/';
  final String audioFolderLocation = 'assets/audio/';


  List<ItemDetail> itemList = [];

  itemRepository() {
    //InitInCode();

  }

  Future<List<ItemDetail>> InitWithJson() async {
    final String response = await rootBundle.loadString('assets/text/image_list2.json');
    final List<dynamic> data = await json.decode(response);
    List<ItemDetail> items = [];
    for (dynamic it in data) {
      final ItemDetail item = ItemDetail.fromJson(it);    // Parse data for one DataItem
      items.add(item);                                // add item to items List
    }
    return items;

  }

  // This method shows how to initialize some of the data items directly in code.
  //    We will use this initially, but switch to reading this data from a JSON file
  InitInCode(){
    ItemDetail item = new ItemDetail(1,'by_the_fire_1.jpg', 'By the Fire', 'Chippewa Camp Scene');
    item.setGawboyDescription('The series of paintings in which fire light was kind of common theme.');
    item.GawboyAudio = "by_the_fire_1.mp3";
    item.JourdainAnishinaabe = "Onaagoshing onaanaa’itoonawaa wiigwaasi-jiimaan";
    item.JourdainEnglish = "When it is evening, they are fixing the birchbark canoe";
    item.JourdainAudio = "by_the_fire_1_anishinaabe.mp3";
    itemList.add(item);

    item = new ItemDetail(2,'by_the_fire_2.jpg', 'By the Fire', 'Storyteller');
    item.setGawboyDescription('This is a cutout figure. It is painted on plywood and the plywood cutout kind of suggests a three dimensional form. This is a lady who is very good at telling stories sitting by the fire, her face is lit from underneath as she holding her audience spellbound.  In the foreground you can see some rocks. ');
    item.GawboyAudio = "by_the_fire_2.mp3";
    item.JourdainAnishinaabe = "Aadizookewikwe namadibid imaa ishkodeng";
    item.JourdainEnglish = "Storyteller woman, she sits there by the fire";
    item.JourdainAudio = "by_the_fire_2_anishinaabe.mp3";
    itemList.add(item);

    item = new ItemDetail(3,'by_the_fire_3.jpg', 'By the Fire', 'Joining the Women');
    item.setGawboyDescription('This is a girls coming of age ceremony just a part of it. The ceremony would be rather long lasting. In this painting the older women or older relatives telling her wisdom among other things herbal medicine, the duties of womanhood.');
    item.GawboyAudio = "by_the_fire_3.mp3";
    item.JourdainAnishinaabe = "Ikwezensag";
    item.JourdainEnglish = "Girls";
    item.JourdainAudio = "by_the_fire_3_anishinaabe.mp3";
    itemList.add(item);

    item = new ItemDetail(4,'by_the_fire_4.jpg', 'By the Fire', 'Joining the Women 2');
    item.setGawboyDescription('This was done on a plywood cut out. The plywood cut out was in a dome shape like a woman’s house and you have virtually the same type of scene.  ');
    item.GawboyAudio = "by_the_fire_4.mp3";
    item.JourdainAnishinaabe = "A’aw ikwe, ogikinoo’amaawaan i’iw odaanan gii-gizhiiginid";
    item.JourdainEnglish = "That woman, she teaches her, her daughter, when she was growing up fast";
    item.JourdainAudio = "by_the_fire_4_anishinaabe.mp3";
    itemList.add(item);

    item = new ItemDetail(5,'by_the_fire_5.jpg', 'By the Fire', 'Storyteller 2');
    item.setGawboyDescription('This is another piece from the Storyteller group. The Storyteller group is one of the other figurines, you see that same rock down there in the lower part of the slide. This is a plywood cut out about 8" high like the other one and this is one of the listeners to the Storyteller. ');
    item.GawboyAudio = "by_the_fire_5.mp3";
    item.JourdainAnishinaabe = "Obizindawaan iniw aadizookewikwe.";
    item.JourdainEnglish = "She is listening to the storyteller woman.";
    item.JourdainAudio = "by_the_fire_5_anishinaabe.mp3";
    itemList.add(item);
  }

  String getAuthorAudio (int index) {
    String filename = audioFolderLocation + itemList[index].GawboyAudio;
    return filename;
  }

  String getImageFile (int index) {
    String filename = imageFolderLocation + itemList[index].imageFile;
    return filename;
  }

  int getLength () {
    return itemList.length;
  }
}