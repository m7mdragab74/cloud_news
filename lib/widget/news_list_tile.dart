import 'package:cloud_news/models/article_model.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            articleModel.image ?? '',
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Image.asset(
                  'assets/360_F_297016511_NWrJG1s3mpyjqD3hwdKidfYsvhEnrPm4.jpg');
            },
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        )
      ],
    );
  }
}
