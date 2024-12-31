class UserAssignmentDto {
  int warrantyStationId;
  String warrantyStationName;
  String partnerName;

  UserAssignmentDto({
    required this.warrantyStationId,
    required this.warrantyStationName,
    required this.partnerName,
  });

  factory UserAssignmentDto.fromJson(Map<String, dynamic> json) {
    return UserAssignmentDto(
      warrantyStationId: json['warrantyStaionId'],
      warrantyStationName: json['warrantyStationName'],
      partnerName: json['partnerName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'warrantyStaionId': warrantyStationId,
      'warrantyStationName': warrantyStationName,
      'partnerName': partnerName,
    };
  }
}
