part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final FoodModels foodModels;
  final double itemWidth;
  const FoodListItem(
      {Key? key, required this.foodModels, required this.itemWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(foodModels.picturePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: itemWidth - 182, //(60 + 12 + 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodModels.name,
                style: blackText16.copyWith(fontWeight: FontWeight.w400),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                foodModels.price.toString(),
                style: greyText14.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
        RatingStars(rate: foodModels.rate),
      ],
    );
  }
}
