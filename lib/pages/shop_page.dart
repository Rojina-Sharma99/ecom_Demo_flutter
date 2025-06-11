import 'package:ecom_app/components/shoe_tile.dart';
import 'package:ecom_app/model/cart.dart';
import 'package:ecom_app/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user , shoe sucessfyully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text("Sucessfully added!"), content: Text("Check your cart")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search bar
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("search"),
                      Icon(Icons.search),
                    ],
                  ),
                ),

                // message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Everyone flies...Some fly longer than other.",
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ),

                //hotpicks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Picks 🔥',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                //Using expanded list to fill up the rest of the space

                //list of shoes for sale
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //create a shoe
                        Shoe shoe = value.getShoeList()[index];

                        //return the shoe
                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      }),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
