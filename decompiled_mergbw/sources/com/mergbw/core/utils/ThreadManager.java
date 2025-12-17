package com.mergbw.core.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class ThreadManager {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    public static final String DEFAULT_SINGLE_POOL_NAME = "DEFAULT_SINGLE_POOL_NAME";
    private static final int KEEP_ALIVE_SECONDS = 30;
    private static final int MAXIMUM_POOL_SIZE;
    private static final Object mDownloadLock;
    private static ThreadPoolProxy mDownloadPool;
    private static final Object mLongLock;
    private static ThreadPoolProxy mLongPool;
    private static final Map<String, ThreadPoolProxy> mMap;
    private static final Object mShortLock;
    private static ThreadPoolProxy mShortPool;
    private static final Object mSingleLock;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        CORE_POOL_SIZE = availableProcessors;
        MAXIMUM_POOL_SIZE = (availableProcessors * 2) + 1;
        mLongPool = null;
        mLongLock = new Object();
        mShortPool = null;
        mShortLock = new Object();
        mDownloadPool = null;
        mDownloadLock = new Object();
        mMap = new HashMap();
        mSingleLock = new Object();
    }

    public static ThreadPoolProxy getDownloadPool() {
        ThreadPoolProxy threadPoolProxy;
        synchronized (mDownloadLock) {
            if (mDownloadPool == null) {
                mDownloadPool = new ThreadPoolProxy();
            }
            threadPoolProxy = mDownloadPool;
        }
        return threadPoolProxy;
    }

    public static ThreadPoolProxy getLongPool() {
        ThreadPoolProxy threadPoolProxy;
        synchronized (mLongLock) {
            if (mLongPool == null) {
                mLongPool = new ThreadPoolProxy();
            }
            threadPoolProxy = mLongPool;
        }
        return threadPoolProxy;
    }

    public static ThreadPoolProxy getShortPool() {
        ThreadPoolProxy threadPoolProxy;
        synchronized (mShortLock) {
            if (mShortPool == null) {
                mShortPool = new ThreadPoolProxy();
            }
            threadPoolProxy = mShortPool;
        }
        return threadPoolProxy;
    }

    public static ThreadPoolProxy getSinglePool() {
        return getSinglePool(DEFAULT_SINGLE_POOL_NAME);
    }

    public static ThreadPoolProxy getSinglePool(String name) {
        ThreadPoolProxy threadPoolProxy;
        synchronized (mSingleLock) {
            Map<String, ThreadPoolProxy> map = mMap;
            threadPoolProxy = map.get(name);
            if (threadPoolProxy == null) {
                threadPoolProxy = new ThreadPoolProxy();
                map.put(name, threadPoolProxy);
            }
        }
        return threadPoolProxy;
    }

    /* loaded from: classes4.dex */
    public static class ThreadPoolProxy {
        private ThreadPoolExecutor mPool;

        private ThreadPoolProxy() {
        }

        public synchronized void execute(Runnable run) {
            if (run == null) {
                return;
            }
            ThreadPoolExecutor threadPoolExecutor = this.mPool;
            if (threadPoolExecutor == null || threadPoolExecutor.isShutdown()) {
                this.mPool = new ThreadPoolExecutor(ThreadManager.CORE_POOL_SIZE, ThreadManager.MAXIMUM_POOL_SIZE, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
            }
            this.mPool.execute(run);
        }

        public synchronized void cancel(Runnable run) {
            ThreadPoolExecutor threadPoolExecutor = this.mPool;
            if (threadPoolExecutor != null && (!threadPoolExecutor.isShutdown() || this.mPool.isTerminating())) {
                this.mPool.getQueue().remove(run);
            }
        }

        public synchronized boolean contains(Runnable run) {
            ThreadPoolExecutor threadPoolExecutor = this.mPool;
            if (threadPoolExecutor == null || (threadPoolExecutor.isShutdown() && !this.mPool.isTerminating())) {
                return false;
            }
            return this.mPool.getQueue().contains(run);
        }

        public void stop() {
            ThreadPoolExecutor threadPoolExecutor = this.mPool;
            if (threadPoolExecutor != null) {
                if (!threadPoolExecutor.isShutdown() || this.mPool.isTerminating()) {
                    this.mPool.shutdownNow();
                }
            }
        }

        public synchronized void shutdown() {
            ThreadPoolExecutor threadPoolExecutor = this.mPool;
            if (threadPoolExecutor != null && (!threadPoolExecutor.isShutdown() || this.mPool.isTerminating())) {
                this.mPool.shutdownNow();
            }
        }
    }
}
