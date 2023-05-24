import 'dart:io';

class Product {
  final int id;
  final String name;
  final int price;
  int qty = 1;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      this.qty = 1});

  factory Product.factory({required Map cus}) {
    return Product(id: cus['id'], name: cus['name'], price: cus['price']);
  }
  static List<Map<String, dynamic>> allproduct = [
    {
      'id': 1,
      'name': "iphone",
      'price': 10000,
    },
    {
      'id': 2,
      'name': "laptop",
      'price': 150,
    },
    {
      'id': 3,
      'name': "Table",
      'price': 500,
    },
    {
      'id': 4,
      'name': "watch",
      'price': 50000,
    },
    {
      'id': 5,
      'name': "shirt",
      'price': 1800,
    },
    {
      'id': 6,
      'name': "S21",
      'price': 21000,
    },
    {
      'id': 7,
      'name': "cream",
      'price': 50,
    },
    {
      'id': 8,
      'name': "MacBook",
      'price': 70000,
    },
    {
      'id': 9,
      'name': "mug",
      'price': 50,
    },
    {
      'id': 10,
      'name': "Table",
      'price': 4000,
    },
    {
      'id': 11,
      'name': "penbox",
      'price': 75,
    },
    {
      'id': 12,
      'name': "5 star",
      'price': 10,
    },
    {
      'id': 13,
      'name': "AC",
      'price': 35000,
    },
    {
      'id': 14,
      'name': "sale",
      'price': 20,
    },
    {
      'id': 15,
      'name': "milk",
      'price': 35,
    },
  ];
}

class customer {
  final int id;
  final String name;
  final int contact;
  int bill = 0;
  List<Product> cart = [];

  customer({required this.id, required this.name, required this.contact}) 
  {

    int choice ;
    do{
    print("1 for add product.");
    print("2 for EXIT.");

    stdout.write("Enter your choice : ");
    choice =int.parse(stdin.readLineSync()!);

    switch (choice) {
        case 1:
          Product.allproduct.forEach((custome) {
            print("${custome['id']}\t${custome['name']}\t${custome['price']}");
          });
          stdout.write("Enter product number to add your cart : ");
          int n = int.parse(stdin.readLineSync()!);
          stdout.write("Enter quantity :");
          int q = int.parse(stdin.readLineSync()!);

          Product p = Product.factory(cus: Product.allproduct[n - 1]);
          p.qty = q;
          cart.add(p);
          break;
          case 2 :
          break;

        default:
          print("Enter valid Number!!");
    }
     }while (choice != 2);
     cart.forEach((e)
    {
      bill += (e.qty * e.price);
    });
  }
}
