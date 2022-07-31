import 'package:equatable/equatable.dart';

class UserModels extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  const UserModels({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.houseNumber,
    required this.phoneNumber,
    required this.city,
    required this.picturePath,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

UserModels mockUser = const UserModels(
    id: 1,
    name: "Muhammad Fauzan",
    email: "fauzan@gmail.com",
    address: "Jl. jalan",
    houseNumber: "17",
    phoneNumber: "08123456789",
    city: "Jkt",
    picturePath:
        "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/16/2886217516.jpeg");
