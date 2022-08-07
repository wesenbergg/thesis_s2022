class BurgerItem {
  final String uri;
  final String label;
  final double cost;
  int amount;

  BurgerItem(this.uri, this.label, this.cost, {this.amount = 1});
  BurgerItem.defaultItem() : this("images/beef.png", "not-found", 0, amount: 0);
}
