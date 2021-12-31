import '../backend/backend.dart';
import '../components/card_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({
    Key key,
    this.cards,
  }) : super(key: key);

  final dynamic cards;

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
              child: Text(
                'Falo 🍆',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.secondaryColor,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.05, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 10000,
                decoration: BoxDecoration(),
                child: StreamBuilder<List<DashboardCardsRecord>>(
                  stream: queryDashboardCardsRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.secondaryColor,
                          ),
                        ),
                      );
                    }
                    List<DashboardCardsRecord>
                        listViewDashboardCardsRecordList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewDashboardCardsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewDashboardCardsRecord =
                            listViewDashboardCardsRecordList[listViewIndex];
                        return CardWidget(
                          card: listViewDashboardCardsRecord,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
