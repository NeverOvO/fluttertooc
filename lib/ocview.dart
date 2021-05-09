import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class SettingPersonalInfoView extends StatefulWidget {
  final arguments;
  const SettingPersonalInfoView({Key? key, this.arguments}) : super(key: key);

  @override
  _SettingPersonalInfoViewState createState() => _SettingPersonalInfoViewState();
}

class _SettingPersonalInfoViewState extends State<SettingPersonalInfoView> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("半OC原生页面"),
        ),
        body: getMyPatformView(),
      ),
    );
  }


  Widget getMyPatformView() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: 'MyUiKitView',
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'MyUiKitView',
      );
    }

    return Text('$defaultTargetPlatform is not yet supported by this plugin');
  }
}