import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key key,
    this.card,
  }) : super(key: key);

  final DashboardCardsRecord card;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.tertiaryColor,
      child: Column(
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
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                widget.card.cardTitle,
                style: FlutterFlowTheme.title2,
              ),
            ),
          ),
          if ((widget.card.cardType) != 'progress')
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  widget.card.cardDescription,
                  style: FlutterFlowTheme.subtitle2,
                ),
              ),
            ),
          if ((widget.card.cardType) != 'progress')
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  fillColor: FlutterFlowTheme.primaryColor,
                  icon: Icon(
                    Icons.chevron_right,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 30,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}
