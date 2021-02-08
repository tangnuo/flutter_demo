package com.example.flutter_demo;

import android.os.Bundle;
import android.util.Log;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;

public class TestActivity extends FlutterActivity {
    private MethodChannel methodChannel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test);

        methodChannel = new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "com.example.flutter_demo/text");//2、创建一个MethodChannel
    }

    @Override
    protected void onResume() {
        super.onResume();
        Map map = new HashMap();
        map.put("content", "这是Android传递给Flutter的值");
        methodChannel.invokeMethod("showText", map, new MethodChannel.Result() {//2
            @Override
            public void success(Object o) {
                Log.d("caowj", (String) o);
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