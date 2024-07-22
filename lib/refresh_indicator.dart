import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Dio dio = Dio();

  Future<List<Product>> getProductData() async {
    try {
      print("데이터 가져오기 시작");
      var response = await dio.get("https://dummyjson.com/products");
      List<Product> products = (response.data['products'] as List)
          .map<Product>((json) => Product.fromJson(json))
          .toList();
      print("데이터 가져오기 완료");
      return products;
    } catch (e) {
      print("오류 발생: $e");
      return []; // 에러 발생 시 빈 리스트 반환
    }
  }

  Future<void> refreshData() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("제품 목록"),
      ),
      body: RefreshIndicator(
        onRefresh: refreshData,
        child: FutureBuilder<List<Product>>(
          future: getProductData(),
          builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('오류 발생: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('데이터가 없습니다'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = snapshot.data![index];
                  return Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                    ),
                    child: Text("${data.title} (${data.description})"),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}