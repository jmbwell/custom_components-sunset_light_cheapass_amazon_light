package com.mergbw.core.ui.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.mergbw.core.R;
import com.mergbw.core.databinding.PopDiyEffectBinding;
import com.mergbw.core.utils.ViewDataUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class DIYEffectPopWindow extends PopupWindow {
    private final List<Integer> effectList = new ArrayList(ViewDataUtils.EFFECT_NAME.keySet());
    private final Context mContext;
    private int mCurrentSelect;
    private final listAdapter mEffectAdapter;
    private final OnMenuClickListener mListener;

    /* loaded from: classes4.dex */
    public interface OnMenuClickListener {
        void OnClickDone(int effect);
    }

    public DIYEffectPopWindow(Context context, int effect, OnMenuClickListener listener) {
        this.mContext = context;
        this.mListener = listener;
        int i = 0;
        while (true) {
            if (i >= this.effectList.size()) {
                break;
            } else if (this.effectList.get(i).intValue() == effect) {
                this.mCurrentSelect = i;
                break;
            } else {
                i++;
            }
        }
        PopDiyEffectBinding inflate = PopDiyEffectBinding.inflate(LayoutInflater.from(context));
        setContentView(inflate.getRoot());
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setOutsideTouchable(true);
        setAnimationStyle(R.style.pop_anim);
        listAdapter listadapter = new listAdapter();
        this.mEffectAdapter = listadapter;
        inflate.listEffect.setAdapter((ListAdapter) listadapter);
        inflate.listEffect.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mergbw.core.ui.views.DIYEffectPopWindow$$ExternalSyntheticLambda0
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                DIYEffectPopWindow.this.m1003lambda$new$0$commergbwcoreuiviewsDIYEffectPopWindow(adapterView, view, i2, j);
            }
        });
        inflate.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYEffectPopWindow$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYEffectPopWindow.this.m1004lambda$new$1$commergbwcoreuiviewsDIYEffectPopWindow(view);
            }
        });
        inflate.tvDone.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYEffectPopWindow$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYEffectPopWindow.this.m1005lambda$new$2$commergbwcoreuiviewsDIYEffectPopWindow(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-mergbw-core-ui-views-DIYEffectPopWindow  reason: not valid java name */
    public /* synthetic */ void m1003lambda$new$0$commergbwcoreuiviewsDIYEffectPopWindow(AdapterView adapterView, View view, int i, long j) {
        this.mCurrentSelect = i;
        this.mEffectAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-mergbw-core-ui-views-DIYEffectPopWindow  reason: not valid java name */
    public /* synthetic */ void m1004lambda$new$1$commergbwcoreuiviewsDIYEffectPopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$com-mergbw-core-ui-views-DIYEffectPopWindow  reason: not valid java name */
    public /* synthetic */ void m1005lambda$new$2$commergbwcoreuiviewsDIYEffectPopWindow(View view) {
        OnMenuClickListener onMenuClickListener = this.mListener;
        if (onMenuClickListener != null) {
            onMenuClickListener.OnClickDone(this.effectList.get(this.mCurrentSelect).intValue());
        }
        dismiss();
    }

    /* loaded from: classes4.dex */
    public class listAdapter extends BaseAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        public listAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return DIYEffectPopWindow.this.effectList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return DIYEffectPopWindow.this.effectList.get(position);
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(DIYEffectPopWindow.this.mContext).inflate(R.layout.layout_effect_item, parent, false);
            }
            ImageView imageView = (ImageView) convertView.findViewById(R.id.item_icon);
            ((TextView) convertView.findViewById(R.id.item_name)).setText(ViewDataUtils.getEffectNameRes(((Integer) getItem(position)).intValue()));
            if (position == DIYEffectPopWindow.this.mCurrentSelect) {
                imageView.setImageResource(R.mipmap.icon_checked_02);
            } else {
                imageView.setImageResource(R.mipmap.icon_unchecked_02);
            }
            return convertView;
        }
    }
}
