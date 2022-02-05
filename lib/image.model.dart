class ImageModel {
  String url = '';
  String title = '';
  int id = 0;

  ImageModel({required this.id, required this.title, required this.url});

  ImageModel.fromJson(json) {
    url = json['url'];
    title = json['title'];
    id = json['id'];
  }
}
