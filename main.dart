class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method to top up balance
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // Method to pay bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }

  // Method to display information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }
}

// Part 2: StudentCard using inheritance

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // Override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay method
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

// Part 3 will be completed here

void main() {
  // My numbers: D = 24, L = 4
  // Starting balance = 1240 RWF
  // Bus fare = 224 RWF
  // Student discount = 14%

  BusCard card = BusCard('Allen', 1240);

  card.owner = 'Al';
  card.showInfo();

  //TODO 5
  card.owner = 'Allen';
  card.showInfo();

  //TODO 6
  card.topUp(100);
card.topUp(2000);

//TODO 7
  card.pay(244);
  card.pay(244);
  card.showInfo();

  //TODO 8
  StudentCard studentCard = StudentCard('Allen', 1240, 14);

// TODO 9
  studentCard.pay(224);
  studentCard.showInfo();
}