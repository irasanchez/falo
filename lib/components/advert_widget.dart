import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertWidget extends StatefulWidget {
  const AdvertWidget({
    Key key,
    this.randomAd,
  }) : super(key: key);

  final AdsRecord randomAd;

  @override
  _AdvertWidgetState createState() => _AdvertWidgetState();
}

class _AdvertWidgetState extends State<AdvertWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(1, 0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 15,
            borderWidth: 1,
            buttonSize: 30,
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 15,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.randomAd.title,
              style: FlutterFlowTheme.title2,
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.randomAd.description,
              style: FlutterFlowTheme.subtitle2,
            ),
          ],
        ),
      ],
    );
  }
}
