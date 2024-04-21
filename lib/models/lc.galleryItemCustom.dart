
class GalleryItemCustom {
    GalleryItemCustom({
        required this.title,
        required this.description,
        required this.imageUrl,
        //required this.timestamp,
        required this.category,
    });

    String title;
    String description;
    String imageUrl;
    //Timestamp timestamp;
    String category;
   
    /*factory GalleryItemCustom.fromDocument(DocumentSnapshot doc) => GalleryItemCustom(
        title: doc["title"],
        description: doc["description"],
        imageUrl: doc["imageUrl"],
        timestamp: doc["timestamp"],
        category: doc["category"],
        showOnHomePage: doc["showOnHomePage"],
       
    );*/
}