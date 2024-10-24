import 'package:makeup/model/category.dart';
import 'package:makeup/model/product.dart';

final availableCategories = [
  Category(id: 'w1', title: 'Lipstick'),
  Category(id: 'w2', title: 'Powder'),
  Category(id: 'w3', title: 'Eyeshadow'),
  Category(id: 'w4', title: 'Foundation'),
  Category(id: 'w5', title: 'Perfume'),
];

final dummyProducts = [
  const Product(id: 'm1', category: ['w1'], title: 'Kylie Matte ', imageUrl: 'images/lip1.png',price: '\$20',quantity: 1),
  const Product(id: 'm2', category: ['w1'], title: 'Kylie 4Life ', imageUrl: 'images/lip2.png',price: '\$10',quantity: 1),
  const Product(id: 'm3', category: ['w1'], title: 'Revlon', imageUrl: 'images/lip3.png',price: '\$15',quantity: 1),
  const Product(id: 'm4', category: ['w1'], title: 'Joo Faced', imageUrl: 'images/lip4.png',price: '\$17',quantity: 1),
  const Product(id: 'm5', category: ['w1'], title: 'Lip Glow', imageUrl: 'images/lip5.png',price: '\$25',quantity: 1),
  const Product(id: 'm6', category: ['w1'], title: 'Fluff Matte', imageUrl: 'images/lip6.png',price: '\$9',quantity: 1),
  const Product(id: 'm7', category: ['w1'], title: 'Kylie Jenner', imageUrl: 'images/lip7.png',price: '\$21',quantity: 1),
  const Product(id: 'm8', category: ['w2'], title: 'e.l.f', imageUrl: 'images/pd1.png', price: '\$25', quantity: 1),
  const Product(id: 'm9', category: ['w2'], title: 'GUCCI', imageUrl: 'images/pd2.png', price: '\$16', quantity: 1),
  const Product(id: 'm10', category: ['w2'], title: 'NARS', imageUrl: 'images/pd3.png', price: '\$25', quantity: 1),
  const Product(id: 'm11', category: ['w2'], title: 'KOKO', imageUrl: 'images/pd4.png', price: '\$30', quantity: 1),
  const Product(id: 'm12', category: ['w3'], title: 'Shiny', imageUrl: 'images/esh1.png', price: '\$25', quantity: 1),
  const Product(id: 'm13', category: ['w3'], title: 'CLIO', imageUrl: 'images/esh2.png', price: '\$23', quantity: 1),
  const Product(id: 'm14', category: ['w3'], title: 'COLORFUL', imageUrl: 'images/esh3.png', price: '\$25', quantity: 1),
  const Product(id: 'm15', category: ['w3'], title: 'Colourpop', imageUrl: 'images/esh4.png', price: '\$16', quantity: 1),
  const Product(id: 'm16', category: ['w4'], title: 'RareBeauty', imageUrl: 'images/f1.png', price: '\$25', quantity: 1),
  const Product(id: 'm17', category: ['w4'], title: 'MARCJacobs', imageUrl: 'images/f2.png', price: '\$25', quantity: 1),
  const Product(id: 'm18', category: ['w4'], title: 'LauraMercier', imageUrl: 'images/f3.png', price: '\$25', quantity: 1),
  const Product(id: 'm19', category: ['w4'], title: 'Shiny', imageUrl: 'images/f4.png', price: '\$25', quantity: 1),
  const Product(id: 'm20', category: ['w5'], title: 'Rosy Rose', imageUrl: 'images/p1.png', price: '\$30', quantity: 1),
  const Product(id: 'm21', category: ['w5'], title: 'Diasy', imageUrl: 'images/p2.png', price: '\$14', quantity: 1),
  const Product(id: '20', category: ['w5'], title: 'vanilla', imageUrl: 'images/p3.png', price: '\$26', quantity: 1),
];
