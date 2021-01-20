//聊天页面：https://segmentfault.com/a/1190000013712300
import 'package:flutter/material.dart';
import 'package:flutter_demo/the_sample1.dart';
import 'package:flutter_demo/the_sample_handling.dart' as handling;
import 'package:flutter_demo/the_sample_list.dart';
import 'package:flutter_demo/the_sample_namer.dart';
import 'package:flutter_demo/the_sample_network_image.dart';
import 'package:flutter_demo/the_sample_shopping.dart';

//程序入口
// void main() {
//   runApp(new MaterialApp(
//     title: '首页',
//     home: new SampleIndex(),
//   ));
// }



// class SampleIndex extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter中文网示例"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new MyScaffold();
//                 }));
//               },
//               child: Text("1、基础 Widget 自由组合"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new TutorialHome();
//                 }));
//               },
//               child: Text("2、使用 Material 组件"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new MyButton();
//                 }));
//               },
//               child: Text("3、处理tap手势"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new MyCounter();
//                 }));
//               },
//               child: Text("4、根据用户输入改变widget"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new FirstScreen();
//                 }));
//               },
//               child: Text("5、页面跳转"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return new StartupNamerApp();
//                 }));
//               },
//               child: Text("6、列表显示、收藏"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转聊天页面
//                   return ShoppingList(
//                     products: <Product>[
//                       new Product(name: 'Eggs'),
//                       new Product(name: 'Flour'),
//                       new Product(name: 'Chocolate chips'),
//                     ],
//                   );
//                 }));
//               },
//               child: Text("7、ShoppingList"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转图片加载
//                   // return ImageApp();
//                   // return ImageApp2();
//                   return ImageApp3();
//                 }));
//               },
//               child: Text("8、显示网络图片"),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //跳转List示例
//                   return BasicListApp();
//                   // return HorizontalListApp();
//                   // return LongListApp(
//                   //   items: new List<String>.generate(
//                   //       100, (index) => "Item $index"),
//                   // );
//                 }));
//               },
//               child: Text("9、List示例"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class SampleIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Basic List";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: [
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new MyScaffold();
                  }));
                },
                child: Text("1、基础 Widget 自由组合"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new TutorialHome();
                  }));
                },
                child: Text("2、使用 Material 组件"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new MyButton();
                  }));
                },
                child: Text("3、处理tap手势"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new MyCounter();
                  }));
                },
                child: Text("4、根据用户输入改变widget"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new FirstScreen();
                  }));
                },
                child: Text("5、页面跳转"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new StartupNamerApp();
                  }));
                },
                child: Text("6、列表显示、收藏"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ShoppingList(
                      products: <Product>[
                        new Product(name: 'Eggs'),
                        new Product(name: 'Flour'),
                        new Product(name: 'Chocolate chips'),
                      ],
                    );
                  }));
                },
                child: Text("7、ShoppingList"),
              ),
            ),
            ListTile(
              title: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //跳转图片加载
                    // return ImageApp();
                    // return ImageApp2();
                    return ImageApp3();
                  }));
                },
                child: Text("8、显示网络图片"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //跳转List示例
                    // return BasicListApp();
                    // return HorizontalListApp();

                    // List<String> items = new List<String>.generate(
                    //     100, (index) => "Item $index");
                    // return LongListApp(items: items);

                    // List<ListItem> items = new List<ListItem>.generate(
                    //   100,
                    //   (i) => i % 6 == 0
                    //       ? new HeadingItem("Heading $i")
                    //       : new MessageItem("Sender $i", "Message body $i"),
                    // );
                    // return MixListApp(items: items);

                    return GridListApp();
                  }));
                },
                child: Text("9、List示例"),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return handling.GestureDemoApp();
                  // return handling.InkWellDemoApp();
                  return handling.DismissingApp();
                }));
              },
              title: new Text('10、手势处理'),
            ),
            ListTile(
              title: new Text('11、Phone'),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return new MyScaffold();
                  }));
                },
                child: Text("12、基础 Widget 自由组合"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
