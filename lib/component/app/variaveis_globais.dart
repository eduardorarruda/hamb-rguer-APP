// ignore_for_file: file_names, non_constant_identifier_names

List<Map<String, dynamic>> pedidos = [];

List<Map<String, dynamic>> pedidosFinalizados = [];

int numeroPedido = 1;

List<Map<String, dynamic>> pedidosFinalizadosEntregue = [];

final List<Map<String, dynamic>> Menu = [
  {
    "title": "Combos",
    "items": 4,
    "prices": [75.00, 95.00, 40.50, 100.00],
    "names": [
      "COMBO FRANGO",
      "COMBO DE BURGER EMPAMADO",
      "COMBO 4",
      "COMBO DE DUPLO CHEESE BACON"
    ],
    "images": [
      "assets/img/COMBO FRANGO.png",
      "assets/img/COMBO DE BURGER EMPAMADO.png",
      "assets/img/COMBO4.png",
      "assets/img/COMBO DE DUPLO CHEESE BACON.png"
    ],
    "descriptions": [
      "Satisfatório Combo 3 da categoria 'Combos', composto por dois suculentos hambúrgueres de frango cuidadosamente empanados, proporcionando uma crosta crocante e saborosa. Essa deliciosa combinação é acompanhada por uma refrescante Coca-Cola de 1 litro, perfeitamente gelada. Uma refeição completa e deliciosa que irá satisfazer o seu paladar e saciar a sua fome!",
      "2 Hamburgueres De Queijo Empanado, 2 Fritas, 1 Coca De 1l",
      "1 Cheese bacon com fritas mais uma Coca lata 350ml",
      "2 Hamburgueres Duplo Cheese Bacon, 2 Fritas E 1 Coca De 1l"
    ],
  },
  {
    "title": "Petiscos",
    "items": 6,
    "prices": [20.0, 30.0, 45.0, 35.0, 50.0, 35.0],
    "names": [
      "Batata frita",
      "Batata Frita Cheddar e Bacon",
      "Bolinho de Cupim cremoso",
      "Isca de Frango",
      "Isca de tilápia",
      "Disco de carne"
    ],
    "images": [
      "assets/img/BATATA FRITA.png",
      "assets/img/Batata Frita Cheddar e Bacon.png",
      "assets/img/BOLINHO DE CUPIM CREMOSO 8 UNID.png",
      "assets/img/ISCA DE FRANGO.png",
      "assets/img/ISCA DE TILÁPIA.png",
      "assets/img/DISCO DE CARNE.png",
    ],
    "descriptions": [
      "Batatas fritas crocantes e sequinhas.",
      "Batatas fritas cobertas com queijo cheddar derretido e bacon crocante.",
      "Bolinho de cupim desfiado com recheio cremoso, frito até ficar crocante por fora.",
      "Isca de frango empanada e frita, servida com molho especial.",
      "Isca de tilápia empanada e frita, acompanhada de molho tártaro.",
      "Disco de carne moída temperada, frito até ficar dourado e crocante."
    ],
  },
  {
    "title": "Hamburgueres",
    "items": 9,
    "prices": [26.0, 30.0, 35.0, 41.0, 32.40, 38.0, 36.0, 31.0, 32.0],
    "names": [
      "Cheese Burger",
      "Cheese Salada",
      "X-Bacon",
      "Cheese Duplo",
      "Australiano Black",
      "Burger de Queijo Empanado",
      "Costela Black",
      "Burger de Frango",
      "Buger de Tilápia"
    ],
    "images": [
      "assets/img/Cheese Burger.png",
      "assets/img/Cheese Salada.png",
      "assets/img/X-Bacon.png",
      "assets/img/Cheese Duplo.png",
      "assets/img/Australiano Black.png",
      "assets/img/Burger de Queijo Empanado.png",
      "assets/img/Costela Black.png",
      "assets/img/Burger de Frango.png",
      "assets/img/Buger de Tilápia.png"
    ],
    "descriptions": [
      "Hambúrguer clássico com queijo, alface, tomate e molho especial.",
      "Hambúrguer com queijo, alface, tomate, presunto e ovo.",
      "Hambúrguer com queijo, bacon crocante, alface, tomate e maionese.",
      "Dois hambúrgueres de carne, queijo, alface, tomate e maionese.",
      "Hambúrguer gourmet com carne Angus, queijo, cebola crispy e molho especial.",
      "Hambúrguer de queijo empanado, servido com alface, tomate e maionese.",
      "Hambúrguer com costela suína desfiada, queijo cheddar e molho barbecue.",
      "Hambúrguer de frango grelhado, queijo, alface, tomate e molho especial.",
      "Hambúrguer de tilápia empanada, servido com alface, tomate e molho tártaro."
    ],
  },
  {
    "title": "Pratos Saudáveis",
    "items": 3,
    "prices": [25.20, 28.0, 28.0],
    "names": [
      "PRATO DE HAMBURGER BOVINO",
      "Prato de Filé de frango",
      "Prato com Filé de Tilápia",
    ],
    "images": [
      "assets/img/PRATO DE HAMBURGER BOVINO.png",
      "assets/img/Prato de Filé de frango.png",
      "assets/img/Prato com Filé de Tilápia.png"
    ],
    "descriptions": [
      "Prato com hambúrguer bovino grelhado, acompanhado de arroz, feijão e salada.",
      "Filé de frango grelhado com acompanhamentos saudáveis e salada.",
      "Filé de tilápia grelhado com acompanhamentos saudáveis e salada."
    ],
  },
  {
    "title": "Milk Shakes",
    "items": 4,
    "prices": [26.0, 26.0, 26.0, 26.0],
    "names": [
      "Milk Shake De Nuttela",
      "Milk Shake De Morango",
      "Milk Shake De Paçoca",
      "Milk Shake De Ovomaltine"
    ],
    "images": [
      "assets/img/Milk Shake De Nuttela.png",
      "assets/img/Milk Shake De Morango.png",
      "assets/img/Milk Shake De Paçoca.png",
      "assets/img/Milk Shake De Ovomaltine.png"
    ],
    "descriptions": [
      "Milk shake cremoso com Nutella, leite e sorvete.",
      "Milk shake refrescante de morango com leite e sorvete.",
      "Milk shake delicioso de paçoca com leite e sorvete.",
      "Milk shake encorpado de Ovomaltine com leite e sorvete."
    ],
  },
  {
    "title": "Sucos Naturais",
    "items": 8,
    "prices": [10.0, 11.0, 9.0, 8.0, 8.0, 8.0, 8.0, 11.0],
    "names": [
      "Suco de Laranja",
      "Suco de Maracujá",
      "Suco de Acerola",
      "Suco de Abacaxi",
      "Suco de Caju",
      "Suco de Limão",
      "Suco de Cajá",
      "Suco de Morango"
    ],
    "images": [
      "assets/img/suco de Laranja 500 ml.png",
      "assets/img/suco de Maracujá.png",
      "assets/img/suco de Acerola.png",
      "assets/img/suco de Abacaxi.png",
      "assets/img/suco de Caju.png",
      "assets/img/Suco de Limão.png",
      "assets/img/suco de Cajá.png",
      "assets/img/suco de Morango.png"
    ],
    "descriptions": [
      "Suco natural de laranja fresco e sem adição de açúcar.",
      "Suco natural de maracujá com um toque de limão, refrescante e saudável.",
      "Suco natural de acerola, rico em vitamina C.",
      "Suco natural de abacaxi, perfeito para refrescar nos dias quentes.",
      "Suco natural de caju, delicioso e nutritivo.",
      "Suco natural de limão, refrescante e revitalizante.",
      "Suco natural de cajá, saboroso e cheio de nutrientes.",
      "Suco natural de morango, doce e refrescante."
    ],
  },
  {
    "title": "Soda Italiana",
    "items": 3,
    "prices": [12.0, 12.0, 7.99],
    "names": [
      "Maça Verde",
      "Morango",
      "Limão Siciliano",
    ],
    "images": [
      "assets/img/Maça Verde.png",
      "assets/img/Morango.png",
      "assets/img/Limão Siciliano.png"
    ],
    "descriptions": [
      "Refrescante soda italiana com sabor de maçã verde.",
      "Soda italiana com sabor natural de morango, sem adição de corantes.",
      "Soda italiana com sabor cítrico e refrescante de limão siciliano."
    ],
  },
  {
    "title": "Cremes",
    "items": 3,
    "prices": [16.0, 10.40, 10.40],
    "names": [
      "Creme de morango",
      "Creme de Maracujá",
      "Creme de cupuaçu",
    ],
    "images": [
      "assets/img/Creme de morango.png",
      "assets/img/Creme de Maracujá.png",
      "assets/img/Creme de cupuaçu.png"
    ],
    "descriptions": [
      "Creme gelado de morango, perfeito para sobremesa.",
      "Creme refrescante de maracujá, ideal para dias quentes.",
      "Creme de cupuaçu cremoso e saboroso."
    ],
  },
  {
    "title": "Bebidas",
    "items": 9,
    "prices": [6.0, 6.0, 6.0, 4.0, 4.0, 7.0, 7.0, 9.0, 10.0],
    "names": [
      "Coca-Cola Lata 350ml",
      "Coca-Cola Zero 350ml",
      "Refrigerante Guaraná Antarctica 350ml",
      "Água Crystal sem Gás 500ml",
      "Água Mineral com Gás Indaiá Garrafa 500ml",
      "Coca-Cola 600ml",
      "Refrigerante Antarctica Guaraná 600 Ml",
      "Guaraná Antarctica 1l",
      "Coca-Cola Original 1l"
    ],
    "images": [
      "assets/img/Coca-Cola Lata 350ml.png",
      "assets/img/Coca-Cola Zero 350ml.png",
      "assets/img/Refrigerante Guaraná Antarctica 350ml.png",
      "assets/img/Água Crystal sem Gás 500ml.png",
      "assets/img/Água Mineral com Gás Indaiá Garrafa 500ml.png",
      "assets/img/Coca-Cola 600ml.png",
      "assets/img/Refrigerante Antarctica Guaraná 600 Ml.png",
      "assets/img/Guaraná Antarctica 1l.png",
      "assets/img/Coca-Cola Original 1l.png"
    ],
    "descriptions": [
      "Coca-Cola clássica em lata de 350ml.",
      "Coca-Cola sem açúcar em lata de 350ml.",
      "Refrigerante de Guaraná Antarctica em lata de 350ml.",
      "Água mineral Crystal, sem gás, garrafa de 500ml.",
      "Água mineral com gás Indaiá, garrafa de 500ml.",
      "Coca-Cola clássica em garrafa de 600ml.",
      "Refrigerante de Guaraná Antarctica em garrafa de 600ml.",
      "Guaraná Antarctica em garrafa de 1 litro.",
      "Coca-Cola original em garrafa de 1 litro."
    ],
  },
  {
    "title": "Cervejas Long Neck",
    "items": 3,
    "prices": [10.0, 9.0, 10.0],
    "names": [
      "Cerveja Puro Malte Stella Artois",
      "Cerveja Sol Premium",
      "Heineken Long Neck"
    ],
    "images": [
      "assets/img/Cerveja Puro Malte Stella Artois.png",
      "assets/img/Cerveja Sol Premium.png",
      "assets/img/Heineken Long Neck.png"
    ],
    "descriptions": [
      "Cerveja Puro Malte Stella Artois, long neck.",
      "Cerveja Sol Premium, long neck.",
      "Heineken, long neck."
    ],
  }
];
