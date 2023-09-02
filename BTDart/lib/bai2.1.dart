import 'dart:math';

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  // Bán kính của Trái Đất (đơn vị: km)
  const double earthRadius = 6371;

  // Chuyển đổi các giá trị kinh độ và vĩ độ từ độ sang radian
  double lat1Radians = lat1*3.14/180;
  double lon1Radians = lon1*3.14/180;
  double lat2Radians = lat2*3.14/180;
  double lon2Radians = lon2*3.14/180;

  // Tính độ chênh lệch của kinh độ và vĩ độ
  double deltaLat = lat2Radians - lat1Radians;
  double deltaLon = lon2Radians - lon1Radians;

  // Sử dụng công thức Haversine để tính khoảng cách
  double a = pow(sin(deltaLat / 2), 2) +
      cos(lat1Radians) * cos(lat2Radians) * pow(sin(deltaLon / 2), 2);
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  double distance = earthRadius * c;

  return distance;
}

void main() {
  double lat1 = 21.0285; 
  double lon1 = 105.8542;
  double lat2 = 10.7769;
  double lon2 = 106.7009;

  double distance = calculateDistance(lat1, lon1, lat2, lon2);
  print('Khoảng cách giữa hai điểm là: ${distance.toStringAsFixed(2)} km');
}
