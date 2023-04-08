// ignore_for_file: library_private_types_in_public_api

import 'package:example/demo/bar_chart/basic.dart';
import 'package:example/demo/bar_chart/basic2.dart';
import 'package:example/demo/bar_chart/horizontal.dart';
import 'package:example/demo/bar_chart/multiple.dart';
import 'package:example/demo/bar_chart/negative.dart';
import 'package:example/demo/bar_chart/sine.dart';
import 'package:example/demo/bar_chart/stacked.dart';
import 'package:example/demo/bar_chart/stacked2.dart';
import 'package:example/demo/even_more/dynamic.dart';
import 'package:example/demo/even_more/hourly.dart';
import 'package:example/demo/line_chart/basic.dart';
import 'package:example/demo/line_chart/colorful.dart';
import 'package:example/demo/line_chart/cubic.dart';
import 'package:example/demo/line_chart/dual_axis.dart';
import 'package:example/demo/line_chart/filled.dart';
import 'package:example/demo/line_chart/invert_axis.dart';
import 'package:example/demo/line_chart/multiple.dart';
import 'package:example/demo/line_chart/performance.dart';
import 'package:example/demo/other_chart/bubble.dart';
import 'package:example/demo/other_chart/candlestick.dart';
import 'package:example/demo/other_chart/combined.dart';
import 'package:example/demo/other_chart/radar.dart';
import 'package:example/demo/other_chart/scatter_plot.dart';
import 'package:example/demo/pie_chart/basic.dart';
import 'package:example/demo/pie_chart/half_pie.dart';
import 'package:example/demo/pie_chart/value_lines.dart';
import 'package:example/demo/res/styles.dart';
import 'package:example/demo/scrolling_chart/multiple.dart';
import 'package:example/demo/scrolling_chart/tall_bar.dart';
import 'package:example/demo/scrolling_chart/view_pager.dart';
import 'package:flutter/material.dart';
import 'package:mp_chart/mp/core/utils/color_utils.dart';

import 'demo/even_more/realtime.dart';
import 'demo/scrolling_chart/many_bar_chart.dart';

