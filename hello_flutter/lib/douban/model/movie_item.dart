
class GYMovieItem {
  String movied_id = "";
  String movied_img = "";
  String movied_title_china = "";
  String movied_title_english = "";
  String movied_title_hk = "";
  String movied_average = "";
  String movied_evaluation = "";
  String movied_director = "";
  String movied_plot = "";
  String movied_quote = "";

  GYMovieItem.forMap(Map<String, dynamic> json) {
    this.movied_id = json["id"];
    this.movied_img = json["img"];
    this.movied_title_china = json["title_china"];
    this.movied_title_english = json["title_english"];
    this.movied_title_hk = json["title_hk"];
    this.movied_average = json["average"];
    this.movied_evaluation = json["evaluation"];
    this.movied_director = json["director"];
    this.movied_plot = json["plot"];
    this.movied_quote = json["quote"];
  }


  @override
  String toString() {
    return 'GYMovieItem{movied_id: $movied_id, '
        'movied_img: $movied_img, '
        'movied_title_china: $movied_title_china, '
        'movied_title_english: $movied_title_english, '
        'movied_title_hk: $movied_title_hk, '
        'movied_average: $movied_average, '
        'movied_evaluation: $movied_evaluation, '
        'movied_director: $movied_director, '
        'movied_plot: $movied_plot, '
        'movied_quote: $movied_quote}';
  }

}