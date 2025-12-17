package com.mergbw.core.ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.mergbw.core.bean.SubItemBean;
import com.mergbw.core.databinding.LayoutSubListBinding;
import java.util.List;
/* loaded from: classes4.dex */
public class SubListView extends LinearLayout {
    private LayoutSubListBinding mBinding;
    private OnSubItemCheckChangeListener mListener;

    /* loaded from: classes4.dex */
    public interface OnSubItemCheckChangeListener {
        void onSubItemCheck(int index, boolean check);
    }

    public SubListView(Context context) {
        super(context);
    }

    public SubListView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initViews(context);
    }

    private void initViews(Context context) {
        LayoutSubListBinding inflate = LayoutSubListBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = inflate;
        inflate.viewSub01.setType(1);
        this.mBinding.viewSub05.setType(2);
        this.mBinding.viewSub06.setType(3);
        this.mBinding.viewSub10.setType(4);
        this.mBinding.viewSub11.setType(5);
        this.mBinding.viewSub15.setType(2);
        this.mBinding.viewSub16.setType(3);
        this.mBinding.viewSub20.setType(1);
        this.mBinding.layoutSub01.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1013lambda$initViews$0$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub02.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1014lambda$initViews$1$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub03.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1025lambda$initViews$2$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub04.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1026lambda$initViews$3$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub05.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1027lambda$initViews$4$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub06.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1028lambda$initViews$5$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub07.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1029lambda$initViews$6$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub08.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1030lambda$initViews$7$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub09.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1031lambda$initViews$8$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub10.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1032lambda$initViews$9$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub11.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1015lambda$initViews$10$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub12.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1016lambda$initViews$11$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub13.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1017lambda$initViews$12$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub14.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1018lambda$initViews$13$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub15.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1019lambda$initViews$14$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub16.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1020lambda$initViews$15$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub17.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda17
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1021lambda$initViews$16$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub18.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1022lambda$initViews$17$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub19.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1023lambda$initViews$18$commergbwcoreuiviewsSubListView(view);
            }
        });
        this.mBinding.layoutSub20.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.SubListView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubListView.this.m1024lambda$initViews$19$commergbwcoreuiviewsSubListView(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$0$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1013lambda$initViews$0$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck01.setChecked(!this.mBinding.layoutCheck01.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub01.getTag()) - 1, this.mBinding.layoutCheck01.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$1$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1014lambda$initViews$1$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck02.setChecked(!this.mBinding.layoutCheck02.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub02.getTag()) - 1, this.mBinding.layoutCheck02.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$2$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1025lambda$initViews$2$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck03.setChecked(!this.mBinding.layoutCheck03.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub03.getTag()) - 1, this.mBinding.layoutCheck03.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$3$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1026lambda$initViews$3$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck04.setChecked(!this.mBinding.layoutCheck04.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub04.getTag()) - 1, this.mBinding.layoutCheck04.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$4$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1027lambda$initViews$4$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck05.setChecked(!this.mBinding.layoutCheck05.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub05.getTag()) - 1, this.mBinding.layoutCheck05.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$5$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1028lambda$initViews$5$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck06.setChecked(!this.mBinding.layoutCheck06.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub06.getTag()) - 1, this.mBinding.layoutCheck06.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$6$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1029lambda$initViews$6$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck07.setChecked(!this.mBinding.layoutCheck07.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub07.getTag()) - 1, this.mBinding.layoutCheck07.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$7$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1030lambda$initViews$7$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck08.setChecked(!this.mBinding.layoutCheck08.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub08.getTag()) - 1, this.mBinding.layoutCheck08.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$8$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1031lambda$initViews$8$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck09.setChecked(!this.mBinding.layoutCheck09.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub09.getTag()) - 1, this.mBinding.layoutCheck09.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$9$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1032lambda$initViews$9$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck10.setChecked(!this.mBinding.layoutCheck10.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub10.getTag()) - 1, this.mBinding.layoutCheck10.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$10$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1015lambda$initViews$10$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck11.setChecked(!this.mBinding.layoutCheck11.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub11.getTag()) - 1, this.mBinding.layoutCheck11.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$11$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1016lambda$initViews$11$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck12.setChecked(!this.mBinding.layoutCheck12.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub12.getTag()) - 1, this.mBinding.layoutCheck12.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$12$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1017lambda$initViews$12$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck13.setChecked(!this.mBinding.layoutCheck13.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub13.getTag()) - 1, this.mBinding.layoutCheck13.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$13$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1018lambda$initViews$13$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck14.setChecked(!this.mBinding.layoutCheck14.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub14.getTag()) - 1, this.mBinding.layoutCheck14.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$14$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1019lambda$initViews$14$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck15.setChecked(!this.mBinding.layoutCheck15.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub15.getTag()) - 1, this.mBinding.layoutCheck15.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$15$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1020lambda$initViews$15$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck16.setChecked(!this.mBinding.layoutCheck16.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub16.getTag()) - 1, this.mBinding.layoutCheck16.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$16$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1021lambda$initViews$16$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck17.setChecked(!this.mBinding.layoutCheck17.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub17.getTag()) - 1, this.mBinding.layoutCheck17.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$17$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1022lambda$initViews$17$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck18.setChecked(!this.mBinding.layoutCheck18.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub18.getTag()) - 1, this.mBinding.layoutCheck18.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$18$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1023lambda$initViews$18$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck19.setChecked(!this.mBinding.layoutCheck19.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub19.getTag()) - 1, this.mBinding.layoutCheck19.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$19$com-mergbw-core-ui-views-SubListView  reason: not valid java name */
    public /* synthetic */ void m1024lambda$initViews$19$commergbwcoreuiviewsSubListView(View view) {
        this.mBinding.layoutCheck20.setChecked(!this.mBinding.layoutCheck20.isChecked());
        OnSubItemCheckChangeListener onSubItemCheckChangeListener = this.mListener;
        if (onSubItemCheckChangeListener != null) {
            onSubItemCheckChangeListener.onSubItemCheck(Integer.parseInt((String) this.mBinding.layoutSub20.getTag()) - 1, this.mBinding.layoutCheck20.isChecked());
        }
    }

    public void setOnSubItemCheckChangeListener(OnSubItemCheckChangeListener listener) {
        this.mListener = listener;
    }

    public void refreshData(List<SubItemBean> subList) {
        this.mBinding.layoutCheck01.setChecked(subList.get(0).isChecked());
        this.mBinding.viewSub01.setColor(subList.get(0).getColor());
        this.mBinding.layoutCheck02.setChecked(subList.get(1).isChecked());
        this.mBinding.viewSub02.setColor(subList.get(1).getColor());
        this.mBinding.layoutCheck03.setChecked(subList.get(2).isChecked());
        this.mBinding.viewSub03.setColor(subList.get(2).getColor());
        this.mBinding.layoutCheck04.setChecked(subList.get(3).isChecked());
        this.mBinding.viewSub04.setColor(subList.get(3).getColor());
        this.mBinding.layoutCheck05.setChecked(subList.get(4).isChecked());
        this.mBinding.viewSub05.setColor(subList.get(4).getColor());
        this.mBinding.layoutCheck06.setChecked(subList.get(5).isChecked());
        this.mBinding.viewSub06.setColor(subList.get(5).getColor());
        this.mBinding.layoutCheck07.setChecked(subList.get(6).isChecked());
        this.mBinding.viewSub07.setColor(subList.get(6).getColor());
        this.mBinding.layoutCheck08.setChecked(subList.get(7).isChecked());
        this.mBinding.viewSub08.setColor(subList.get(7).getColor());
        this.mBinding.layoutCheck09.setChecked(subList.get(8).isChecked());
        this.mBinding.viewSub09.setColor(subList.get(8).getColor());
        this.mBinding.layoutCheck10.setChecked(subList.get(9).isChecked());
        this.mBinding.viewSub10.setColor(subList.get(9).getColor());
        this.mBinding.layoutCheck11.setChecked(subList.get(10).isChecked());
        this.mBinding.viewSub11.setColor(subList.get(10).getColor());
        this.mBinding.layoutCheck12.setChecked(subList.get(11).isChecked());
        this.mBinding.viewSub12.setColor(subList.get(11).getColor());
        this.mBinding.layoutCheck13.setChecked(subList.get(12).isChecked());
        this.mBinding.viewSub13.setColor(subList.get(12).getColor());
        this.mBinding.layoutCheck14.setChecked(subList.get(13).isChecked());
        this.mBinding.viewSub14.setColor(subList.get(13).getColor());
        this.mBinding.layoutCheck15.setChecked(subList.get(14).isChecked());
        this.mBinding.viewSub15.setColor(subList.get(14).getColor());
        this.mBinding.layoutCheck16.setChecked(subList.get(15).isChecked());
        this.mBinding.viewSub16.setColor(subList.get(15).getColor());
        this.mBinding.layoutCheck17.setChecked(subList.get(16).isChecked());
        this.mBinding.viewSub17.setColor(subList.get(16).getColor());
        this.mBinding.layoutCheck18.setChecked(subList.get(17).isChecked());
        this.mBinding.viewSub18.setColor(subList.get(17).getColor());
        this.mBinding.layoutCheck19.setChecked(subList.get(18).isChecked());
        this.mBinding.viewSub19.setColor(subList.get(18).getColor());
        this.mBinding.layoutCheck20.setChecked(subList.get(19).isChecked());
        this.mBinding.viewSub20.setColor(subList.get(19).getColor());
    }
}
