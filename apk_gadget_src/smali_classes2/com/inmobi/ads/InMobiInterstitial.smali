.class public final Lcom/inmobi/ads/InMobiInterstitial;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiInterstitial$a;,
        Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;,
        Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/inmobi/ads/w;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDidPubCalledLoad:Z

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

.field private mInterstitialAdUnit:Lcom/inmobi/ads/w;

.field private mIsHardwareAccelerationDisabled:Z

.field private mIsInitialized:Z

.field private mKeywords:Ljava/lang/String;

.field private mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

.field private mPlacementId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 141
    const-class v0, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 152
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 749
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$2;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 183
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating an Interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 188
    :cond_0
    if-nez p4, :cond_1

    .line 189
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    if-nez p1, :cond_2

    .line 195
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Interstitial ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 201
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 202
    iput-object p4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    .line 203
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 152
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 749
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$2;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 209
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 152
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 749
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$2;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 158
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating an Interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 163
    :cond_0
    if-nez p4, :cond_1

    .line 164
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    if-nez p1, :cond_2

    .line 170
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Interstitial ad with null context object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 177
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 178
    iput-object p4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    .line 179
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inmobi/ads/InMobiInterstitial;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/inmobi/ads/InMobiInterstitial;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/inmobi/ads/InMobiInterstitial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method private static getPrefetchUnit(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/AdUnit$d;)Lcom/inmobi/ads/w;
    .locals 6

    .prologue
    .line 446
    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getPlacementId()J

    move-result-wide v2

    .line 448
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v4, "int"

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-static {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    const/4 v2, 0x0

    .line 446
    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/w$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;

    move-result-object v0

    .line 449
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 3744
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 450
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 4728
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 451
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 4964
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 5807
    iput-object p2, v0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 454
    return-object v0
.end method

.method private loadAdUnit()V
    .locals 6

    .prologue
    .line 473
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetching an Interstitial ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    .line 8269
    iget-wide v4, v3, Lcom/inmobi/ads/AdUnit;->b:J

    .line 475
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 479
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Lcom/inmobi/ads/AdUnit$b;)V

    .line 480
    return-void
.end method

.method public static requestAd(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before calling requestAd. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_0
    return-void

    .line 301
    :cond_0
    if-nez p2, :cond_1

    .line 302
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null InterstitialAdRequestListener. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    if-nez p1, :cond_2

    .line 308
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null InMobiAdRequest. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    if-nez p0, :cond_3

    .line 314
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null Context. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_3
    :try_start_0
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 321
    const-class v0, Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    new-instance v2, Lcom/inmobi/ads/InMobiInterstitial$1;

    invoke-direct {v2}, Lcom/inmobi/ads/InMobiInterstitial$1;-><init>()V

    .line 408
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/w;

    .line 410
    if-eqz v0, :cond_4

    .line 2269
    iget-wide v4, v0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 410
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getPlacementId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 416
    :goto_1
    if-eqz v0, :cond_5

    .line 417
    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 418
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-static {p0, p1, v2}, Lcom/inmobi/ads/InMobiInterstitial;->getPrefetchUnit(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/AdUnit$d;)Lcom/inmobi/ads/w;

    move-result-object v1

    .line 420
    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {v1}, Lcom/inmobi/ads/w;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in requestAd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Some of the dependency libraries for Interstitial not found. Ignoring request"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {p2, v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;->onAdRequestCompleted(Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/ads/InMobiInterstitial;)V

    goto/16 :goto_0

    .line 423
    :cond_5
    :try_start_2
    invoke-static {p0, p1, p2, v2}, Lcom/inmobi/ads/InMobiInterstitial;->setupAndGetInterstitialAdUnit(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;Lcom/inmobi/ads/AdUnit$d;)Lcom/inmobi/ads/w;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private setupAdUnit()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 459
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/w;->a(Landroid/content/Context;)V

    .line 460
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/w;->a(Landroid/app/Activity;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    .line 6744
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 464
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    .line 7728
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 466
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->L()V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    .line 7964
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 470
    return-void
.end method

.method static setupAndGetInterstitialAdUnit(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;Lcom/inmobi/ads/AdUnit$d;)Lcom/inmobi/ads/w;
    .locals 3

    .prologue
    .line 436
    invoke-static {p0, p1, p3}, Lcom/inmobi/ads/InMobiInterstitial;->getPrefetchUnit(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/AdUnit$d;)Lcom/inmobi/ads/w;

    move-result-object v0

    .line 2807
    iput-object p3, v0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-object v0
.end method


# virtual methods
.method public final disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    .line 566
    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-nez v0, :cond_1

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->K()Z

    move-result v0

    goto :goto_0
.end method

.method public final load()V
    .locals 6

    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "InMobiInterstitial is not initialized. Ignoring InMobiInterstitial.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    if-nez v0, :cond_2

    .line 244
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the InMobiInterstitial cannot be loaded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 249
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/inmobi/ads/x;->d()Lcom/inmobi/ads/x;

    move-result-object v0

    .line 251
    iget-wide v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    const-string v4, "int"

    iget-object v5, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/bc;)Lcom/inmobi/ads/AdUnit;

    move-result-object v0

    .line 254
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 256
    if-eqz v0, :cond_4

    .line 257
    check-cast v0, Lcom/inmobi/ads/w;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    const-string v1, "TrueAdRequestReceived"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->setupAdUnit()V

    .line 266
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->loadAdUnit()V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 260
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/w$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 555
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    .line 557
    :cond_0
    return-void
.end method

.method public final setInterstitialAdListener(Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    .line 214
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    .line 215
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 224
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    .line 226
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4

    .prologue
    .line 490
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    if-nez v0, :cond_1

    .line 491
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "load() must be called before trying to show the ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    const-string v1, "TrueAdViewRequested"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 8347
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final show(II)V
    .locals 6

    .prologue
    .line 520
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-eqz v0, :cond_0

    .line 521
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 8463
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 8464
    invoke-virtual {v1}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8466
    :try_start_1
    invoke-virtual {v1}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 8467
    invoke-virtual {v1}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 8469
    iput p1, v1, Lcom/inmobi/ads/w;->x:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8475
    :goto_0
    :try_start_2
    invoke-virtual {v1, v2, p2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;I)V

    :cond_0
    :goto_1
    return-void

    .line 8470
    :catch_0
    move-exception v0

    .line 8471
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v4, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "The supplied resource ID with show for animations is invalid"

    invoke-static {v3, v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8473
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    .line 524
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 8477
    :cond_1
    :try_start_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    const-string v2, "Please ensure that you call show() on the UI thread"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
