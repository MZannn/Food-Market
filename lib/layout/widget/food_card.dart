part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final FoodModels foodModels;
  const FoodCard({Key? key, required this.foodModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 15,
              color: Colors.black12,
            ),
          ],
          borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            image: DecorationImage(
                image: NetworkImage(mockFood.picturePath), fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(12, 12, 12, 6),
          width: 210,
          child: Text(foodModels.name),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: RatingStars(rate: foodModels.rate),
        ),
      ]),
    );
  }
}
