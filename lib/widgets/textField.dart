
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
  bool _isComposing;
  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
          child: Row(
            children: <Widget>[
              Container(
                  child: IconButton(
                icon: Icon(
                  Icons.photo_camera,
                ),
                onPressed: () {},
              )),
              Expanded(
                child: TextField(
                  onChanged: (text) {
                    setState(() {
                      _isComposing = text.length > 0;
                    });
                  },
                  decoration:
                      InputDecoration.collapsed(hintText: 'Enviar Mensagem'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: Theme.of(context).platform == TargetPlatform.iOS
                    ? CupertinoButton(
                        child: Text('Enviar'),
                        onPressed: _isComposing ? () {} : null,
                      )
                    : IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {},
                      ),
              )
            ],
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey[200])))
              : null),
    );
  }
}
