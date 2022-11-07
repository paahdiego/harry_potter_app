import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/core/app_text_styles.dart';

class ImageNetworkBuilder extends StatelessWidget {
  const ImageNetworkBuilder(
    this.imageUrl, {
    Key? key,
    this.boxFit,
  }) : super(key: key);

  final String imageUrl;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: boxFit,
      loadingBuilder: (context, child, loadingProgress) {
        double? currentProgress;

        if (loadingProgress != null) {
          int? totalBytes = loadingProgress.expectedTotalBytes;
          if (totalBytes != null) {
            currentProgress =
                (loadingProgress.cumulativeBytesLoaded / totalBytes).toDouble();
          }
        }

        if (loadingProgress == null) {
          return child;
        } else {
          return Container(
            color: AppColors.backgroundColor,
            child: Center(
              child: CircularProgressIndicator(
                value: currentProgress,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.primary,
                ),
              ),
            ),
          );
        }
      },
      errorBuilder: (context, error, _) {
        return Container(
          color: AppColors.secondary,
          padding: const EdgeInsets.all(5),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.broken_image),
              Text(
                'image not found',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.bodyText1(context)?.copyWith(fontSize: 10),
              ),
            ],
          ),
        );
      },
    );
  }
}
