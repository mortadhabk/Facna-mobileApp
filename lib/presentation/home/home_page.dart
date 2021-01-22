import 'package:facna/presentation/Opportunities/opportunities_pages.dart';
import 'package:flutter/material.dart';
import 'package:facna/presentation/auth/account_page.dart';
import 'package:facna/presentation/favorities/favorities_page.dart';
import 'package:facna/presentation/forum/questions_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController= PageController();
  final List<Widget> screens = [
       OpportunitiesPage(),
       QuestionsPage(),
       FavoritiesPage(),
       AccountPage()

  ];

  int _selectedIndex=0;

  void _onPageChange(int PageIndex){
    setState((){
      _selectedIndex = PageIndex;
    });
  }
  void _onItemTapped(int Itemindex){
      _pageController.jumpToPage(Itemindex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: PageView(
        children: screens,
        controller: _pageController,
        onPageChanged: _onPageChange,
        physics: NeverScrollableScrollPhysics(),
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem( title: Text("Opportunities",style:TextStyle(color: _selectedIndex==0 ? Colors.blue : Colors.grey )),
           icon: Icon(Icons.home,color: _selectedIndex==0 ? Colors.blue : Colors.grey)),
          // ignore: deprecated_member_use
          BottomNavigationBarItem( title: Text("Forum",style:TextStyle(color: _selectedIndex==1 ? Colors.blue : Colors.grey )),
           icon: Icon(Icons.chat,color: _selectedIndex==1 ? Colors.blue : Colors.grey)),
          // ignore: deprecated_member_use
          BottomNavigationBarItem( title: Text("Favorities",style:TextStyle(color: _selectedIndex==2 ? Colors.blue : Colors.grey ))
          , icon: Icon(Icons.favorite,color: _selectedIndex==2 ? Colors.blue : Colors.grey)),
          // ignore: deprecated_member_use
          BottomNavigationBarItem( title: Text("Account",style:TextStyle(color: _selectedIndex==3 ? Colors.blue : Colors.grey ))
          , icon: Icon(Icons.person,color: _selectedIndex==3 ? Colors.blue : Colors.grey)),

        ],
      ),
    );
  }
}