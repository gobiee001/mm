.class public Lcom/mopub/mobileads/VungleRouter;
.super Ljava/lang/Object;
.source "VungleRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VungleRouter$SDKInitState;
    }
.end annotation


# static fields
.field private static instance:Lcom/mopub/mobileads/VungleRouter;

.field private static sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

.field private static final sLifecycleListener:Lcom/mopub/common/LifecycleListener;

.field private static sVunglePub:Lcom/vungle/publisher/VunglePub;

.field private static sVungleRouterListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VungleRouterListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sWaitingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VungleRouterListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final vungleDefaultListener:Lcom/vungle/publisher/VungleAdEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/mopub/mobileads/VungleRouter;

    invoke-direct {v0}, Lcom/mopub/mobileads/VungleRouter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->instance:Lcom/mopub/mobileads/VungleRouter;

    .line 39
    sget-object v0, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->NOTINITIALIZED:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->sVungleRouterListeners:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->sWaitingList:Ljava/util/Map;

    .line 44
    new-instance v0, Lcom/mopub/mobileads/VungleRouter$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/VungleRouter$1;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v1, Lcom/mopub/mobileads/VungleRouter$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleRouter$3;-><init>(Lcom/mopub/mobileads/VungleRouter;)V

    iput-object v1, p0, Lcom/mopub/mobileads/VungleRouter;->vungleDefaultListener:Lcom/vungle/publisher/VungleAdEventListener;

    .line 60
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    .line 61
    .local v0, "injector":Lcom/vungle/publisher/inject/Injector;
    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->mopub:Lcom/vungle/publisher/env/WrapperFramework;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V

    .line 62
    const-string v1, "5.3.0"

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFrameworkVersion(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    sput-object v1, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    .line 65
    return-void
.end method

.method static synthetic access$000()Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/VungleRouter$SDKInitState;)Lcom/mopub/mobileads/VungleRouter$SDKInitState;
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    .prologue
    .line 25
    sput-object p0, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/VungleRouter;)Lcom/vungle/publisher/VungleAdEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRouter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRouter;->vungleDefaultListener:Lcom/vungle/publisher/VungleAdEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/VungleRouter;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRouter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mopub/mobileads/VungleRouter;->clearWaitingList()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVungleRouterListeners:Ljava/util/Map;

    return-object v0
.end method

.method private addRouterListener(Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "routerListener"    # Lcom/mopub/mobileads/VungleRouterListener;

    .prologue
    .line 129
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVungleRouterListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private clearWaitingList()V
    .locals 5

    .prologue
    .line 150
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sWaitingList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;>;"
    sget-object v3, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sVungleRouterListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;>;"
    :cond_0
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sWaitingList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 156
    return-void
.end method

.method public static getInstance()Lcom/mopub/mobileads/VungleRouter;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->instance:Lcom/mopub/mobileads/VungleRouter;

    return-object v0
.end method


# virtual methods
.method public getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sLifecycleListener:Lcom/mopub/common/LifecycleListener;

    return-object v0
.end method

.method public initVungle(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vungleAppId"    # Ljava/lang/String;
    .param p3, "placementReferenceIds"    # [Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    new-instance v1, Lcom/mopub/mobileads/VungleRouter$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VungleRouter$2;-><init>(Lcom/mopub/mobileads/VungleRouter;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/vungle/publisher/VungleInitListener;)V

    .line 96
    sget-object v0, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->INITIALIZING:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    sput-object v0, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    .line 97
    return-void
.end method

.method public isAdPlayableForPlacement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVungleInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 100
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    sget-object v2, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->NOTINITIALIZED:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    if-ne v1, v2, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    sget-object v2, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->INITIALIZING:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    if-eq v1, v2, :cond_0

    .line 104
    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    sget-object v2, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->INITIALIZED:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    if-eq v1, v2, :cond_0

    .line 108
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isInitialized()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAdForPlacement(Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "routerListener"    # Lcom/mopub/mobileads/VungleRouterListener;

    .prologue
    .line 112
    sget-object v0, Lcom/mopub/mobileads/VungleRouter$4;->$SwitchMap$com$mopub$mobileads$VungleRouter$SDKInitState:[I

    sget-object v1, Lcom/mopub/mobileads/VungleRouter;->sInitState:Lcom/mopub/mobileads/VungleRouter$SDKInitState;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VungleRouter$SDKInitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v0, "Vungle Router: There should not be this case. loadAdForPlacement is called before initialization starts."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sWaitingList:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VungleRouter;->addRouterListener(Ljava/lang/String;Lcom/mopub/mobileads/VungleRouterListener;)V

    .line 123
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public playAdForPlacement(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 141
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/VunglePub;->playAd(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vungle Router: There should not be this case. playAdForPlacement is called before an ad is loaded for Placement ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeRouterListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/mopub/mobileads/VungleRouter;->sVungleRouterListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method
