.class final Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate$1;
.super Ljava/lang/Object;
.source "ChartboostShared.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 105
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
