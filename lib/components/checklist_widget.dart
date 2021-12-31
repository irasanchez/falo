import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChecklistWidget extends StatefulWidget {
  const ChecklistWidget({
    Key key,
    this.tasks,
  }) : super(key: key);

  final dynamic tasks;

  @override
  _ChecklistWidgetState createState() => _ChecklistWidgetState();
}

class _ChecklistWidgetState extends State<ChecklistWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
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
              'tasks',
              style: FlutterFlowTheme.title2,
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.title3,
                ),
                subtitle: Text(
                  'Lorem ipsum dolor...',
                  style: FlutterFlowTheme.subtitle2,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
