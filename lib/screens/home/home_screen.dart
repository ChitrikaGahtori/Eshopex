import 'package:e_shopex/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_shopex/screens/home/components/body.dart';
import 'package:e_shopex/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    final imageURL = "https://avatars.githubusercontent.com/u/74341338?s=400&u=c7310a90ac91486e32b27af40f3cb3d6e3c4b8f1&v=4";

    return Scaffold(
      body: Body(),
      drawer: Drawer(
        child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Chitrika Gahtori"),
                  accountEmail: Text("gahtorichitrika7272@gmail.com"),
                  // currentAccountPicture: Image.network(imageURL),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                  ),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "Home Page",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "My Account",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.list,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "My orders",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "Favourites",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "Search",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "My cart",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.phone_callback,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "Contact Us",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: getProportionateScreenWidth(15),
              ),

              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: getProportionateScreenWidth(7),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: getProportionateScreenWidth(23),
                ),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {},
              ),
            ],
        ),
      ),
    );
  }
}