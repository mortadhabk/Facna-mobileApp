import 'package:flutter/material.dart';

class OpportunitiesPage extends StatefulWidget {
  @override
  _OpportunitiesPageState createState() => _OpportunitiesPageState();
}

class _OpportunitiesPageState extends State<OpportunitiesPage> with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {
   super.build(context);
       return Scaffold(
         appBar: AppBar(
           title: Text('Opportunities Page'),  
         ),    
       );
  
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}