
class GYMovieItem {
  String movied_id;
  String movied_img;
  String movied_title_name;
  String movied_title_name2;
  String movied_title_name3;
  String movied_average;
  String movied_evaluation;
  String movied_director;
  String movied_plot;
  String movied_quote;

  GYMovieItem.forMap(Map<String, dynamic> json) {
    this.movied_id = json["id"];
    this.movied_img = json["img"];
    this.movied_title_name = json["title"][0];
    this.movied_title_name2 = json["title"][1];
    this.movied_title_name3 = json["title"][2];
    this.movied_average = json["average"];
  }
}