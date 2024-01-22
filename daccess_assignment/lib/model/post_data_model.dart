class PostDataModel {
  String? command;
  String? activityDate;
  String? thaoughtOfDay;
  String? birthdayCard;
  String? anniversaryCard;
  String? welComeCard;

  PostDataModel(
      {this.command,
      this.activityDate,
      this.thaoughtOfDay,
      this.birthdayCard,
      this.anniversaryCard,
      this.welComeCard});

  PostDataModel.fromJson(Map<String, dynamic> json) {
    command = json['Command'];
    activityDate = json['ActivityDate'];
    thaoughtOfDay = json['ThaoughtOfDay'];
    birthdayCard = json['BirthdayCard'];
    anniversaryCard = json['AnniversaryCard'];
    welComeCard = json['WelComeCard'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Command'] = this.command;
    data['ActivityDate'] = this.activityDate;
    data['ThaoughtOfDay'] = this.thaoughtOfDay;
    data['BirthdayCard'] = this.birthdayCard;
    data['AnniversaryCard'] = this.anniversaryCard;
    data['WelComeCard'] = this.welComeCard;
    return data;
  }
}
