import 'package:akil_flutter_test/pages/home/home_page_provider.dart';
import 'package:akil_flutter_test/widgets/list_item.dart';
import 'package:akil_flutter_test/widgets/list_item_placeholder.dart';
import 'package:akil_flutter_test/widgets/main_container.dart';
import 'package:akil_flutter_test/widgets/text_q.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((time) {
      Provider.of<HomePageProvider>(context, listen: false).getUsers(1);
    });

    return Consumer<HomePageProvider>(
        builder:  (context, provider, child) => Scaffold(
        body: MainContainer(
          title: 'Company Employes',
          subTitle: 'Showing List Of Best Employes',
          logo: Image.asset('assets/images/png/logo.png'),
          actions: [
            IconButton(
              onPressed: () => provider.getUsers(1),
              tooltip: 'Reset Data',
              icon: Icon(Icons.rotate_left, color: Colors.white,)
            ),
          ],
          body: mainBody(provider)
        ),
      ),
    );
  }

  Widget mainBody(HomePageProvider provider) {
    if (provider.isRequestSuccess) {
      return successWidget(provider);
    } else if (provider.isRequestError) {
      return errorWidget(provider);
    } else {
      return loadingWidget(provider);
    }
  }

  Widget loadingWidget(HomePageProvider provider) => const Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        ListItemPlaceholder(),
        SizedBox(height: 10,),
        ListItemPlaceholder(),
        SizedBox(height: 10,),
        ListItemPlaceholder(),
      ],
    ),
  );

  Widget successWidget(HomePageProvider provider) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange.withAlpha(20),
          borderRadius: BorderRadius.circular(20)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/gif/loading.gif',
            image: 'https://img.freepik.com/free-vector/flat-design-coworking-illustration_23-2150291036.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 10,),
      Column(
        children: provider.userList.map((data) => ListItem(
          firstName: data.firstName!,
          lastName: data.lastName!,
          email: data.email!,
          avatarUrl: data.avatar!,
        )).toList(),
      ),
      TextButton(
        onPressed: provider.currentPage != provider.totalPage ? () => provider.getUsers(provider.currentPage + 1) : null,
        child: provider.currentPage != provider.totalPage ? const TextQ(
            text: 'Tampilkan Lainnya',
            weight: FontWeight.w600, color: Colors.orange,
          ) : const TextQ(
            text: 'Anda sudah melihat semua data',
            weight: FontWeight.w600, color: Colors.black87,
          ),
      ),
    ],
  );

  Widget errorWidget(HomePageProvider provider) => Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 20,),
      CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Image.asset('assets/images/png/error.png'),
        ),
        radius: 100,
      ),
      SizedBox(height: 20),
      TextQ(text: 'Ups, Teradi Kesalahan Koneksi', weight: FontWeight.w600,),
      TextButton(
        onPressed: () => provider.getUsers(1),
        child: TextQ(text: 'Coba lagi', color: Colors.orange, weight: FontWeight.bold, size: 14,),
      )
    ],
  );
}