void main() {
//  debugPrintGestureArenaDiagnostics = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'example Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'example example'),
      routes: <String, WidgetBuilder>{
        '/line_chart/basic': (_) => const LineChartBasic(),
        '/line_chart/multiple': (_) => const LineChartMultiple(),
        '/line_chart/dual_axis': (_) => const LineChartDualAxis(),
        '/line_chart/invert_axis': (_) => const LineChartInvertAxis(),
        '/line_chart/cubic': (_) => const LineChartCubic(),
        '/line_chart/colorful': (_) => const LineChartColorful(),
        '/line_chart/performance': (_) => const LineChartPerformance(),
        '/line_chart/filled': (_) => const LineChartFilled(),
        '/bar_chart/basic': (_) => const BarChartBasic(),
        '/bar_chart/basic2': (_) => const BarChartBasic2(),
        '/bar_chart/multiple': (_) => const BarChartMultiple(),
        '/bar_chart/horizontal': (_) => const BarChartHorizontal(),
        '/bar_chart/stacked': (_) => const BarChartStacked(),
        '/bar_chart/negative': (_) => const BarChartNegative(),
        '/bar_chart/stacked2': (_) => const BarChartStacked2(),
        '/bar_chart/sine': (_) => const BarChartSine(),
        '/pie_chart/basic': (_) => const PieChartBasic(),
        '/pie_chart/value_lines': (_) => const PieChartValueLines(),
        '/pie_chart/half_pie': (_) => const PieChartHalfPie(),
        '/other_chart/combined_chart': (_) => const OtherChartCombined(),
        '/other_chart/scatter_plot': (_) => const OtherChartScatterPlot(),
        '/other_chart/bubble_chart': (_) => const OtherChartBubble(),
        '/other_chart/candlestick': (_) => const OtherChartCandlestick(),
        '/other_chart/redar_chart': (_) => const OtherChartRadar(),
        '/scrolling_chart/multiple': (_) => const ScrollingChartMultiple(),
        '/scrolling_chart/view_pager': (_) => const ScrollingChartViewPager(),
        '/scrolling_chart/tall_bar_chart': (_) => const ScrollingChartTallBar(),
        '/scrolling_chart/many_bar_charts': (_) =>
            const ScrollingChartManyBar(),
        '/even_more_line_chart/dynamic': (_) => const EvenMoreDynamic(),
        '/even_more_line_chart/realtime': (_) => const EvenMoreRealtime(),
        '/even_more_line_chart/hourly': (_) => const EvenMoreHourly(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PopupMenuItem<String> _item(String text, String id) {
    return PopupMenuItem<String>(
        value: id,
        child: Container(
            padding: const EdgeInsets.only(top: 15.0),
            child: Center(
                child: Text(
              text,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: ColorUtils.BLACK,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ))));
  }

  void _itemClick(String action) {
    switch (action) {
      case 'A':
        break;
      case 'B':
        break;
      case 'C':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              _item('View on GitHub', 'A'),
              _item('Problem Report', 'B'),
              _item('Developer Website', 'C'),
            ],
            onSelected: (String action) {
              _itemClick(action);
            },
          ),
        ],
      ),
      body: CustomScrollView(shrinkWrap: false, slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Line Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/line_chart/basic'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Basic",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple line chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/line_chart/multiple'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Multiple",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Show mutiple data sets.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/line_chart/dual_axis'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Dual Axis",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Line chart with dual y-axes.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/line_chart/invert_axis'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Inverted Axis",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Inverted y-axis.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/line_chart/cubic'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Cubic",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Line chart with a cubic line shape.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/line_chart/colorful'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Colorful",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Colorful line chart",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/line_chart/performance'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Performance",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Render 30.000 data points smoothly.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/line_chart/filled'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Filled",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Colored area between two lines.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Bar Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/basic'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Basic",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple bar chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/basic2'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Basic 2",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Variation of the simple bar chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/multiple'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Multiple",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Show multiple data sets.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/bar_chart/horizontal'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Horizontal",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Render bar chart horizontally.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/stacked'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Stacked",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Stacked bar chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/negative'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Negative",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Positive and negative values with unique colors.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/stacked2'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Stacked 2",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Stacked bar chart with negative values.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/bar_chart/sine'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Sine",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Sine function in bar chart format.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Pie Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/pie_chart/basic'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Basic",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple pie chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/pie_chart/value_lines'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Value lines",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Stylish lines drawn outward from slices.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed('/pie_chart/half_pie'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Half Pie",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "180° (half) pie chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Other Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/other_chart/combined_chart'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Combined Chart",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Bar and line chart together.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/other_chart/scatter_plot'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Scatter Plot",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple scatter plot.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/other_chart/bubble_chart'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Bubble Chart",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple Bubble chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/other_chart/candlestick'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Candlestick",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple financial chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/other_chart/redar_chart'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Redar Chart",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Simple web chart.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Scrolling Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/scrolling_chart/multiple'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Multiple",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Various types of charts.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/scrolling_chart/view_pager'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "View Pager",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Swipe through different charts.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/scrolling_chart/tall_bar_chart'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Tall Bar Chart",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Bars bigger than your screen.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/scrolling_chart/many_bar_charts'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Many Bar Charts",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "More bars than your screen can handle!.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          child: const Center(
                              child: Text(
                            "Even More Line Charts",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ColorUtils.BLACK,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                      Gaps.line
                    ],
                  ),
                ),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/even_more_line_chart/dynamic'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Dynamic",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Build a line chart by adding points and sets.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/even_more_line_chart/realtime'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Realtime",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Add data points in realtime.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed('/even_more_line_chart/hourly'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Hourly",
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ColorUtils.BLACK,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 15),
                              child: const Text(
                                "Uses the current time to add a data point for each hour.",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: ColorUtils.BLACK, fontSize: 12),
                              ),
                            ),
                            Gaps.line
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
