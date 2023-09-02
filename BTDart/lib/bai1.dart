int findMax(List<int> a) {
  int max = a[0];
  for (int number in a) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

int findMin(List<int> a) {
  int min = a[0];
  for (int number in a) {
    if (number < min) {
      min = number;
    }
  }
  return min;
}

void main() {
  List<int> a = [1,3,5,7,9,2,4,6,8,10];
  
  int maxNumber = findMax(a);
  int minNumber = findMin(a);

  print("Số lớn nhất trong mảng là: $maxNumber");
  print("Số nhỏ nhất trong mảng là: $minNumber");
}