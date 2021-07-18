class CurrentOrderModel {
  final String restaurantName;
  final String restaurantAddress;
  final String food;
  final String foodInfo1;
  final String foodQuantity;
  final String stars;
  final String ratings;
  final String imageUrl;

  CurrentOrderModel(
      {this.restaurantName,
      this.restaurantAddress,
      this.food,
      this.foodInfo1,
      this.imageUrl,
      this.foodQuantity,
      this.stars,
      this.ratings});
}