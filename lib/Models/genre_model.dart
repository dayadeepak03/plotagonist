class GenreModels {
  String img;
  String genreName;

  GenreModels({
    this.img,
    this.genreName,
  });
}

List<GenreModels> genreList = [
  GenreModels(img: 'assets/images/1-1.jpeg', genreName: 'NOVEL'),
  GenreModels(img: 'assets/images/1-2.jpeg', genreName: 'SCREENPLAY'),
  GenreModels(img: 'assets/images/1-3.jpeg', genreName: 'ARTICLE'),
  GenreModels(img: 'assets/images/1-4.jpeg', genreName: 'SPEECH'),
  GenreModels(img: 'assets/images/1-5.jpeg', genreName: 'POEM'),
  GenreModels(img: 'assets/images/1-6.jpeg', genreName: 'RESEARCH / ESSAY'),
  GenreModels(img: 'assets/images/1-7.jpeg', genreName: 'OTHER'),
];
