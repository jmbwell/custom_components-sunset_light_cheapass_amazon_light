package com.mergbw.core.utils;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
/* loaded from: classes4.dex */
public class KeyboardManager {
    private static volatile KeyboardManager mKeyboardManager;
    private InputMethodManager mInputMethodManager;
    Thread mThread;

    public static synchronized KeyboardManager with() {
        KeyboardManager keyboardManager;
        synchronized (KeyboardManager.class) {
            if (mKeyboardManager == null) {
                synchronized (KeyboardManager.class) {
                    if (mKeyboardManager == null) {
                        mKeyboardManager = new KeyboardManager();
                    }
                }
            }
            keyboardManager = mKeyboardManager;
        }
        return keyboardManager;
    }

    private KeyboardManager() {
    }

    public InputMethodManager getInputMethodManager() {
        if (this.mInputMethodManager == null) {
            this.mInputMethodManager = (InputMethodManager) AppUtils.getApp().getSystemService("input_method");
        }
        return this.mInputMethodManager;
    }

    public void show(View mView) {
        if (getInputMethodManager() == null || mView == null) {
            return;
        }
        mView.requestFocus();
        getInputMethodManager().showSoftInput(mView, 0);
    }

    public void showDelayed(final View mView) {
        if (getInputMethodManager() == null || mView == null) {
            return;
        }
        mView.requestFocus();
        Thread thread = new Thread(new Runnable() { // from class: com.mergbw.core.utils.KeyboardManager.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    if (mView.isShown() && mView.isFocused()) {
                        if (KeyboardManager.this.getInputMethodManager().showSoftInput(mView, 0)) {
                            return;
                        }
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
        });
        this.mThread = thread;
        thread.start();
    }

    public void hide(View mView) {
        if (getInputMethodManager() == null || mView == null) {
            return;
        }
        mView.clearFocus();
        getInputMethodManager().hideSoftInputFromWindow(mView.getWindowToken(), 0);
    }
}
