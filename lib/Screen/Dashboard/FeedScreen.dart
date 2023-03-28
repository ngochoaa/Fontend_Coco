import 'package:cocotea_eco/Models/product_model.dart';
import 'package:cocotea_eco/Screen/BottomNavBar/BottomNavBar.dart';
import 'package:cocotea_eco/Screen/Dashboard/Dashboard_page.dart';
import 'package:cocotea_eco/Screen/Dashboard/widgets/feeds_widget.dart';
import 'package:cocotea_eco/Screen/Product/Constant.dart';
import 'package:cocotea_eco/Service/API.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  final ScrollController _scrollController = ScrollController();
  List<ProductsModel> productsList = [];
  int limit = 10;
  bool _isLoading = false;
  @override
  void initState() {
    getProducts();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // getProducts();
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _isLoading = true;
        print("_isLoading $_isLoading");
        limit += 10;
        await getProducts();
        _isLoading = false;
        print("limit $limit");
      }
    });
    super.didChangeDependencies();
  }

  Future<void> getProducts() async {
    productsList = await APIHandler.getAllProducts(
      limit: limit.toString(),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Best Seller",
      "Trà Sữa",
      "Cà phê",
      "Nước Ép",
      "Sinh Tố"
    ];
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text(
          'Sản phẩm',
          style: TextStyle(
              color: kTextColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardPage()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: kTextColor,
              size: 30,
            )),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: productsList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  SearchBox(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPaddin),
                    child: SizedBox(
                      height: 25,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPaddin),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    categories[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndex == index
                                          ? kTextColor
                                          : kTextLightColor,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            kDefaultPaddin / 4), //top padding 5
                                    height: 2,
                                    width: 30,
                                    color: selectedIndex == index
                                        ? Colors.black
                                        : Colors.transparent,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  product(productsList: productsList),
                  if (_isLoading)
                    const Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Color.fromARGB(255, 198, 194, 194))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset(
              "assets/icons/search1.svg",
              height: 35,
              width: 35,
              color: Color.fromARGB(255, 43, 84, 45),
            ),
            hintText: "Tìm Kiếm",
            fillColor: Colors.white),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({
    Key? key,
    required this.productsList,
  }) : super(key: key);

  final List<ProductsModel> productsList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.6),
        itemBuilder: (ctx, index) {
          return ChangeNotifierProvider.value(
            value: productsList[index],
            child: const FeedsWidget(),
          );
        });
  }
}
