import 'package:flutter/material.dart';
import 'package:flutter_hero_practise/person.dart';

class DetailScreen extends StatefulWidget {
  final Person person;

  const DetailScreen({Key? key, required this.person}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _nameSlideAnimation;
  late Animation<Offset> _professionSlideAnimation;
  late Animation<Offset> _birthInfoSlideAnimation;
  late Animation<Offset> _websiteIconAnimation;
  late Animation<Offset> _shareIconAnimation;
  late Animation<Offset> _facebookIconAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _nameSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
    ));

    _professionSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.1, 0.5, curve: Curves.easeOut),
    ));

    _birthInfoSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.2, 0.6, curve: Curves.easeOut),
    ));

    _websiteIconAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.4, 0.7, curve: Curves.easeOut),
    ));

    _shareIconAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.5, 0.8, curve: Curves.easeOut),
    ));

    _facebookIconAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.6, 0.9, curve: Curves.easeOut),
    ));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: widget.person.id,
              child: Transform.scale(
                scale: 2.0,
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  widget.person.imageUrl,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 66.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideTransition(
                  position: _nameSlideAnimation,
                  child: Text(
                    widget.person.name,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SlideTransition(
                  position: _professionSlideAnimation,
                  child: Text(
                    widget.person.profession,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[300],
                      shadows: const [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SlideTransition(
                  position: _birthInfoSlideAnimation,
                  child: Text(
                    widget.person.birthInfo,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[300],
                      shadows: const [
                        Shadow(
                          blurRadius: 8.0,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              children: [
                SlideTransition(
                  position: _websiteIconAnimation,
                  child: IconButton(
                    icon: const Icon(Icons.language, color: Colors.white),
                    onPressed: () {},
                    iconSize: 24,
                  ),
                ),
                const SizedBox(height: 12),
                SlideTransition(
                  position: _shareIconAnimation,
                  child: IconButton(
                    icon: const Icon(Icons.share, color: Colors.white),
                    onPressed: () {},
                    iconSize: 24,
                  ),
                ),
                const SizedBox(height: 12),
                SlideTransition(
                  position: _facebookIconAnimation,
                  child: IconButton(
                    icon: const Icon(Icons.facebook, color: Colors.white),
                    onPressed: () {},
                    iconSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
