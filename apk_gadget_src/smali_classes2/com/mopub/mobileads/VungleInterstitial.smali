.class public Lcom/mopub/mobileads/VungleInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "VungleInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;
    }
.end annotation


# static fields
.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final PLACEMENT_IDS_KEY:Ljava/lang/String; = "pids"

.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "pid"

.field private static sVungleRouter:Lcom/mopub/mobileads/VungleRouter;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mPlacementId:Ljava/lang/String;

.field private mPlacementIds:[Ljava/lang/String;

.field private mVungleRouterListener:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-static {}, Lcom/mopub/mobileads/VungleRouter;->getInstance()Lcom/mopub/mobileads/VungleRouter;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VungleInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VungleInterstitial;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VungleInterstitial;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/VungleInterstitial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/VungleInterstitial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleInterstitial;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/mopub/mobileads/VungleRouter;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    return-object v0
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

    .line 104
    const/4 v1, 0x1

    .line 106
    .local v1, "isAllDataValid":Z
    const-string v3, "appId"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    const-string v3, "appId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mAppId:Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mAppId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v3, "Vungle Interstitial: App ID is empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    .line 117
    :cond_0
    :goto_0
    const-string v3, "pid"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    const-string v3, "pid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    const-string v3, "Vungle Interstitial: Placement ID for this Ad Unit is empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    .line 128
    :cond_1
    :goto_1
    const-string v3, "pids"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
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

    iput-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementIds:[Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementIds:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    .line 131
    const-string v3, "Vungle Interstitial: Placement IDs are empty."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    .line 139
    :cond_2
    :goto_2
    if-eqz v1, :cond_8

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "foundInList":Z
    iget-object v5, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementIds:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_3
    if-ge v3, v6, :cond_7

    aget-object v2, v5, v3

    .line 142
    .local v2, "pid":Ljava/lang/String;
    iget-object v4, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    const/4 v0, 0x1

    .line 141
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 113
    .end local v0    # "foundInList":Z
    .end local v2    # "pid":Ljava/lang/String;
    :cond_4
    const-string v3, "Vungle Interstitial: AppID is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_5
    const-string v3, "Vungle Interstitial: Placement ID for this Ad Unit is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    goto :goto_1

    .line 135
    :cond_6
    const-string v3, "Vungle Interstitial: Placement IDs for this Ad Unit is not in serverExtras."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    goto :goto_2

    .line 146
    .restart local v0    # "foundInList":Z
    :cond_7
    if-nez v0, :cond_8

    .line 147
    const-string v3, "Vungle Interstitial: Placement IDs for this Ad Unit is not in the array of Placement IDs"

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    .line 152
    .end local v0    # "foundInList":Z
    :cond_8
    return v1
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .prologue
    .line 48
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsPlaying:Z

    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$1;-><init>(Lcom/mopub/mobileads/VungleInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/VungleInterstitial;->validateIdsInServerExtras(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/VungleInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleInterstitial$2;-><init>(Lcom/mopub/mobileads/VungleInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVungleRouterListener:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;-><init>(Lcom/mopub/mobileads/VungleInterstitial;Lcom/mopub/mobileads/VungleInterstitial$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVungleRouterListener:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    .line 77
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VungleRouter;->isVungleInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementIds:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/mopub/mobileads/VungleRouter;->initVungle(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVungleRouterListener:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VungleRouter;->loadAdForPlacement(Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Interstitial: onInvalidate is called for Placement ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->removeRouterListener(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mVungleRouterListener:Lcom/mopub/mobileads/VungleInterstitial$VungleInterstitialRouterListener;

    .line 100
    return-void
.end method

.method protected showInterstitial()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VungleRouter;->isAdPlayableForPlacement(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/mopub/mobileads/VungleInterstitial;->sVungleRouter:Lcom/mopub/mobileads/VungleRouter;

    iget-object v1, p0, Lcom/mopub/mobileads/VungleInterstitial;->mPlacementId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VungleRouter;->playAdForPlacement(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mIsPlaying:Z

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "Vungle Interstitial: SDK tried to show a Vungle interstitial ad before it finished loading. Please try again."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/VungleInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
