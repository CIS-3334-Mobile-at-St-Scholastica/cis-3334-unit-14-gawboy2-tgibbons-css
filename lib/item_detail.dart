
//  Holds the details for a single painting
class ItemDetail {
  int num = 0;
  String catagory = '';             //Image category
  String name = '';                //Image title
  String imageFile = '';        //Image file
  String GawboyAudio = '';  // Gawboy audio file
  String JourdainAudio = '';   //Jourdain audio file
  String GawboyDescription = '';    // Author description as text
  String JourdainAnishinaabe = '';  // Elders text in ojibwe (really English)
  String JourdainEnglish = '';      // Elders text in English (really Anininaabe)

  // constructor using only the image file name and author audio file
  //ItemDetail(String this.imageFile, String this.GawboyAudio) {
  //}
  // constructor with image number, image file, catagory and title
  // (1,'by_the_fire_1.jpg', 'By the Fire', 'Chippewa Camp Scene')
  ItemDetail(int this.num, String this.imageFile, String this.catagory, this.name) {
  }

  void setGawboyDescription(String newDescription) {
    this.GawboyDescription = newDescription;
  }

  ItemDetail.fromJson(Map<String, dynamic> json)
      : num = json['num'],
        imageFile = json['imageFile'],
        catagory = json['catagory'],
        name = json['name'],
        GawboyDescription = json['gawboyDescription'],
        GawboyAudio = json['gawboyAudio'],
        JourdainAnishinaabe = json['JourdainAnishinaabe'],
        JourdainEnglish = json['JourdainEnglish'],
        JourdainAudio = json['JourdainAudio'];


}