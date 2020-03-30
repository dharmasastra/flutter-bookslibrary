import 'package:flutter/material.dart';
import 'package:books_library/src/App/models/repositories/books_api.dart';
import 'package:books_library/src/model.dart';
import 'package:books_library/src/view.dart';


class SearchBook extends StatefulWidget {
  @override
  _SearchBookState createState() => _SearchBookState();
}

class _SearchBookState extends State<SearchBook> {

  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List<Book> filteredNames = new List<Book>();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text( 'Library Book' );

  
  _SearchBookState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = books;
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

    setState(() {
      if(!(_searchIcon.icon == Icons.search)) {
        _searchPressed();
      }
      this._searchIcon = new Icon(Icons.close);
      this._appBarTitle = new TextField(
        controller: _filter,
        decoration: new InputDecoration(
          prefixIcon: new Icon(Icons.search),
          hintText: 'Search...'
        ),
      );
    });

    filteredNames = books;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 5,
        title: _appBarTitle,
        actions: <Widget>[
           IconButton(
            icon: _searchIcon,
            onPressed: _searchPressed,
          ),
        ],
      ),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: backgroundColor,
    );
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


  Widget _buildList() {
    if(!(_searchText.isEmpty)){
      List<Book> tempList = new List<Book>();
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i].title.toLowerCase().contains(_searchText.toLowerCase())
        || filteredNames[i].author.toLowerCase().contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
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
            children: filteredNames.map<Widget>((book) => createTile(book)).toList(),
          ),
        )
      ],
    );
    // return ListView.builder(
    //   itemCount: books == null ? 0 : filteredNames.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return new ListTile(
    //       title: Text(filteredNames),
    //       onTap: () => print(filteredNames[index]['name']),
    //     );
    //   },
    // );
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
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text( 'Library Book' );
        filteredNames = books;
        _filter.clear();
      }
    });
  }
}