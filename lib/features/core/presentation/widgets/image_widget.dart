import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double maxWidth;
  final double maxHeight;
  final String assetUrl;
  final bool isLocal;
  final BoxFit fit;
  final double radius;
  final Color splashColor;
  final VoidCallback onPressed;

  const ImageWidget({
    Key key,
    @required this.url,
    this.maxWidth = double.maxFinite,
    this.maxHeight = double.maxFinite,
    this.assetUrl,
    this.fit = BoxFit.cover,
    this.splashColor = Colors.black12,
    this.radius = 12.0,
    this.isLocal = false,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url.isNullOrBlank) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          assetUrl ?? AppAssets.user,
          fit: fit,
        ),
      );
    } else {
      return Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: CachedNetworkImage(
          fit: fit,
          placeholderFadeInDuration: Duration(milliseconds: 300),
          imageUrl: url,
          imageBuilder: (context, provider) => Ink.image(
            image: provider,
            fit: fit,
            width: maxWidth,
            height: maxHeight,
            child: InkWell(
              splashColor: splashColor,
              onTap: onPressed,
            ),
          ),
          placeholder: (_, url) => ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxHeight,
              maxWidth: maxWidth,
            ),
            child: Center(
              child: CircularProgressBar.adaptive(
                width: App.width * 0.06,
                height: App.width * 0.06,
                strokeWidth: 2.5,
              ),
            ),
          ),
          errorWidget: (context, url, error) => ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxHeight,
              maxWidth: maxWidth,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('${AppAssets.owner}'),
              backgroundColor: Theme.of(context).accentColor,
              radius: 15.0,
            ),
          ),
        ),
      );
    }
  }
}
