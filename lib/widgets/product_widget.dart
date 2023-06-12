
import 'package:flutter/material.dart';
import 'package:flutter_clothes/model/product_model.dart';
import 'package:flutter_clothes/service/product_service.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isSuccess = false;
  List<ProductModel>? products;
  ProductService productService = ProductService();
  Future<void> fetchProduct() async{
    List<ProductModel>? fetchedProducts = await productService.getProducts();
    setState(() {
      products = fetchedProducts;
      isSuccess = true;
    });
  }

  @override
  void initState() {
    fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isSuccess
    ? GridView.builder(
      shrinkWrap: true,
        itemCount: products?.length ?? 0,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index){
            ProductModel product = products![index];
            return Container(
              child: Column(
                children: [
                  Stack(children: [
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.network(product.image),),
                    Positioned(
                      right: 0.5,
                      top: 0.5,
                      child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {}, 
                              icon: const Icon(Icons.favorite_border_outlined, color: Color.fromARGB(255, 245, 126, 29),),
                              iconSize: 20,
                              ),)
                  ],),
                  SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(product.title, style: TextStyle(fontSize: 8,),),
                      Text("\$ ${product.price.toString()}", style: TextStyle(fontSize: 8, color: Color.fromARGB(255, 245, 126, 29)),)
                  ],),
                  SizedBox(height: 4,),
                  Text(product.category.name, style: TextStyle(fontSize: 8,),),
                  SizedBox(height: 4,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Text("Reviews (${product.rating.rate.toString()}) ", style: TextStyle(fontSize: 8,),),
                    IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {}, 
                            icon: const Icon(
                              Icons.add_circle,
                              color: Color.fromARGB(255, 245, 126, 29),
                              size: 20,
                            ),
                            ),
                    ],),
              ],),
            );
          },
    ) 
    //  ? ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: products?.length ?? 0,
    //   itemBuilder: ((context, index) {
    //     ProductModel product = products![index];
    //     return ListTile(
    //       subtitle: Text(product.title),
    //       leading: Text(product.rating.toString()),
    //     );
    // })) 
    : Center(child: Text("data"),);
  }
}