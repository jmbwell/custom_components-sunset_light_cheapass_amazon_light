package com.mergbw.android.google;

import android.app.Activity;
import android.content.Context;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.mergbw.android.google.GoogleMobileAdsConsentManager;
import com.mergbw.core.utils.MeRGBWLog;
import java.util.Objects;
/* loaded from: classes4.dex */
public class GoogleMobileAdsConsentManager {
    private static GoogleMobileAdsConsentManager instance;
    private final ConsentInformation consentInformation;

    /* loaded from: classes4.dex */
    public interface OnConsentGatheringCompleteListener {
        void consentGatheringComplete(FormError formError);
    }

    private GoogleMobileAdsConsentManager(Context context) {
        this.consentInformation = UserMessagingPlatform.getConsentInformation(context);
    }

    public static GoogleMobileAdsConsentManager getInstance(Context context) {
        if (instance == null) {
            instance = new GoogleMobileAdsConsentManager(context);
        }
        return instance;
    }

    public boolean canRequestAds() {
        boolean canRequestAds = this.consentInformation.canRequestAds();
        MeRGBWLog.i("GoogleMobileAdsConsentManager canRequestAds: " + canRequestAds);
        return canRequestAds;
    }

    public void gatherConsent(final Activity activity, final OnConsentGatheringCompleteListener onConsentGatheringCompleteListener) {
        ConsentRequestParameters build = new ConsentRequestParameters.Builder().build();
        ConsentInformation consentInformation = this.consentInformation;
        ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener = new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.mergbw.android.google.GoogleMobileAdsConsentManager$$ExternalSyntheticLambda0
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
            public final void onConsentInfoUpdateSuccess() {
                GoogleMobileAdsConsentManager.lambda$gatherConsent$0(activity, onConsentGatheringCompleteListener);
            }
        };
        Objects.requireNonNull(onConsentGatheringCompleteListener);
        consentInformation.requestConsentInfoUpdate(activity, build, onConsentInfoUpdateSuccessListener, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.mergbw.android.google.GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1
            @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
            public final void onConsentInfoUpdateFailure(FormError formError) {
                GoogleMobileAdsConsentManager.OnConsentGatheringCompleteListener.this.consentGatheringComplete(formError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$gatherConsent$0(Activity activity, final OnConsentGatheringCompleteListener onConsentGatheringCompleteListener) {
        Objects.requireNonNull(onConsentGatheringCompleteListener);
        UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.mergbw.android.google.GoogleMobileAdsConsentManager$$ExternalSyntheticLambda2
            @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
            public final void onConsentFormDismissed(FormError formError) {
                GoogleMobileAdsConsentManager.OnConsentGatheringCompleteListener.this.consentGatheringComplete(formError);
            }
        });
    }
}
