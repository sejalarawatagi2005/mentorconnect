class UserProfile {
  String? collegePreference;
  String? elective;
  List<String> interests;
  String? projectsDone;
  String? skills;
  String? cgpa;
  String? entranceScore;
  String? countryPreference;

  UserProfile({
    this.collegePreference,
    this.elective,
    this.interests = const [],
    this.projectsDone,
    this.skills,
    this.cgpa,
    this.entranceScore,
    this.countryPreference,
  });
}
