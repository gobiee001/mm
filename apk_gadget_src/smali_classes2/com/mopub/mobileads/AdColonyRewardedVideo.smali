.class public Lcom/mopub/mobileads/AdColonyRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "AdColonyRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;,
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;,
        Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;
    }
.end annotation


# static fields
.field public static final ALL_ZONE_IDS_KEY:Ljava/lang/String; = "allZoneIds"

.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final CLIENT_OPTIONS_KEY:Ljava/lang/String; = "clientOptions"

.field private static final DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"

.field private static previousAdColonyAllZoneIds:[Ljava/lang/String;

.field private static sInitialized:Z

.field private static sLifecycleListener:Lcom/mopub/common/LifecycleListener;

.field private static sZoneIdToAdMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAd:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

.field private mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

.field private mAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

.field private mAdUnitId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private final mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ZONE_ID_1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "ZONE_ID_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "..."

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 56
    sput-boolean v3, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    .line 57
    new-instance v0, Lcom/mopub/common/BaseLifecycleListener;

    invoke-direct {v0}, Lcom/mopub/common/BaseLifecycleListener;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 63
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 64
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdColonyRewardedVideo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->isAdAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/AdColonyRewardedVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/AdColonyRewardedVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyRewardedVideo;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "allZoneIds"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 235
    .restart local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v0, "clientOptions"

    .line 221
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 222
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allZoneIds"

    .line 223
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zoneId"

    .line 224
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConfirmationDialogFromSettings()Z
    .locals 3

    .prologue
    .line 249
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 250
    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    .line 251
    .local v0, "settings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->withConfirmationDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResultsDialogFromSettings()Z
    .locals 3

    .prologue
    .line 255
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 256
    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;

    .line 257
    .local v0, "settings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->withResultsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAdAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAdColonyConfigured()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleOnVideoReady()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 261
    new-instance v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$1;-><init>(Lcom/mopub/mobileads/AdColonyRewardedVideo;)V

    .line 288
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mIsLoading:Z

    .line 292
    :cond_0
    return-void
.end method

.method private setUpAdOptions()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->getConfirmationDialogFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyAdOptions;->enableConfirmationDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->getResultsDialogFromSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyAdOptions;->enableResultsDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 196
    return-void
.end method

.method private setUpGlobalSettings()V
    .locals 3

    .prologue
    .line 239
    const-class v1, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;

    .line 240
    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;

    .line 241
    .local v0, "globalMediationSettings":Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 246
    :cond_0
    return-void
.end method

.method private static shouldReconfigure([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "previousZones"    # [Ljava/lang/String;
    .param p1, "newZones"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 181
    if-nez p0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 188
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 189
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 190
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
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
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 115
    const-class v4, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    monitor-enter v4

    .line 116
    :try_start_0
    sget-boolean v5, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    if-eqz v5, :cond_0

    .line 117
    const/4 v3, 0x0

    monitor-exit v4

    .line 139
    :goto_0
    return v3

    .line 120
    :cond_0
    const-string v2, "version=YOUR_APP_VERSION_HERE,store:google"

    .line 121
    .local v2, "adColonyClientOptions":Ljava/lang/String;
    const-string v1, "YOUR_AD_COLONY_APP_ID_HERE"

    .line 122
    .local v1, "adColonyAppId":Ljava/lang/String;
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 125
    .local v0, "adColonyAllZoneIds":[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extrasAreValid(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const-string v5, "clientOptions"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adColonyClientOptions":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 127
    .restart local v2    # "adColonyClientOptions":Ljava/lang/String;
    const-string v5, "appId"

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "adColonyAppId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 128
    .restart local v1    # "adColonyAppId":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->setUpGlobalSettings()V

    .line 132
    invoke-static {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMoPubAppOptions(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v5

    iput-object v5, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 133
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->isAdColonyConfigured()Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->previousAdColonyAllZoneIds:[Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1, v5, v1, v0}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 138
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sInitialized:Z

    .line 139
    monitor-exit v4

    goto :goto_0

    .line 140
    .end local v0    # "adColonyAllZoneIds":[Ljava/lang/String;
    .end local v1    # "adColonyAppId":Ljava/lang/String;
    .end local v2    # "adColonyClientOptions":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method public getVideoListenerForSdk()Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    return-object v0
.end method

.method public hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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
    .line 147
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "YOUR_CURRENT_ZONE_ID"

    iput-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extrasAreValid(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const-string v4, "zoneId"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    .line 150
    const-string v4, "clientOptions"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "adColonyClientOptions":Ljava/lang/String;
    const-string v4, "appId"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "adColonyAppId":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "adColonyAllZoneIds":[Ljava/lang/String;
    sget-object v4, Lcom/mopub/mobileads/AdColonyRewardedVideo;->previousAdColonyAllZoneIds:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->shouldReconfigure([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-static {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMoPubAppOptions(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 158
    iget-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAppOptions:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1, v4, v1, v0}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 159
    sput-object v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->previousAdColonyAllZoneIds:[Ljava/lang/String;

    .line 163
    .end local v0    # "adColonyAllZoneIds":[Ljava/lang/String;
    .end local v1    # "adColonyAppId":Ljava/lang/String;
    .end local v2    # "adColonyClientOptions":Ljava/lang/String;
    :cond_0
    const-string v4, "com_mopub_ad_unit_id"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 164
    .local v3, "adUnitObject":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 165
    check-cast v3, Ljava/lang/String;

    .end local v3    # "adUnitObject":Ljava/lang/Object;
    iput-object v3, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 168
    :cond_1
    sget-object v4, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    iget-object v5, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->setUpAdOptions()V

    .line 170
    new-instance v4, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    iget-object v5, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v4, v5}, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;-><init>(Lcom/adcolony/sdk/AdColonyAdOptions;)V

    iput-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    .line 171
    iget-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    invoke-static {v4}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 172
    iget-object v4, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyListener:Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyListener;

    iget-object v6, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAdColonyAdOptions:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    .line 173
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->scheduleOnVideoReady()V

    .line 174
    return-void
.end method

.method protected onInvalidate()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 102
    sget-object v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 103
    .local v0, "ad":Lcom/adcolony/sdk/AdColonyInterstitial;
    if-eqz v0, :cond_0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    .line 105
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    .line 106
    sget-object v1, Lcom/mopub/mobileads/AdColonyRewardedVideo;->sZoneIdToAdMap:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "AdColonyRewardedVideo"

    const-string v2, "AdColony rewarded video destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

.method public showVideo()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdColonyRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mAd:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    const-class v0, Lcom/mopub/mobileads/AdColonyRewardedVideo;

    iget-object v1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo;->mZoneId:Ljava/lang/String;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
