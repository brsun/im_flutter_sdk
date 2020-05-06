# im_flutter_sdk

## 集成SDK

## 远程方式：

在flutter项目中的 pubspec.yaml 里面的 dependencies: 下添加

 im_flutter_sdk:
     git:
       url: https://github.com/easemob/im_flutter_sdk.git

然后 Package get 一下

注意点: 在调试iOS时，将ios->podfile文件中的 #platform :ios, '9.0' 改成 platform :ios, '9.0'

## 本地方式：

可以先将SDK clone 或者 download 到本地项目中

在flutter项目中的 pubspec.yaml 里面的 dependencies: 下添加

im_flutter_sdk:
    path : /本地路径/im_flutter_sdk

然后 Package get 一下


## 使用SDK方法时导入SDK头文件即可： 
import 'package:im_flutter_sdk/im_flutter_sdk.dart';  

SDK的方法说明文档见：[Easemob IM Flutter SDK API文档](https://easemob.github.io/im_flutter_sdk):

A new flutter plugin project.

## 使用音视频功能（单人，多人）

需要将自己原生iOS项目中的环信flutter SDK中的资源图片文件夹CallImgs和SharedImgs加到Assets.xcassets中

图片文件夹路径：

项目名称/ios/.symlinks/plugins/im_flutter_sdk/ios/Classes/Calls/Helper/SharedImg

项目名称/ios/.symlinks/plugins/im_flutter_sdk/ios/Classes/Calls/Call/CallImgs

需要向.plist文件中添加权限：

Privacy - Camera Usage Description          相机

Privacy - Photo Library Usage Description   相册

Privacy - Microphone Usage Description      麦克风

## Getting Started

## 生成文档

SDK API文档由以下命令生成,线上文档请参看[Easemob IM Flutter SDK API文档](https://easemob.github.io/im_flutter_sdk):

```shell

dartdoc --exclude dart:io,dart:async,dart:ui,dart:math,dart:collection,dart:convert,dart:core,dart:developer,dart:isolate,dart:typed_data --output doc
```


## SDK简要说明
