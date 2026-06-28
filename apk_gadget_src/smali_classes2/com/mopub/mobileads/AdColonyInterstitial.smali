.class public Lcom/mopub/mobileads/AdColonyInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "AdColonyInterstitial.java"


# static fields
.field public static final ALL_ZONE_IDS_KEY:Ljava/lang/String; = "allZoneIds"

.field public static final APP_ID_KEY:Ljava/lang/String; = "appId"

.field public static final CLIENT_OPTIONS_KEY:Ljava/lang/String; = "clientOptions"

.field private static final DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"

.field private static previousAdColonyAllZoneIds:[Ljava/lang/String;


# instance fields
.field private mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vza08f3dd12e7e48aaa6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/AdColonyInterstitial;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/AdColonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;
    .param p1, "x1"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdColonyInterstitial;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/AdColonyInterstitial;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

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
    .line 213
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "allZoneIds"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 217
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 220
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
    .line 188
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v0, "clientOptions"

    .line 189
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 190
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "allZoneIds"

    .line 191
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zoneId"

    .line 192
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

.method private getAdColonyInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mopub/mobileads/AdColonyInterstitial$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$2;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V

    goto :goto_0
.end method

.method private isAdColonyConfigured()Z
    .locals 1

    .prologue
    .line 120
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

.method private static shouldReconfigure([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "previousZones"    # [Ljava/lang/String;
    .param p1, "newZones"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 200
    if-nez p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 203
    goto :goto_0

    .line 204
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 207
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 208
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 209
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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
    .line 59
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 63
    :cond_0
    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v5}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 92
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 67
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-string v3, "version=4.0.36,store:google"

    .line 68
    .local v3, "clientOptions":Ljava/lang/String;
    const-string v2, "app2ee04b82f705434aa6"

    .line 69
    .local v2, "appId":Ljava/lang/String;
    sget-object v1, Lcom/mopub/mobileads/AdColonyInterstitial;->DEFAULT_ALL_ZONE_IDS:[Ljava/lang/String;

    .line 70
    .local v1, "allZoneIds":[Ljava/lang/String;
    const-string v4, "vza08f3dd12e7e48aaa6"

    .line 72
    .local v4, "zoneId":Ljava/lang/String;
    iput-object p2, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 74
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/AdColonyInterstitial;->extrasAreValid(Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const-string v5, "clientOptions"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "clientOptions":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 76
    .restart local v3    # "clientOptions":Ljava/lang/String;
    const-string v5, "appId"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "appId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 77
    .restart local v2    # "appId":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/AdColonyInterstitial;->extractAllZoneIds(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v5, "zoneId"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "zoneId":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 80
    .restart local v4    # "zoneId":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMoPubAppOptions(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    .line 81
    .local v0, "adColonyAppOptions":Lcom/adcolony/sdk/AdColonyAppOptions;
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyInterstitial;->getAdColonyInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v5

    iput-object v5, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/AdColonyInterstitial;->isAdColonyConfigured()Z

    move-result v5

    if-nez v5, :cond_4

    .line 83
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, v0, v2, v1}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 91
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-static {v4, v5}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

    goto :goto_0

    .line 84
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    sget-object v5, Lcom/mopub/mobileads/AdColonyInterstitial;->previousAdColonyAllZoneIds:[Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/mopub/mobileads/AdColonyInterstitial;->shouldReconfigure([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, v0, v2, v1}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 88
    sput-object v1, Lcom/mopub/mobileads/AdColonyInterstitial;->previousAdColonyAllZoneIds:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    .line 112
    iput-object v1, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitialListener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 113
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    .line 115
    iput-object v1, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 117
    :cond_0
    return-void
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    const-string v0, "AdColonyInterstitial"

    const-string v1, "AdColony interstitial ad is null or has expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdColonyInterstitial$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdColonyInterstitial$1;-><init>(Lcom/mopub/mobileads/AdColonyInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyInterstitial;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_0
.end method
