import 'user_assignment_dto.dart';

class UserDto {
  int userId;
  String userName;
  String fullName;
  String sex;
  String email;
  String userTypeName;
  List<UserAssignmentDto> listUserAssignment;

  UserDto({
    required this.userId,
    required this.userName,
    required this.fullName,
    required this.sex,
    required this.email,
    required this.userTypeName,
    required this.listUserAssignment,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    var listUserAssignmentJson = json['listUserAssignment'] as List;
    List<UserAssignmentDto> listUserAssignment = listUserAssignmentJson
        .map((i) => UserAssignmentDto.fromJson(i))
        .toList();

    return UserDto(
      userId: json['userId'],
      userName: json['userName'],
      fullName: json['fullName'],
      sex: json['sex'],
      email: json['email'],
      userTypeName: json['userTypeName'],
      listUserAssignment: listUserAssignment,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'userName': userName,
      'fullName': fullName,
      'sex': sex,
      'email': email,
      'userTypeName': userTypeName,
      'listUserAssignment':
          listUserAssignment.map((assignment) => assignment.toJson()).toList(),
    };
  }
}
