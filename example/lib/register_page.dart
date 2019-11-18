import 'package:flutter/material.dart';
import 'package:im_flutter_sdk/im_flutter_sdk.dart';
import 'utils/localizations.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  TextEditingController _onfirmPwdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              /// 背景图
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/star.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment(0, -0.6),
                child: registerBody(),
              ),
            )
        ),

        /// 返回按钮
        Positioned(
          top: 50,
          left: 24,
          child: Listener(
            onPointerDown: (down) {
              Navigator.of(context).pushNamed('login_page');
            },
            child: Container(
              width: 24.0,
              height: 24.0,
              child: Icon(Icons.arrow_back, color: Colors.white, ),
            ),
          ),
        ),
      ],
    );
  }

  registerBody() => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              SizedBox(height: 30),

              Text(
                '注册账号',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  letterSpacing: 3,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10.0),

              /// 用户名输入框
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 33.0),
                child: TextField(
                  controller: _usernameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "用户名",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(57),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              /// 密码输入框
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 33.0),
                child: TextField(
                  controller: _pwdController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "密码",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(57),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              /// 确认密码输入框
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 33.0),
                child: TextField(
                  controller: _pwdController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "确认密码",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(57),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 48.0),
                child: Row(
                  children: <Widget>[
                    Image.asset('images/同意条款@2x.png',width: 24.0, height: 24.0,),
                    SizedBox(width: 10.0,),
                    Text(
                      '同意服务条款与隐私协议',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey[350]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 34.0,),

              /// 注册按钮
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 33.0),
                width: double.infinity,
                height: 52.0,
                child: RaisedButton(
                  padding: EdgeInsets.all(12.0),
                  shape: StadiumBorder(),
                  child: Text(
                    '注 册',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  onPressed: () {
//                    register(context);
                    Navigator.of(context).pushNamed('login_page');
                    print('用户名${this._usernameController.text}');
                    print('密码${this._pwdController.text}');
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  void register(BuildContext context){
    Navigator.of(context).pushNamed('login');
  }
}