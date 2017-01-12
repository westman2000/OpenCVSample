package corp.wmsoft.android.examples.opencv.app;

import android.app.Application;

import org.opencv.android.OpenCVLoader;


/**
 * <br/>Created by WestMan2000 on 9/16/16 at 11:28 AM.<br/>
 */
public class OpenCVApp extends Application {

    static {
        if (!OpenCVLoader.initDebug()) {
            // Handle initialization error
        } else {
            // load custom libraries
        }
    }


    @Override
    public void onCreate() {
        super.onCreate();
    }
}
