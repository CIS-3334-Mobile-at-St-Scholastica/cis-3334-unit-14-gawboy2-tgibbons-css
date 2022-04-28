
//  Holds the details for a single painting
class ItemDetail {
  String category = '';             //Image category
  String title = '';                //Image title
  String imageFileName = '';        //Image file
  String authorAudioFileName = '';  // Gawboy audio file
  String elderAudioFileName = '';   //Jourdain audio file
  //Gawboy text description
  //Jourdain text description in English
  //Jourdain text description in Anishinaabe

  ItemDetail(String this.imageFileName, String this.authorAudioFileName) {
  }

}