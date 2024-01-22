

class FormModel {
  Null? command;
  String? activityDate;
  String? thaoughtOfDay;
  String? birthdayCard;
  String? anniversaryCard;
  String? welComeCard;
  List<DailyPO>? dailyPO;
  List<ProjectStatus>? projectStatus;

  FormModel(
      {this.command,
      this.activityDate,
      this.thaoughtOfDay,
      this.birthdayCard,
      this.anniversaryCard,
      this.welComeCard,
      this.dailyPO,
      this.projectStatus});

  FormModel.fromJson(Map<String, dynamic> json) {
    command = json['command'];
    activityDate = json['activityDate'];
    thaoughtOfDay = json['thaoughtOfDay'];
    birthdayCard = json['birthdayCard'];
    anniversaryCard = json['anniversaryCard'];
    welComeCard = json['welComeCard'];
    if (json['dailyPO'] != null) {
      dailyPO = <DailyPO>[];
      json['dailyPO'].forEach((v) {
        dailyPO!.add(new DailyPO.fromJson(v));
      });
    }
    if (json['projectStatus'] != null) {
      projectStatus = <ProjectStatus>[];
      json['projectStatus'].forEach((v) {
        projectStatus!.add(new ProjectStatus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['command'] = this.command;
    data['activityDate'] = this.activityDate;
    data['thaoughtOfDay'] = this.thaoughtOfDay;
    data['birthdayCard'] = this.birthdayCard;
    data['anniversaryCard'] = this.anniversaryCard;
    data['welComeCard'] = this.welComeCard;
    if (this.dailyPO != null) {
      data['dailyPO'] = this.dailyPO!.map((v) => v.toJson()).toList();
    }
    if (this.projectStatus != null) {
      data['projectStatus'] =
          this.projectStatus!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DailyPO {
  Null? command;
  int? purchOrdAmt;
  int? poInVoiceAmt;
  String? activityDate;
  int? targetAmt;

  DailyPO(
      {this.command,
      this.purchOrdAmt,
      this.poInVoiceAmt,
      this.activityDate,
      this.targetAmt});

  DailyPO.fromJson(Map<String, dynamic> json) {
    command = json['command'];
    purchOrdAmt = json['purchOrdAmt'];
    poInVoiceAmt = json['poInVoiceAmt'];
    activityDate = json['activityDate'];
    targetAmt = json['targetAmt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['command'] = this.command;
    data['purchOrdAmt'] = this.purchOrdAmt;
    data['poInVoiceAmt'] = this.poInVoiceAmt;
    data['activityDate'] = this.activityDate;
    data['targetAmt'] = this.targetAmt;
    return data;
  }
}

class ProjectStatus {
  int? totalProjCount;
  int? completeProjCount;
  int? inProgressCount;
  String? financialYear;

  ProjectStatus(
      {this.totalProjCount,
      this.completeProjCount,
      this.inProgressCount,
      this.financialYear});

  ProjectStatus.fromJson(Map<String, dynamic> json) {
    totalProjCount = json['totalProjCount'];
    completeProjCount = json['completeProjCount'];
    inProgressCount = json['inProgressCount'];
    financialYear = json['financialYear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalProjCount'] = this.totalProjCount;
    data['completeProjCount'] = this.completeProjCount;
    data['inProgressCount'] = this.inProgressCount;
    data['financialYear'] = this.financialYear;
    return data;
  }
}
