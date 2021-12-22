class Product {
  final String name;
   double price;
   int counter;

  Product({
     required this.name,
     required this.price,
      this.counter=1,

  });
}

List<Product> productList=[
  Product(name: 'Apple', price: 4.63),
  Product(name: 'Oragne', price: 2.6),
  Product(name: 'Mango', price: 3.63),
  Product(name: 'Banana', price: 0.99),
  Product(name: 'WaterMalon', price: 10.00),
  Product(name: 'Peir', price: 2.99),
  Product(name: 'Dragonfruit', price: 5.99),
];
List<Product> cartList=[];