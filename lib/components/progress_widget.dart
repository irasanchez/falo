import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({Key key}) : super(key: key);

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.05, -0.85),
      child: Container(
        decoration: BoxDecoration(),
        alignment: AlignmentDirectional(0, 0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Text(
                'progress',
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.primaryColor,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.primaryColor,
                border: Border.all(
                  color: FlutterFlowTheme.tertiaryColor,
                  width: 5,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: 100,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: MediaQuery.of(context).size.height * 1,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.secondaryColor,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.secondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
