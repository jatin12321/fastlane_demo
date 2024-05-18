package com.demo.fastlane.fastlane_demo

import io.flutter.embedding.android.FlutterActivity
import android.os.Bundle
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
class MainActivity: FlutterActivity(){



    private val CHANNEL = "config"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "getBaseUrl") {
                result.success(BuildConfig.APP_BASE_URL)
            } else {
                result.notImplemented()
            }
        }
    }
}
