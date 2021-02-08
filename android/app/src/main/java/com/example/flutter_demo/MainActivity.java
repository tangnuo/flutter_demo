package com.example.flutter_demo;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;


public class MainActivity extends FlutterActivity {
    private MethodChannel methodChannel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //io.flutter.app.FlutterActivity 需要代码手动注册；
//        GeneratedPluginRegistrant.registerWith(this);//1、注册插件
//        methodChannel = new MethodChannel(getFlutterView(), "com.example.flutter_demo/dialog");//2、创建一个MethodChannel

//        methodChannel = new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "com.example.flutter_demo/dialog");//2、创建一个MethodChannel
        methodChannel = new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "com.example.flutter_demo/text");//2、创建一个MethodChannel

        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {//3、监听回调的数据
            @Override
            public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if ("dialog".equals(methodCall.method)) {
                    if (methodCall.hasArgument("content")) {
                        showAlertDialog();
                        result.success("弹出成功");//4、向Flutter端发送数据
                    } else {
                        result.error("error", "弹出失败", "content is null");
                    }
                } else {
                    //Android端没有实现Flutter端需要的方法，会将notImplemented返回给Flutter端。
                    result.notImplemented();
                }
            }

            private void showAlertDialog() {
                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setPositiveButton("确定", null);
                builder.setTitle("Flutter调用Android");
                builder.show();
            }
        });

//        startActivity(new Intent(this, TestActivity.class));
    }


    @Override
    protected void onResume() {
        super.onResume();
        Map map = new HashMap();
        map.put("content", "这是Android传递给Flutter的值");
        methodChannel.invokeMethod("showText", map, new MethodChannel.Result() {//2
            @Override
            public void success(Object o) {
                Log.d("caowj", "成功："+ o);
            }

            @Override
            public void error(String errorCode, String errorMsg, Object errorDetail) {
                Log.d("caowj", "errorCode:" + errorCode + " errorMsg:" + errorMsg + " errorDetail:" + errorDetail);
            }

            @Override
            public void notImplemented() {
                Log.d("caowj", "notImplemented");
            }
        });
    }
}
