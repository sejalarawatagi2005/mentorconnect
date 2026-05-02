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

  Map<String, dynamic> toMap() {
    return {
      'collegePreference': collegePreference,
      'elective': elective,
      'interests': interests,
      'projectsDone': projectsDone,
      'skills': skills,
      'cgpa': cgpa,
      'entranceScore': entranceScore,
      'countryPreference': countryPreference,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      collegePreference: map['collegePreference'],
      elective: map['elective'],
      interests: List<String>.from(map['interests'] ?? []),
      projectsDone: map['projectsDone'],
      skills: map['skills'],
      cgpa: map['cgpa'],
      entranceScore: map['entranceScore'],
      countryPreference: map['countryPreference'],
    );
  }
}
