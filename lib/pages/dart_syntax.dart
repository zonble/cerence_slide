import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class DartSyntax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code = """
class DartLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Dart Language 🎯 '),
          Divider(),
          Bullet('Common purpose object oriented programming language'),
          Bullet('Was designed to be compiled to JavaScript'),
          Bullet('Has its own VM nowadays'),
          Bullet('Could be used on CLI and backend'),
          Bullet('Much like Java/C#'),
          Bullet('Good stuff:'),
          Bullet('✅ Nullabiity', level: 1),
          Bullet('✅ Swift/Ojective-C like extensions', level: 1),
          Bullet('✅ Mixin', level: 1),
        ],
      ),
    );
  }
}
""";
    return SimplePage(
        child: SyntaxView(
      code: code,
      syntax: Syntax.DART,
      syntaxTheme: SyntaxTheme.dracula()..baseStyle = TextStyle(fontSize: 24),
      withZoom: true,
      withLinesCount: false,
    ));
  }
}
