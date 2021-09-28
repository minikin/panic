<h1 align="center">Panic</h1>

<p align="center">
  <a href="https://github.com/minikin/panic/">
    <img src="https://github.com/minikin/panic/blob/main/github_assets/panic.png?raw=true" alt="Panic screenshots" />
  </a>
</p>

<p align="center">

  <p align="center">
  <a href="https://github.com/minikin/panic">
    <img src="https://img.shields.io/badge/platforms-iOS%20%7C%20iPadOS%20%7C%20macOS%20%7C%20Android%20%7C%20Linux%20%7C%20Windows-green.svg" alt="Supported platforms" />
  </a>
 <p align="center">
   
   <a href="https://github.com/minikin/panic/actions">
    <img src="https://github.com/minikin/panic/actions/workflows/on_pull_request.yml/badge.svg" alt="Current Build Status." />
  </a>
   
   <a href="https://github.com/minikin/panic/blob/main/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="Panic is released under the MIT license." />
  </a>

  <a href="https://github.com/tenhobi/effective_dart">
    <img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="Effective Dart" />
  </a>

  <a href="https://github.com/minikin/panic/blob/main/CODE_OF_CONDUCT.md">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome!" />
  </a>

  </br>

</p>

# Content

- [Features](#features)
- [Requirements](#requirements)
- [Install](#install)
- [Example](#example)
- [Support](#support)
- [License](#license)

## Features

Panics a Flutter app.

This allows a flutter app to terminate immediately and provide feedback to the caller of the app.
Panic should be used when an app reaches an unrecoverable state.

## Requirements

- Dart: 2.14.0+
- Flutter : 2.5.0+

## Install

```yaml
dependencies:
  panic: ^0.0.1
```

## Example

1. Add `GlobalKey<NavigatorState>()` to `MaterialApp` widget.

```dart
// `appKey` should be globally accessible in an app.
final appKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: appKey,
      home: Home(),
    );
  }
}

```

2. Initialized `Panic`.

```dart
import 'package:panic/panic.dart';
// `panic` should be globally accessible in an app
final panic = Panic(appKey);
```

3. Panic a flutter app when you really need it.

```dart
  static Future<Result<DiscoverResponse?, NetworkError>> fetchDiscover() async {
    final response = await _client.get(
      Uri.parse('$baseUrl/discover/movie?api_key=$themoviedbApiKey&page=1'),
    );

    if (response.statusCode == 200) {
      // Panic app if some important parameters are missed e.g.,
      // some field in a Header or in a Body.
      if (!response.headers.containsKey('MY MISSING KEY')) {
        panic.app();
      }
      return Success(DiscoverResponse.fromJson(response.body));
    } else {
      throw NetworkError(response.statusCode);
    }
  }
```

To see [examples](https://github.com/minikin/panic/tree/main/example) of the following package on a device or simulator:

```sh
cd example && flutter run
```

## Support

Post issues and feature requests on the GitHub [issue tracker](https://github.com/minikin/panic/issues).

## License

The source code of Panic project is available under the MIT license.
See the [LICENSE](https://github.com/minikin/panic/blob/main/LICENSE) file for more info.
