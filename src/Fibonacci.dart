// 1. Tính Fibonacci tối ưu bằng Memoization
Map<int, int> memo = {};
int fibonacci(int n) {
  if (n <= 1) return n;
  if (memo.containsKey(n)) return memo[n]!;
  return memo[n] = fibonacci(n - 1) + fibonacci(n - 2);
}

// 2. Tìm số nguyên tố lớn nhất trong danh sách
bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

int largestPrime(List<int> numbers) {
  return numbers.where(isPrime).reduce((a, b) => a > b ? a : b);
}

// 3. Lớp Stack
class MyStack<T> {
  final List<T> _stack = [];
  void push(T value) => _stack.add(value);
  T? pop() => _stack.isNotEmpty ? _stack.removeLast() : null;
  T? peek() => _stack.isNotEmpty ? _stack.last : null;
  bool isEmpty() => _stack.isEmpty;
}

// 4. Đảo ngược chuỗi không dùng reversed
String reverseString(String str) {
  String reversed = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

// 5. Đếm số lần xuất hiện của từng ký tự trong chuỗi
Map<String, int> charFrequency(String str) {
  Map<String, int> freq = {};
  for (var char in str.runes) {
    String c = String.fromCharCode(char);
    freq[c] = (freq[c] ?? 0) + 1;
  }
  return freq;
}

// 6. Kiểm tra chuỗi Palindrome
bool isPalindrome(String str) {
  return str == str.split('').reversed.join('');
}

// 7. Chuyển đổi danh sách số thành số lớn nhất có thể tạo ra
String largestNumber(List<int> numbers) {
  numbers.sort((a, b) => '$b$a'.compareTo('$a$b'));
  return numbers.join();
}

void main() {
  print(fibonacci(50)); // 12586269025
  print(largestPrime([3, 5, 8, 13, 17, 19, 23, 29, 31])); // 31

  var stack = MyStack<int>();
  stack.push(10);
  stack.push(20);
  print(stack.pop()); // 20
  print(stack.peek()); // 10

  print(reverseString("hello")); // "olleh"
  print(charFrequency("hello world")); // {h: 1, e: 1, l: 3, o: 2, w: 1, r: 1, d: 1}
  print(isPalindrome("racecar")); // true
  print(isPalindrome("hello")); // false
  print(largestNumber([3, 30, 34, 5, 9])); // "9534330"
}
