Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched');
}

void main() async {
  print('Fetching data...');
  await fetchData();  // Chờ đến khi dữ liệu được lấy
  print('Done');
}
