.class Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "GooglePlayServicesInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;Lcom/mopub/mobileads/GooglePlayServicesInterstitial$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mopub/mobileads/GooglePlayServicesInterstitial;
    .param p2, "x1"    # Lcom/mopub/mobileads/GooglePlayServicesInterstitial$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;-><init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)V

    return-void
.end method

.method private getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 150
    .local v0, "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :goto_0
    return-object v0

    .line 136
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 137
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 139
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 140
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 142
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 143
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 145
    .end local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    :pswitch_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 146
    .restart local v0    # "errorCode":Lcom/mopub/mobileads/MoPubErrorCode;
    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 91
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 95
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->getMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 107
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "MoPub"

    const-string v1, "Google Play Services interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 115
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "MoPub"

    const-string v1, "Showing Google Play Services interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$InterstitialAdListener;->this$0:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->access$100(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 123
    :cond_0
    return-void
.end method
