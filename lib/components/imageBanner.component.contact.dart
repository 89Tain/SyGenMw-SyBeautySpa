import 'package:beauty_spa/constants/constants.dart';
import 'package:flutter/material.dart';

class TImageBanner extends StatefulWidget {
  final String assetPath;
  const TImageBanner(this.assetPath, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TImageBannerState createState() => _TImageBannerState();
}

class _TImageBannerState extends State<TImageBanner> {
  bool _isLoading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(AssetImage(widget.assetPath), context).then((_) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 200.0,
        ),
        decoration: BoxDecoration(
          color: Constants().primaryColor,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Conditional rendering for loading indicator or placeholder
            if (_isLoading)
              const CircularProgressIndicator(), // Example loading indicator
            // Actual image
            AnimatedOpacity(
              opacity: _isLoading ? 0.0 : 1.0,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(
                widget.assetPath,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
