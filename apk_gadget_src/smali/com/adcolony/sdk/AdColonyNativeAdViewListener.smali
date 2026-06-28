.class public abstract Lcom/adcolony/sdk/AdColonyNativeAdViewListener;
.super Lcom/adcolony/sdk/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/adcolony/sdk/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStarted(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 92
    return-void
.end method

.method public onAudioStopped(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 84
    return-void
.end method

.method public onClicked(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 100
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 37
    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyNativeAdView;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "engagement_type"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 58
    return-void
.end method

.method public onNativeVideoFinished(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 76
    return-void
.end method

.method public onNativeVideoStarted(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 66
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyNativeAdView;

    .prologue
    .line 29
    return-void
.end method

.method public abstract onRequestFilled(Lcom/adcolony/sdk/AdColonyNativeAdView;)V
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 0
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 21
    return-void
.end method
