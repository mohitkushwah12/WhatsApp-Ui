// ignore_for_file: avoid_print
// import 'dart:io';

void main() async {
  // for(int i=1;i<=10;i++) {
  //   for(int j=10;j>=i;j--) {
  //     stdout.write("*");
  //   }
  //   print("");
  // }
  print("Loading Start");
  String name = await getDataFromFeature();
  print(name);
  print("Loading End");
  print(("Loading Start"));
  String name1 = await getData();
  print(name1);
  print("Loading End");
}

Future<String> getDataFromFeature() async {
  await Future.delayed(const Duration(seconds: 4));
  return "Mohit Kushwah";
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 3));
  return "Chetan Kushwah";
}
//   String name = "Mohit kushwah";
//
//   String name1 = removeEmptySpace(name, 24);
//   print(name1);
//  // print('Age is 21');
// }
//
// String removeEmptySpace(String name, int age)
// {
//    print('removeEmptySpace : $name');
//
//   if(name.contains(' '))
//   {
//     return '${name.replaceAll(' ', '__')} Age is : $age';
//   }
//
//   return name;
// String name = "Mohit ";
//
// String name1 = nameAgeContact(name,age: 25,contact: 8435951261, surname: 'Kushwah');
// print(name1);

// String name1 = findIndex();
// print("Total Index Found: $name1");
// }

// String findIndex({String name = "Mohit Kush", int? position})
// {
//   int index = name.indexOf("t" , position ?? 0);
//     if(index != -1)
//   {
//     return index.toString();
//   }
//   return position?.toString() ?? 'Not Found';
// }
