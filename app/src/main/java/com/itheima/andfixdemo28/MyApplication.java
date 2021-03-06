package com.itheima.andfixdemo28;

import android.app.Application;
import android.os.Environment;
import android.util.Log;

import com.alipay.euler.andfix.patch.PatchManager;

import java.io.File;
import java.io.IOException;

/**
 * Created by youliang.ji on 2016/10/23.
 */
public class MyApplication extends Application {

    private static final String TAG = "MyApplication";
    private static final String APATCH_PATH = "/heima.apatch";
    private static final String DIR = "apatch";//补丁文件夹
    private PatchManager mPatchManager;

    @Override
    public void onCreate() {
        super.onCreate();
        initAndFix();
    }

    /**
     * 初始化阿里热修复
     */
    private void initAndFix() {
        mPatchManager = new PatchManager(this);
        mPatchManager.init("1.0");
        Log.d(TAG, "inited.");

        // load patch
        mPatchManager.loadPatch();
//        Log.d(TAG, "apatch loaded.");
        // add patch at runtime
        try {
            // .apatch file path
            String patchFileString = Environment.getExternalStorageDirectory()
                    .getAbsolutePath() + APATCH_PATH;
            Log.d(TAG, "apatch:" + patchFileString + " added.");
            mPatchManager.addPatch(patchFileString);
            Log.d(TAG, "apatch:" + patchFileString + " added.");

            //复制且加载补丁成功后，删除下载的补丁
            File f = new File(this.getFilesDir(), DIR + APATCH_PATH);
            if (f.exists()) {
                boolean result = new File(patchFileString).delete();
                if (!result)
                    Log.e(TAG, patchFileString + " delete fail");
            }
        } catch (IOException e) {
            Log.e(TAG, "", e);
        }
    }
}
