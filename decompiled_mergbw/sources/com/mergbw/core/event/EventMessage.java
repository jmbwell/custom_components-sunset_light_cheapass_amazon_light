package com.mergbw.core.event;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class EventMessage implements Serializable {
    private String action;
    private Object data;

    public EventMessage() {
    }

    public EventMessage(String action) {
        this.action = action;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public Object getData() {
        return this.data;
    }

    public EventMessage setData(Object data) {
        this.data = data;
        return this;
    }
}
