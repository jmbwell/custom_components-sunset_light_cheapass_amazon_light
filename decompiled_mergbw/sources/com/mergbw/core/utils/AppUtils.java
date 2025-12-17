package com.mergbw.core.utils;

import android.app.Application;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes4.dex */
public final class AppUtils {
    private static Application sApplication;

    private AppUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Application getApp() {
        Application application = sApplication;
        if (application != null) {
            return application;
        }
        Application applicationByReflect = getApplicationByReflect();
        sApplication = applicationByReflect;
        return applicationByReflect;
    }

    private static Application getApplicationByReflect() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (invoke == null) {
                throw new NullPointerException("u should init first");
            }
            return (Application) invoke;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            throw new NullPointerException("u should init first");
        }
    }

    public static String getDeviceSN() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, "ro.serialno");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getMac() {
        if (Build.VERSION.SDK_INT < 24) {
            return getMacAddress();
        }
        if (!TextUtils.isEmpty(getMacAddress())) {
            return getMacAddress();
        }
        if (!TextUtils.isEmpty(getMachineHardwareAddress())) {
            return getMachineHardwareAddress();
        }
        return getLocalMacAddressFromBusybox();
    }

    private static String getLocalMacAddressFromWifiInfo() {
        return ((WifiManager) getApp().getApplicationContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }

    private static String getMacAddress() {
        try {
            byte[] hardwareAddress = NetworkInterface.getByInetAddress(getLocalInetAddress()).getHardwareAddress();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < hardwareAddress.length; i++) {
                if (i != 0) {
                    stringBuffer.append(AbstractJsonLexerKt.COLON);
                }
                String hexString = Integer.toHexString(hardwareAddress[i] & 255);
                if (hexString.length() == 1) {
                    hexString = 0 + hexString;
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toUpperCase();
        } catch (Exception unused) {
            return null;
        }
    }

    private static InetAddress getLocalInetAddress() {
        InetAddress inetAddress;
        SocketException e;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            inetAddress = null;
            do {
                try {
                    if (!networkInterfaces.hasMoreElements()) {
                        break;
                    }
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (true) {
                        if (inetAddresses.hasMoreElements()) {
                            InetAddress nextElement = inetAddresses.nextElement();
                            try {
                                if (!nextElement.isLoopbackAddress() && nextElement.getHostAddress().indexOf(":") == -1) {
                                    inetAddress = nextElement;
                                    continue;
                                    break;
                                }
                                inetAddress = null;
                            } catch (SocketException e2) {
                                e = e2;
                                inetAddress = nextElement;
                                e.printStackTrace();
                                return inetAddress;
                            }
                        }
                    }
                } catch (SocketException e3) {
                    e = e3;
                }
            } while (inetAddress == null);
        } catch (SocketException e4) {
            inetAddress = null;
            e = e4;
        }
        return inetAddress;
    }

    private static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        return nextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String getMachineHardwareAddress() {
        Enumeration<NetworkInterface> enumeration;
        String str = null;
        try {
            enumeration = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            e.printStackTrace();
            enumeration = null;
        }
        if (enumeration == null) {
            return null;
        }
        while (enumeration.hasMoreElements()) {
            try {
                str = bytesToString(enumeration.nextElement().getHardwareAddress());
            } catch (SocketException e2) {
                e2.printStackTrace();
            }
            if (str != null) {
                break;
            }
        }
        return str;
    }

    private static String bytesToString(byte[] bytes) {
        if (bytes == null || bytes.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            sb.append(String.format("%02X:", Byte.valueOf(bytes[i])));
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static String getLocalMacAddressFromBusybox() {
        String callCmd = callCmd("busybox ifconfig", "HWaddr");
        if (callCmd == null) {
            return "网络异常";
        }
        return (callCmd.length() <= 0 || !callCmd.contains("HWaddr")) ? callCmd : callCmd.substring(callCmd.indexOf("HWaddr") + 6, callCmd.length() - 1);
    }

    private static String callCmd(String cmd, String filter) {
        String str = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(cmd).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null || readLine.contains(filter)) {
                    return readLine;
                }
                str = str + readLine;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static byte[] getUniId() {
        return StringUtils.toBytes(getUserId());
    }

    public static String getUserId() {
        String string = Settings.Secure.getString(getApp().getApplicationContext().getContentResolver(), "android_id");
        if (!StringUtils.isEmpty(string) && string.length() >= 12) {
            return string.substring(0, 12);
        }
        return "010203040506";
    }
}
