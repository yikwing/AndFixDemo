package com.itheima.andfixdemo28;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {


    private TextView mTvResult;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.content_main);

        mTvResult = (TextView) findViewById(R.id.tv);
        mTvResult.setText("解决Bug");
    }

    /**
     * 为了提高修复成功率
     *
     */
    @Override
    protected void onDestroy() {
        super.onDestroy();
        android.os.Process.killProcess(android.os.Process.myPid());
    }


}
