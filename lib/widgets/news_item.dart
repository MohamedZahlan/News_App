import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.newsModel}) : super(key: key);
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // News Image
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: newsModel.image == null
              ? Image.asset('assets/images/no_image.jpg')
              : Image.network(
                  newsModel.image!,
                  //'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=16x9&q=h_833,w_1480,c_fill',
                  height: height(context) / 4,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset('assets/images/no_image.jpg');
                  },
                ),
        ),
        // News Text
        ListTile(
          title: Text(
            newsModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          subtitle: Text(
            newsModel.subtitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitleTextStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 15,
              ),
        ),
      ],
    );
  }
}
