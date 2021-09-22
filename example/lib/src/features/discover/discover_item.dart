import 'package:flutter/material.dart';

import '../../app.dart';
import '../../models/index.dart';

class DiscoverItem extends StatefulWidget {
  final MovieInListResponse item;
  final ValueChanged<int> onTapped;
  final ValueChanged<int> onLongPress;

  const DiscoverItem({
    required this.item,
    required this.onTapped,
    required this.onLongPress,
  });

  @override
  _DiscoverItemState createState() => _DiscoverItemState();
}

// ignore: prefer_mixin
class _DiscoverItemState extends State<DiscoverItem> with RouteAware {
  late bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: UniqueKey(),
      behavior: HitTestBehavior.opaque,
      onTap: () => widget.onTapped(widget.item.id),
      onLongPress: () => widget.onLongPress(widget.item.id),
      onLongPressStart: (_) => setState(() => isLoading = true),
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            child: Image.network(
              widget.item.posterImagePath,
              fit: BoxFit.cover,
            ),
          ),
          if (isLoading) const _Loading(),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didPopNext() {
    setState(() => isLoading = false);
  }

  @override
  void didPush() {}

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    setState(() => isLoading = false);
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.6),
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
