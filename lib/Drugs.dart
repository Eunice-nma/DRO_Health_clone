class Drugs{
  final String drugName;
  final String description;
  final String type;
  final int price;
  final String image;


  Drugs({this.drugName, this.description, this.type, this.price, this.image});


  static List<Drugs>  drugs = [
    Drugs(drugName: "Paracetamol", description: "pain relief", type: "tablet-500g", price: 500, image: 'paracetamol.jpeg'),
    Drugs(drugName: "Ibuprofen", description: "pain relief", type: "tablet-200mg", price: 300, image: 'Ibuprofen.jpeg'),
    Drugs(drugName: "Folic Acid", description: "Folic Acid", type: "tablet-400g", price: 1200, image: 'folic-acids.jpeg'),
    Drugs(drugName: "Kezitil", description: "Cefuroxime axetil", type: "100ml", price: 2500, image: 'Kezitil-susp.png'),
    Drugs(drugName: "Kezitil", description: "Cefuroxime axetil", type: "tablet-500mg", price: 3500, image: 'Kezitil-500mg.png'),

  ];
}