int binarySearch(List<int> arr,int target){
  int left = 0;
  int right = arr.length -1;
  while(left<= right){
    int mid = (left + right) ~/2; //Tìm số giữa
    if(arr[mid] == target){
      return mid; //Tìm thấy phần tử trả về chỉ số
    }
    if(arr[mid] < target){
      left =mid +1 ; //Tìm kiếm bên phải
    }
    if(arr[mid] >target){
      right =mid -1 ;//Tìm kiếm bên trái
    }
  }
  return -1; //Không tìm thấy phần tử
}
void main(){
  List<int> numbers =[1,2,3,4,5,6,7,8,9];
  int target =3;
  int result = binarySearch(numbers, target);
  if(result == null){
    print('Không tìm thấy phần tử');
  }else{
    print('Phần tử ở vị trí thứ $result');
  }
}