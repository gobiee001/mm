.class public Lcom/mopub/mobileads/VungleRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "VungleRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;,
        Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;
    }
.end annotation


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final PLACEMENT_IDS_KEY:Ljava/lang/String; = "pids"

.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "pid"

.field private static final VUNGLE_DEFAULT_ALL_PLACEMENT_IDS:[Ljava/lang/String;

.field public static final VUNGLE_NETWORK_ID_DEFAULT:Ljava/lang/String; = "vngl_id"

.field private static sInitialized:Z

.field private static sVungleRouter:Lcom/mopub/mobileads/VungleRouter;


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mCustomerId:Ljava/lang/String;

.field private mIsPlaying:Z

.field private mPlacementId:Ljava/lang/String;

.field private mPlacementIds:[Ljava/lang/String;

.field private mVungleRewardedRouterListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DA2_REWARDED_PRO_TRIAL-9624133"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->VUNGLE_DEFAULT_ALL_PLACEMENT_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 51
    invoke-static {}, Lcom/mopub/mobileads/VungleRouter;->getInstance()Lcom/mopub/mobileads/VungleRouter;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mVungleRewardedRouterListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo;Lcom/mopub/mobileads/VungleRewardedVideo$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mVungleRewardedRouterListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/VungleRewardedVideo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/VungleRewardedVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mopub/mobileads/VungleRewardedVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$800()Lcom/mopub/mobileads/VungleRouter;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    return-object v0
.end method

.method private modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V
    .locals 1
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;
    .param p2, "mediationSettings"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .prologue
    .line 216
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$100(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$100(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V

    .line 219
    :cond_0
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V

    .line 222
    :cond_1
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V

    .line 225
    :cond_2
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogTitle(Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mCustomerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mCustomerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 233
    :cond_4
    :goto_0
    return-void

    .line 230
    :cond_5
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-static {p2}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;->access$500(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUpMediationSettingsForRequest(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 201
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 202
    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 203
    .local v0, "globalMediationSettings":Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 204
    invoke-static {v2, v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    .line 208
    .local v1, "instanceMediationSettings":Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, p1, v1}, Lcom/mopub/mobileads/VungleRewardedVideo;->modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->modifyAdConfig(Lcom/vungle/publisher/AdConfig;Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;)V

    goto :goto_0
.end method

.method private validateIdsInServerExtras(Ljava/util/Map;)Z
    .locals 7
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
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 149
    const/4 v1, 0x1

    .line 151
    .local v1, "isAllDataValid":Z
    const-string v3, "appId"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    const-string v3, "appId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAppId:Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAppId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "Vungle Rewarded: App ID is empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    .line 162
    :cond_0
    :goto_0
    const-string v3, "pid"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 163
    const-string v3, "pid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const-string v3, "Vungle Rewarded: Placement ID for this Ad Unit is empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    .line 173
    :cond_1
    :goto_1
    const-string v3, "pids"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    const-string v3, "pids"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementIds:[Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementIds:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 176
    const-string v3, "Vungle Rewarded: Placement IDs are empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    .line 184
    :cond_2
    :goto_2
    if-eqz v1, :cond_8

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "foundInList":Z
    iget-object v5, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementIds:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_3
    if-ge v3, v6, :cond_7

    aget-object v2, v5, v3

    .line 187
    .local v2, "pid":Ljava/lang/String;
    iget-object v4, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    const/4 v0, 0x1

    .line 186
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 158
    .end local v0    # "foundInList":Z
    .end local v2    # "pid":Ljava/lang/String;
    :cond_4
    const-string v3, "Vungle Rewarded: AppID is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_5
    const-string v3, "Vungle Rewarded: Placement ID for this Ad Unit is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    goto :goto_1

    .line 180
    :cond_6
    const-string v3, "Vungle Rewarded: Placement IDs for this Ad Unit is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    goto :goto_2

    .line 191
    .restart local v0    # "foundInList":Z
    :cond_7
    if-nez v0, :cond_8

    .line 192
    const-string v3, "Vungle Rewarded: Placement IDs for this Ad Unit is not in the array of Placement IDs"

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    .line 197
    .end local v0    # "foundInList":Z
    :cond_8
    return v1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
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
    const/4 v0, 0x1

    .line 74
    const-class v1, Lcom/mopub/mobileads/VungleRewardedVideo;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-boolean v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sInitialized:Z

    if-eqz v2, :cond_0

    .line 76
    const/4 v0, 0x0

    monitor-exit v1

    .line 90
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VungleRewardedVideo;->validateIdsInServerExtras(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    const-string v2, "com.appsomniacs.da2"

    iput-object v2, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAppId:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->VUNGLE_DEFAULT_ALL_PLACEMENT_IDS:[Ljava/lang/String;

    iput-object v2, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementIds:[Ljava/lang/String;

    .line 84
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VungleRouter;->isVungleInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementIds:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/mopub/mobileads/VungleRouter;->initVungle(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sInitialized:Z

    .line 90
    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VungleRouter;->getLifecycleListener()Lcom/mopub/common/LifecycleListener;

    move-result-object v0

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->isAdPlayableForPlacement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
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
    .line 96
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsPlaying:Z

    .line 98
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VungleRewardedVideo;->validateIdsInServerExtras(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "vngl_id"

    iput-object v2, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    .line 100
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v2, v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 122
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v2, "com_mopub_ad_unit_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "adUnitObject":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 107
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adUnitObject":Ljava/lang/Object;
    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mAdUnitId:Ljava/lang/String;

    .line 110
    :cond_1
    const-string v2, "Rewarded-Ad-Customer-Id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "customerIdObject":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    check-cast v1, Ljava/lang/String;

    .end local v1    # "customerIdObject":Ljava/lang/Object;
    iput-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mCustomerId:Ljava/lang/String;

    .line 115
    :cond_2
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VungleRouter;->isVungleInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v2, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mVungleRewardedRouterListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;

    invoke-virtual {v2, v3, v4}, Lcom/mopub/mobileads/VungleRouter;->loadAdForPlacement(Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;)V

    goto :goto_0

    .line 119
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vungle Rewarded: There should not be this case. loadWithSdkInitialized is called before the SDK starts initialization for Placement ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 120
    const-class v2, Lcom/mopub/mobileads/VungleRewardedVideo;

    iget-object v3, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v2, v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Rewarded: onInvalidate is called for Placement ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->removeRouterListener(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mVungleRewardedRouterListener:Lcom/mopub/mobileads/VungleRewardedVideo$VungleRewardedRouterListener;

    .line 144
    return-void
.end method

.method protected showVideo()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 132
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VungleRewardedVideo;->setUpMediationSettingsForRequest(Lcom/vungle/publisher/AdConfig;)V

    .line 134
    sget-object v1, Lcom/mopub/mobileads/VungleRewardedVideo;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v2, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/VungleRouter;->playAdForPlacement(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/mobileads/VungleRewardedVideo;->mIsPlaying:Z

    .line 136
    return-void
.end method
