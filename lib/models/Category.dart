class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/male.png",
    title: "Male",
  ),
  Category(
    icon: "assets/icons/female.png",
    title: "Female",
  ),
  Category(
    icon: "assets/icons/child.png",
    title: "Child",
  ),
  //Category(
  //  icon: "assets/icons/Tshirt.svg",
  //  title: "Tshirt",
  //),
];
