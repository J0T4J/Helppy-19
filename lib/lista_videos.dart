class Video {
  String videoUrl;
  String title;

  Video({this.videoUrl, this.title});
}

List videos = [
  Video(
    videoUrl: 'https://www.youtube.com/watch?v=C83jhuQMWqc',
    title: 'É necessário a higienização correta das mãos no combate ao COVID-19!',
  ),

  Video(
    videoUrl: 'https://www.youtube.com/watch?v=IlqwgyhBE0w',
    title: 'Suspeita? Se consulte mesmo sem sair de casa!',
  ),
];
