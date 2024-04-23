import 'package:blog_app/core/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.name,
  });

  /// Convert dữ liệu từ Map<String, dynamic> sang UserModel để tái sử dụng trong AuthRemoteDataSourceImpl
  /// Mà không cần phải chuyển đổi response từ SupabaseClient (Json) sang UserModel mỗi lần sử dụng
  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }
}
