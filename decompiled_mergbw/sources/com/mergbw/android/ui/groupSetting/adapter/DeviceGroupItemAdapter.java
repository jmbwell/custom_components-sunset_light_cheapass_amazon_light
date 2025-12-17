package com.mergbw.android.ui.groupSetting.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.mergbw.android.R;
import com.mergbw.android.databinding.LayoutGroupDeviceItemBinding;
import com.mergbw.android.databinding.LayoutGroupNameItemBinding;
import com.mergbw.android.ui.groupSetting.bean.DeviceGroupBean;
import com.mergbw.core.database.bean.DeviceInfoBean;
import com.mergbw.core.utils.AppUtils;
import com.mergbw.core.utils.ViewDataUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class DeviceGroupItemAdapter extends BaseExpandableListAdapter {
    private List<DeviceGroupBean> mDataList = new ArrayList();
    private int mDeviceType = 0;
    private boolean isNew = false;

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    public void setData(List<DeviceGroupBean> list, int i) {
        this.mDataList = list;
        this.mDeviceType = i;
        this.isNew = i == 0;
        notifyDataSetChanged();
    }

    public List<DeviceGroupBean> getData() {
        return this.mDataList;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.mDataList.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return this.mDataList.get(i).getDeviceList().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.mDataList.get(i);
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return this.mDataList.get(i).getDeviceList().get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        GroupViewHolder groupViewHolder;
        LinearLayout linearLayout;
        if (view == null) {
            LayoutGroupNameItemBinding inflate = LayoutGroupNameItemBinding.inflate(LayoutInflater.from(viewGroup.getContext()));
            groupViewHolder = new GroupViewHolder(inflate);
            linearLayout = inflate.getRoot();
            linearLayout.setTag(groupViewHolder);
        } else {
            groupViewHolder = (GroupViewHolder) view.getTag();
            linearLayout = view;
        }
        DeviceGroupBean deviceGroupBean = (DeviceGroupBean) getGroup(i);
        if (deviceGroupBean.getType() == DeviceGroupBean.ADDED_DEVICE) {
            groupViewHolder.mGroupBinding.tvGroupName.setText(String.format(AppUtils.getApp().getString(R.string.added_device_num), Integer.valueOf(deviceGroupBean.getDeviceList().size())));
        } else {
            groupViewHolder.mGroupBinding.tvGroupName.setText(String.format(AppUtils.getApp().getString(R.string.can_device_num), Integer.valueOf(deviceGroupBean.getDeviceList().size())));
        }
        return linearLayout;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        ItemViewHolder itemViewHolder;
        FrameLayout frameLayout;
        if (view == null) {
            LayoutGroupDeviceItemBinding inflate = LayoutGroupDeviceItemBinding.inflate(LayoutInflater.from(viewGroup.getContext()));
            itemViewHolder = new ItemViewHolder(inflate);
            frameLayout = inflate.getRoot();
            frameLayout.setTag(itemViewHolder);
        } else {
            itemViewHolder = (ItemViewHolder) view.getTag();
            frameLayout = view;
        }
        final DeviceGroupBean deviceGroupBean = (DeviceGroupBean) getGroup(i);
        final DeviceInfoBean deviceInfoBean = (DeviceInfoBean) getChild(i, i2);
        if (this.mDeviceType != 0) {
            itemViewHolder.mItemBinding.itemIcon.setVisibility(this.mDeviceType != deviceInfoBean.getDeviceType() ? 8 : 0);
        } else {
            itemViewHolder.mItemBinding.itemIcon.setVisibility(0);
        }
        itemViewHolder.mItemBinding.tvItemName.setText(deviceInfoBean.getAliasName());
        itemViewHolder.mItemBinding.ivItemIcon.setImageResource(ViewDataUtils.getDeviceIcon(deviceInfoBean.getDeviceType(), deviceInfoBean.isConnect()));
        if (deviceGroupBean.getType() == DeviceGroupBean.ADDED_DEVICE) {
            itemViewHolder.mItemBinding.itemIcon.setImageResource(R.mipmap.icon_item_delete);
            itemViewHolder.mItemBinding.itemIcon.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.android.ui.groupSetting.adapter.DeviceGroupItemAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DeviceGroupItemAdapter.this.m887x6f957a41(deviceInfoBean, deviceGroupBean, view2);
                }
            });
        } else {
            itemViewHolder.mItemBinding.itemIcon.setImageResource(deviceInfoBean.isSelected() ? com.mergbw.core.R.mipmap.icon_checked_02 : com.mergbw.core.R.mipmap.icon_unchecked_02);
            itemViewHolder.mItemBinding.itemIcon.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.android.ui.groupSetting.adapter.DeviceGroupItemAdapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DeviceGroupItemAdapter.this.m888x4b56f602(deviceInfoBean, view2);
                }
            });
        }
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getChildView$0$com-mergbw-android-ui-groupSetting-adapter-DeviceGroupItemAdapter  reason: not valid java name */
    public /* synthetic */ void m887x6f957a41(DeviceInfoBean deviceInfoBean, DeviceGroupBean deviceGroupBean, View view) {
        deviceInfoBean.setSelected(false);
        deviceGroupBean.getDeviceList().remove(deviceInfoBean);
        this.mDataList.get(1).getDeviceList().add(deviceInfoBean);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getChildView$1$com-mergbw-android-ui-groupSetting-adapter-DeviceGroupItemAdapter  reason: not valid java name */
    public /* synthetic */ void m888x4b56f602(DeviceInfoBean deviceInfoBean, View view) {
        deviceInfoBean.setSelected(!deviceInfoBean.isSelected());
        if (this.isNew) {
            checkDeviceType();
        }
        notifyDataSetChanged();
    }

    /* loaded from: classes4.dex */
    public static class GroupViewHolder {
        LayoutGroupNameItemBinding mGroupBinding;

        public GroupViewHolder(LayoutGroupNameItemBinding layoutGroupNameItemBinding) {
            this.mGroupBinding = layoutGroupNameItemBinding;
        }
    }

    /* loaded from: classes4.dex */
    public static class ItemViewHolder {
        LayoutGroupDeviceItemBinding mItemBinding;

        public ItemViewHolder(LayoutGroupDeviceItemBinding layoutGroupDeviceItemBinding) {
            this.mItemBinding = layoutGroupDeviceItemBinding;
        }
    }

    private void checkDeviceType() {
        for (DeviceGroupBean deviceGroupBean : this.mDataList) {
            if (deviceGroupBean.getType() == DeviceGroupBean.CAN_ADD_DEVICE) {
                for (DeviceInfoBean deviceInfoBean : deviceGroupBean.getDeviceList()) {
                    if (deviceInfoBean.isSelected()) {
                        this.mDeviceType = deviceInfoBean.getDeviceType();
                        return;
                    }
                }
                this.mDeviceType = 0;
            }
        }
    }
}
