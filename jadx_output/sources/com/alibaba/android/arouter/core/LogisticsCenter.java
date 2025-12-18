package com.alibaba.android.arouter.core;

import android.content.Context;
import android.net.Uri;
import com.alibaba.android.arouter.exception.HandlerException;
import com.alibaba.android.arouter.exception.NoRouteFoundException;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.enums.TypeKind;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IInterceptorGroup;
import com.alibaba.android.arouter.facade.template.ILogger;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.alibaba.android.arouter.facade.template.IRouteRoot;
import com.alibaba.android.arouter.launcher.ARouter;
import com.alibaba.android.arouter.utils.MapUtils;
import com.alibaba.android.arouter.utils.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class LogisticsCenter {
    static ThreadPoolExecutor executor;
    private static Context mContext;
    private static boolean registerByPlugin;

    private static void loadRouterMap() {
        registerByPlugin = false;
    }

    private static void register(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Object newInstance = Class.forName(str).getConstructor(null).newInstance(null);
            if (newInstance instanceof IRouteRoot) {
                registerRouteRoot((IRouteRoot) newInstance);
            } else if (newInstance instanceof IProviderGroup) {
                registerProvider((IProviderGroup) newInstance);
            } else if (newInstance instanceof IInterceptorGroup) {
                registerInterceptor((IInterceptorGroup) newInstance);
            } else {
                ILogger iLogger = ARouter.logger;
                iLogger.info("ARouter::", "register failed, class name: " + str + " should implements one of IRouteRoot/IProviderGroup/IInterceptorGroup.");
            }
        } catch (Exception e) {
            ILogger iLogger2 = ARouter.logger;
            iLogger2.error("ARouter::", "register class error:" + str, e);
        }
    }

    private static void registerRouteRoot(IRouteRoot iRouteRoot) {
        markRegisteredByPlugin();
        if (iRouteRoot != null) {
            iRouteRoot.loadInto(Warehouse.groupsIndex);
        }
    }

    private static void registerInterceptor(IInterceptorGroup iInterceptorGroup) {
        markRegisteredByPlugin();
        if (iInterceptorGroup != null) {
            iInterceptorGroup.loadInto(Warehouse.interceptorsIndex);
        }
    }

    private static void registerProvider(IProviderGroup iProviderGroup) {
        markRegisteredByPlugin();
        if (iProviderGroup != null) {
            iProviderGroup.loadInto(Warehouse.providersIndex);
        }
    }

    private static void markRegisteredByPlugin() {
        if (registerByPlugin) {
            return;
        }
        registerByPlugin = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b1 A[Catch: Exception -> 0x018a, all -> 0x01ab, TryCatch #0 {Exception -> 0x018a, blocks: (B:5:0x0009, B:7:0x0015, B:30:0x0115, B:32:0x013f, B:33:0x0148, B:35:0x014e, B:8:0x0020, B:10:0x0026, B:13:0x002d, B:18:0x007a, B:19:0x00ab, B:21:0x00b1, B:23:0x00c0, B:24:0x00d7, B:26:0x00df, B:27:0x00f6, B:29:0x00fe, B:14:0x004d, B:16:0x0064, B:17:0x0077), top: B:44:0x0009, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void init(android.content.Context r9, java.util.concurrent.ThreadPoolExecutor r10) throws com.alibaba.android.arouter.exception.HandlerException {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.android.arouter.core.LogisticsCenter.init(android.content.Context, java.util.concurrent.ThreadPoolExecutor):void");
    }

    public static Postcard buildProvider(String str) {
        RouteMeta routeMeta = Warehouse.providersIndex.get(str);
        if (routeMeta == null) {
            return null;
        }
        return new Postcard(routeMeta.getPath(), routeMeta.getGroup());
    }

    public static synchronized void completion(Postcard postcard) {
        synchronized (LogisticsCenter.class) {
            if (postcard == null) {
                throw new NoRouteFoundException("ARouter::No postcard!");
            }
            RouteMeta routeMeta = Warehouse.routes.get(postcard.getPath());
            if (routeMeta == null) {
                if (!Warehouse.groupsIndex.containsKey(postcard.getGroup())) {
                    throw new NoRouteFoundException("ARouter::There is no route match the path [" + postcard.getPath() + "], in group [" + postcard.getGroup() + "]");
                }
                try {
                    if (ARouter.debuggable()) {
                        ARouter.logger.debug("ARouter::", String.format(Locale.getDefault(), "The group [%s] starts loading, trigger by [%s]", postcard.getGroup(), postcard.getPath()));
                    }
                    addRouteGroupDynamic(postcard.getGroup(), null);
                    if (ARouter.debuggable()) {
                        ARouter.logger.debug("ARouter::", String.format(Locale.getDefault(), "The group [%s] has already been loaded, trigger by [%s]", postcard.getGroup(), postcard.getPath()));
                    }
                    completion(postcard);
                } catch (Exception e) {
                    throw new HandlerException("ARouter::Fatal exception when loading group meta. [" + e.getMessage() + "]");
                }
            } else {
                postcard.setDestination(routeMeta.getDestination());
                postcard.setType(routeMeta.getType());
                postcard.setPriority(routeMeta.getPriority());
                postcard.setExtra(routeMeta.getExtra());
                Uri uri = postcard.getUri();
                if (uri != null) {
                    Map<String, String> splitQueryParameters = TextUtils.splitQueryParameters(uri);
                    Map<String, Integer> paramsType = routeMeta.getParamsType();
                    if (MapUtils.isNotEmpty(paramsType)) {
                        for (Map.Entry<String, Integer> entry : paramsType.entrySet()) {
                            setValue(postcard, entry.getValue(), entry.getKey(), splitQueryParameters.get(entry.getKey()));
                        }
                        postcard.getExtras().putStringArray(ARouter.AUTO_INJECT, (String[]) paramsType.keySet().toArray(new String[0]));
                    }
                    postcard.withString(ARouter.RAW_URI, uri.toString());
                }
                int i = AnonymousClass1.$SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType[routeMeta.getType().ordinal()];
                if (i == 1) {
                    Class<?> destination = routeMeta.getDestination();
                    IProvider iProvider = Warehouse.providers.get(destination);
                    if (iProvider == null) {
                        try {
                            iProvider = (IProvider) destination.getConstructor(null).newInstance(null);
                            iProvider.init(mContext);
                            Warehouse.providers.put(destination, iProvider);
                        } catch (Exception e2) {
                            ARouter.logger.error("ARouter::", "Init provider failed!", e2);
                            throw new HandlerException("Init provider failed!");
                        }
                    }
                    postcard.setProvider(iProvider);
                    postcard.greenChannel();
                } else if (i == 2) {
                    postcard.greenChannel();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.alibaba.android.arouter.core.LogisticsCenter$1  reason: invalid class name */
    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType;

        static {
            int[] iArr = new int[RouteType.values().length];
            $SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType = iArr;
            try {
                iArr[RouteType.PROVIDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$android$arouter$facade$enums$RouteType[RouteType.FRAGMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static void setValue(Postcard postcard, Integer num, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            if (num != null) {
                if (num.intValue() == TypeKind.BOOLEAN.ordinal()) {
                    postcard.withBoolean(str, Boolean.parseBoolean(str2));
                } else if (num.intValue() == TypeKind.BYTE.ordinal()) {
                    postcard.withByte(str, Byte.parseByte(str2));
                } else if (num.intValue() == TypeKind.SHORT.ordinal()) {
                    postcard.withShort(str, Short.parseShort(str2));
                } else if (num.intValue() == TypeKind.INT.ordinal()) {
                    postcard.withInt(str, Integer.parseInt(str2));
                } else if (num.intValue() == TypeKind.LONG.ordinal()) {
                    postcard.withLong(str, Long.parseLong(str2));
                } else if (num.intValue() == TypeKind.FLOAT.ordinal()) {
                    postcard.withFloat(str, Float.parseFloat(str2));
                } else if (num.intValue() == TypeKind.DOUBLE.ordinal()) {
                    postcard.withDouble(str, Double.parseDouble(str2));
                } else if (num.intValue() == TypeKind.STRING.ordinal()) {
                    postcard.withString(str, str2);
                } else if (num.intValue() != TypeKind.PARCELABLE.ordinal()) {
                    if (num.intValue() == TypeKind.OBJECT.ordinal()) {
                        postcard.withString(str, str2);
                    } else {
                        postcard.withString(str, str2);
                    }
                }
            } else {
                postcard.withString(str, str2);
            }
        } catch (Throwable th) {
            ILogger iLogger = ARouter.logger;
            iLogger.warning("ARouter::", "LogisticsCenter setValue failed! " + th.getMessage());
        }
    }

    public static void suspend() {
        Warehouse.clear();
    }

    public static synchronized void addRouteGroupDynamic(String str, IRouteGroup iRouteGroup) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        synchronized (LogisticsCenter.class) {
            if (Warehouse.groupsIndex.containsKey(str)) {
                Warehouse.groupsIndex.get(str).getConstructor(null).newInstance(null).loadInto(Warehouse.routes);
                Warehouse.groupsIndex.remove(str);
            }
            if (iRouteGroup != null) {
                iRouteGroup.loadInto(Warehouse.routes);
            }
        }
    }
}
