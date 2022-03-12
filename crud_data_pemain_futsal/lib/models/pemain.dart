class Pemain {
  late int id;
  late String name;
  late String position;
  late String backNumber;
  late int age;
  late String tim;

  Pemain({
    required this.id,
    required this.name,
    required this.position,
    required this.backNumber,
    required this.age,
    required this.tim,
  });

  factory Pemain.fromMap(Map<String, dynamic> pemain) {
    return Pemain(
      id: pemain["id"],
      name: pemain["name"],
      position: pemain["position"],
      backNumber: pemain["backNumber"],
      age: pemain["age"],
      tim: pemain["tim"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "position": position,
      "backNumber": backNumber,
      "age": age,
      "tim": tim
    };
  }
}

List<Pemain> pemains = [
  Pemain(id: 1, name: "Randi Utomo", position: "Kiper", backNumber: "2", age: 26, tim: "Elang FC"),
  Pemain(id: 2, name: "Syahrian Egi", position: "Anchor", backNumber: "3", age: 26, tim: "Badak FC"),
  Pemain(id: 2, name: "Rian Prabowo", position: "Flank", backNumber: "3", age: 26, tim: "Badak FC"),
];
