// import 'dart:html';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //跳转外部链接依赖库

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stu(),
    );
  }
}

class Stu extends StatelessWidget {
  List listData = [
    {
      "title": "FlowUs",
      "author": "内容1",
      "image": "../assets/images/flowus.png",
      "url": "https://flowus.cn/"
    },
    {
      "title": "Gitea",
      "author": "内容1",
      "image": "../assets/images/gitea.png",
      "url": "http://ipv6.amiemall.com:3000"
    },
    {
      "title": "Metabase",
      "author": "内容2",
      "image": "../assets/images/metabase.png",
      "url": "http://ipv6.amiemall.com:5000"
    },
    {
      "title": "nging",
      "author": "内容3",
      "image": "../assets/images/nging.png",
      "url": "http://ipv6.amiemall.com:9999"
    },
    {
      "title": "Meilisearch",
      "author": "内容4",
      "image": "../assets/images/meilisearch.png",
      "url": "http://ipv6.amiemall.com:7700"
    },
    {
      "title": "gocron",
      "author": "内容5",
      "image": "../assets/images/gocron.png",
      "url": "http://ipv6.amiemall.com:5920"
    },
    {
      "title": "gokins",
      "author": "内容6",
      "image": "../assets/images/gokins.png",
      "url": "http://ipv6.amiemall.com:8030"
    },
    {
      "title": "DDNS-GO",
      "author": "内容7",
      "image": "../assets/images/DDNS-GO.png",
      "url": "http://ipv6.amiemall.com:9876"
    },
    {
      "title": "Drone",
      "author": "内容8",
      "image": "../assets/images/drone.png",
      "url": "http://10.243.0.8:80"
    },
    // {
    //   "title": "Gaia",
    //   "author": "内容8",
    //   "image": "../assets/images/image49.png",
    //   "url": "http://10.243.0.7:8080"
    // },
    {
      "title": "钛盘",
      "author": "内容9",
      "image": "../assets/images/tmp.png",
      "url": "https://tmp.link/"
    },
    {
      "title": "ZeroTier",
      "author": "内容9",
      "image": "../assets/images/zerotier.png",
      "url": "https://www.zerotier.com/"
    },
    {
      "title": "Apipost",
      "author": "内容8",
      "image": "../assets/images/apipost.png",
      "url": "https://console.apipost.cn/apis/project"
    },
    {
      "title": "Slack",
      "author": "内容8",
      "image": "../assets/images/slack.png",
      "url": "https://slack.com/"
    },
    {
      "title": "TospinoNav",
      "author": "内容9",
      "image": "../assets/images/tospino.png",
      "url": "http://tospino.amiemall.com"
    },
    {
      "title": "BoardMix&Pixso",
      "author": "内容9",
      "image": "../assets/images/boardmix.png",
      "url": "https://boardmix.cn/"
    },
    {
      "title": "Mock",
      "author": "内容9",
      "image": "../assets/images/mock.png",
      "url": "https://user.mockplus.cn/choose-product"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
            EdgeInsetsDirectional.only(start: 500, top: 200, end: 500), //外边距
        padding: EdgeInsetsDirectional.all(50), //内边距
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6, //设置列数
            crossAxisSpacing: 32, //设置横向间距
            mainAxisSpacing: 24, //设置主轴间距
            childAspectRatio: 1 / 1.2, //宽高比
          ),
          scrollDirection: Axis.vertical,
          itemCount: listData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _launchURL(listData[index]["url"]);
              },
              child: ListView(
                physics: const NeverScrollableScrollPhysics(), //禁止滚动，未起作用
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.only(bottom: 8), //外边距
                    alignment: Alignment.centerLeft,
                    height: 100,
                    width: 50,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new ExactAssetImage(listData[index]["image"]),

                        // fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 248, 141, 141),
                            offset: Offset(0.0, 12.0), //阴影xy轴偏移量
                            blurRadius: 8.0, //阴影模糊程度
                            spreadRadius: 0.0), //阴影扩散程度
                      ],
                      // shape: BoxShape.rectangle,
                    ),
                  ),
                  Text(
                    listData[index]["title"],
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 2,
                    style: new TextStyle(
                      color: Color.fromARGB(255, 65, 61, 61),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }

  //定义方法,运行需要 --no-sound-null-safety 参数，不然报错null安全
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
