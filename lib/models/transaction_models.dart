import 'package:equatable/equatable.dart';
import 'package:food_market/models/food_models.dart';
import 'package:food_market/models/user_models.dart';

enum TransactionStatus { delivered, onDelivery, pending, cancelled }

class TransactionModels extends Equatable {
  final int? id;
  final FoodModels foodModels;
  final int? quantity;
  final int? total;
  final DateTime? dateTime;
  final TransactionStatus? status;
  final UserModels? userModels;

  const TransactionModels({
    this.id,
    required this.foodModels,
    this.quantity,
    this.total,
    this.dateTime,
    this.status,
    this.userModels,
  });

  TransactionModels copyWith({
    int? id,
    FoodModels? foodModels,
    int? quantity,
    int? total,
    DateTime? dateTime,
    TransactionStatus? status,
    UserModels? userModels,
  }) {
    return TransactionModels(
      id: id ?? this.id,
      foodModels: foodModels ?? this.foodModels,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      userModels: userModels ?? this.userModels,
    );
  }

  @override
  List<Object?> get props =>
      [id, foodModels, quantity, total, dateTime, status, userModels];
}

List<TransactionModels> mockTransaction = [
  TransactionModels(
    id: 1,
    foodModels: mockFood[1],
    quantity: 3,
    total: (mockFood[1].price * 10 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.onDelivery,
    userModels: mockUser,
  ),
  TransactionModels(
    id: 2,
    foodModels: mockFood[2],
    quantity: 2,
    total: (mockFood[2].price * 10 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.delivered,
    userModels: mockUser,
  ),
  TransactionModels(
    id: 3,
    foodModels: mockFood[3],
    quantity: 5,
    total: (mockFood[3].price * 10 * 1.1).round() + 50000,
    dateTime: DateTime.now(),
    status: TransactionStatus.cancelled,
    userModels: mockUser,
  )
];
