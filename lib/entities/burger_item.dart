class BurgerItem {
  final String uri;
  final String label;
  final double cost;

  const BurgerItem(this.uri, this.label, this.cost);
  const BurgerItem.defaultItem() : this("images/beef.png", "not-found", 0);
}
