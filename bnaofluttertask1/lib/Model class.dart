class ModelClass {
  String title;
  String thumbnail;
  String description;
  String detail;
  String? date;

  ModelClass({
    required this.title,
    required this.thumbnail,
    required this.description,
    required this.detail,
    this.date,
  });
}

List<ModelClass> getmodelclass = [
  ModelClass(
    title: 'Lifestyle',
    thumbnail: "assets/images/def.jpeg",
    description: "A complete guide for your new born baby",
    detail: "16 lessons",
  ),
  ModelClass(
      title: 'Working Pa',
      thumbnail: "assets/images/ghi.png",
      description: "Understanding of human behaviour",
      detail: "12 lessons"),
];

List<ModelClass> getmodelclass2 = [
  ModelClass(
    title: 'BABYCARE',
    thumbnail: "assets/images/abc.jpg",
    description: "Understanding of human behaviour",
    detail: "13 Feb, Sunday",
  ),
  ModelClass(
      title: 'BABYCARE',
      thumbnail: "assets/images/abc.jpg",
      description: "Understanding of human behaviour",
      detail: "13 Feb, Sunday"),
];
List<ModelClass> getmodelclass3 = [
  ModelClass(
    title: 'BABYCARE',
    thumbnail: "assets/images/abc.jpg",
    description: "Understanding of human behaviour",
    detail: "3 min",
  ),
  ModelClass(
      title: 'BABYCARE',
      thumbnail: "assets/images/abc.jpg",
      description: "Understanding of human behaviour",
      detail: "1 min"),
];
