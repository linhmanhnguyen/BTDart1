double convertCurrency(double amountInUSD, double exchangeRate) {
  double amountInVN = amountInUSD * exchangeRate;
  return amountInVN;
}

void main() {
  double amountInUSD = 1000; // 
  double exchangeRate = 24085; // 

  // Gọi hàm để chuyển đổi tiền tệ
  double amountInVN = convertCurrency(amountInUSD, exchangeRate);

  // In ra kết quả
  print('$amountInUSD USD = $amountInVN VN');
}