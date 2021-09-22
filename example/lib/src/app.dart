import 'package:flutter/material.dart';
import 'package:panic/panic.dart';
import 'package:result_type/result_type.dart';

import 'features/discover/discover_screen.dart';
import 'models/index.dart';
import 'services/networking/themoviedb_api.dart';

final routeObserver = RouteObserver<ModalRoute<void>>();
final appKey = GlobalKey<NavigatorState>();

final panic = Panic(appKey);

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: appKey,
      navigatorObservers: [routeObserver],
      home: FutureBuilder<Result<DiscoverResponse?, NetworkError>>(
        future: ThemoviedbApi.fetchDiscover(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return DiscoverScreen(discoverResponse: snapshot.data!.success!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
