import 'package:books_library/src/App/models/book_model.dart';
import 'package:books_library/src/App/models/repositories/books_api.dart';
import 'package:books_library/src/view.dart';
import 'package:flutter/material.dart';


class BookHomePage extends StatefulWidget {
  @override
  _BookHomePageState createState() => _BookHomePageState();
}

class _BookHomePageState extends State<BookHomePage> {
  static const Curve scrollCurve = Curves.fastOutSlowIn;
  final PageController controller = PageController();
  int _selectedIndex = 0;


  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List<Book> filteredBook = new List<Book>();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text( 'Books Library' );


  _BookHomePageState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredBook = books;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    filteredBook = books;
  }

  @override
  Widget build(BuildContext context) {

    //app bar
    final appBar = AppBar(
      backgroundColor: appBarColor,
      elevation: 5,
      // title: Text( 'Library Book' ),
      title: _appBarTitle,
      // leading: IconButton(
      //   icon: _searchIcon,
      //   onPressed: _searchPressed,
      // ),
      actions: <Widget>[
        IconButton(
          icon: _searchIcon,
          onPressed: _searchPressed,
        ),
      ],
    );
    
    Widget _buildGrid(){
       if(!(_searchText.isEmpty)){
        List<Book> tempList = new List<Book>();
        for (int i = 0; i < filteredBook.length; i++) {
          if (filteredBook[i].title.toLowerCase().contains(_searchText.toLowerCase())
          || filteredBook[i].author.toLowerCase().contains(_searchText.toLowerCase())) {
            tempList.add(filteredBook[i]);
          }
        }
        filteredBook = tempList;
      }
      return CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(16.0),
            sliver: SliverGrid.count(
              childAspectRatio: 2 / 3,
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              children: filteredBook.map<Widget>((book) => createTile(book)).toList(),
            ),
          )
        ],
      );
    } 

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: PageView(
        controller: controller,
        onPageChanged: (index) => setState(() => _selectedIndex = index),
        children: <Widget>[
          _buildGrid(),
          FavoriteHomeWidget(),
          HistoryHomeWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15.0,
        backgroundColor: bottomNavBarColor,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              controller.animateToPage(
                _selectedIndex,
                duration: kTabScrollDuration,
                curve: scrollCurve,
              );
            });
          },
          items: <BottomNavigationBarItem> [
            new BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem( 
              icon: Icon(Icons.history),
              title: Text('History'),
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.more_horiz),
            //   title: Text('More'),
            // ),
          ],
        ),
    );
  }
  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),
            hintText: 'Search...'
          ),
          autofocus: true,
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text( 'Books Library' );
        filteredBook = books;
        _filter.clear();
      }
    });
  }
  createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 10.0,
            shadowColor: shadowColor,
            child: InkWell(
              onTap: () { 
                // Navigator.pushNamed(context, 'book_detail_page/${book.title}');
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => BookDetailPage(book: book),
                  )
                );
              },
              child: Image(
                image: AssetImage(book.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
}