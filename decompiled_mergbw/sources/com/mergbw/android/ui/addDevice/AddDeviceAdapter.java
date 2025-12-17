package com.mergbw.android.ui.addDevice;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.mergbw.android.databinding.LayoutAddDeviceItemBinding;
import com.mergbw.core.database.bean.DeviceInfoBean;
import com.mergbw.core.utils.ViewDataUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class AddDeviceAdapter extends BaseAdapter {
    private final DeviceItemClickCallback mCallback;
    private List<DeviceInfoBean> mDeviceList = new ArrayList();

    /* loaded from: classes4.dex */
    public interface DeviceItemClickCallback {
        void onClick(DeviceInfoBean deviceInfoBean);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public AddDeviceAdapter(DeviceItemClickCallback deviceItemClickCallback) {
        this.mCallback = deviceItemClickCallback;
    }

    public void setData(List<DeviceInfoBean> list) {
        this.mDeviceList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mDeviceList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mDeviceList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            LayoutAddDeviceItemBinding inflate = LayoutAddDeviceItemBinding.inflate(LayoutInflater.from(viewGroup.getContext()));
            viewHolder = new ViewHolder(inflate);
            view = inflate.getRoot();
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        final DeviceInfoBean deviceInfoBean = (DeviceInfoBean) getItem(i);
        viewHolder.mItemBinding.tvItemName.setText(deviceInfoBean.getDeviceName());
        viewHolder.mItemBinding.tvItemModel.setText(deviceInfoBean.getDeviceModel());
        viewHolder.mItemBinding.ivItemIcon.setImageResource(ViewDataUtils.getDeviceIcon(deviceInfoBean.getDeviceType(), true));
        viewHolder.mItemBinding.btnConnect.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.android.ui.addDevice.AddDeviceAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AddDeviceAdapter.this.m745xd15e7d04(deviceInfoBean, view2);
            }
        });
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getView$0$com-mergbw-android-ui-addDevice-AddDeviceAdapter  reason: not valid java name */
    public /* synthetic */ void m745xd15e7d04(DeviceInfoBean deviceInfoBean, View view) {
        DeviceItemClickCallback deviceItemClickCallback = this.mCallback;
        if (deviceItemClickCallback != null) {
            deviceItemClickCallback.onClick(deviceInfoBean);
        }
    }

    /* loaded from: classes4.dex */
    public static class ViewHolder {
        LayoutAddDeviceItemBinding mItemBinding;

        public ViewHolder(LayoutAddDeviceItemBinding layoutAddDeviceItemBinding) {
            this.mItemBinding = layoutAddDeviceItemBinding;
        }
    }
}
