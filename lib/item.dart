class Item {
  final int id;
  final String name;
  final String desc;
  final double price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
  });
}

List<Item> products = [
  Item(
    id: 1,
    name: "iPhone",
    desc: "Apple Phone",
    price: 999,
    image:"https://images.unsplash.com/photo-1616410011236-7a42121dd981?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aXBob25lfGVufDB8fDB8fHww",

  ),
  Item(
    id: 2,
    name: "Samsung",
    desc: "Android Phone",
    price: 899,
    image:"https://images.unsplash.com/photo-1707438095940-1eee18e85400?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8U2Ftc3VuZ3xlbnwwfHwwfHx8MA%3D%3D",
  ),
   Item(
    id: 3,
    name: "OnePlus",
    desc: "Android Phone",
    price: 799,
    image: "https://images.unsplash.com/photo-1637190909375-85cd40d14161?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8T25lJTIwcGx1c3xlbnwwfHwwfHx8MA%3D%3D",
  ),
];
