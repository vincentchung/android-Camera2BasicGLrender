package com.example.android.camera2basic;

import android.content.Context;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * Created by vincent on 2016/9/27.
 */

public class Util {
    public static String getStringFromFileInAssets(Context ctx, String filename) throws IOException {
        return getStringFromFileInAssets(ctx, filename, true);
    }

    public static String getStringFromFileInAssets(Context ctx, String filename, boolean useNewline) throws IOException
    {
        InputStream is = ctx.getAssets().open(filename);
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder builder = new StringBuilder();
        String line;
        while((line = reader.readLine()) != null)
        {
            builder.append(line + (useNewline ? "\n" : ""));
        }
        is.close();
        return builder.toString();
    }
}
