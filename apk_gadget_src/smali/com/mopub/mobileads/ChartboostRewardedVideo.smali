.class public Lcom/mopub/mobileads/ChartboostRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "ChartboostRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;,
        Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostLifecycleListener;
    }
.end annotation


# static fields
.field private static final sLifecycleListener:Lcom/mopub/common/LifecycleListener;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostLifecycleListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostLifecycleListener;-><init>(Lcom/mopub/mobileads/ChartboostRewardedVideo$1;)V

    sput-object v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 25
    const-string v0, "Default"

    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/ChartboostRewardedVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/ChartboostRewardedVideo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method private setUpMediationSettingsForRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "moPubId"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v2, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;

    .line 91
    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;

    .line 92
    .local v0, "globalSettings":Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;
    const-class v2, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;

    .line 93
    invoke-static {v2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;

    .line 96
    .local v1, "instanceSettings":Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;->getCustomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;->getCustomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .param p1, "launcherActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p3}, Lcom/mopub/mobileads/ChartboostShared;->initializeSdk(Landroid/app/Activity;Ljava/util/Map;)Z

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method public getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v0

    return-object v0
.end method

.method public hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "location"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "location"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    .end local v0    # "location":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    .line 73
    :cond_1
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->registerRewardedVideoLocation(Ljava/lang/String;)V

    .line 74
    const-string v1, "com_mopub_ad_unit_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/ChartboostRewardedVideo;->setUpMediationSettingsForRequest(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/ChartboostRewardedVideo$1;-><init>(Lcom/mopub/mobileads/ChartboostRewardedVideo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/mopub/mobileads/ChartboostShared;->getDelegate()Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ChartboostShared$ChartboostSingletonDelegate;->unregisterRewardedVideoLocation(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public showVideo()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mopub/mobileads/ChartboostRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "Attempted to show Chartboost rewarded video before it was available."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
