class ResultApiModel {
  final bool success;
  final String message;
  final data;
  final int code;

  ResultApiModel(
    this.success,
    this.message,
    this.data,
    this.code,
  );

  factory ResultApiModel.fromJson(Map<String, dynamic> json) {
    // if (json == null) return null;
    return ResultApiModel(
      json['success'] ?? false,
      json['message'] ?? 'Unknown',
      json['data'],
      json['code'] ?? 0,
    );
  }
}
