.class public final Lcom/inmobi/ads/InMobiNative;
.super Ljava/lang/Object;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNative$a;,
        Lcom/inmobi/ads/InMobiNative$Downloader;,
        Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;,
        Lcom/inmobi/ads/InMobiNative$LockScreenListener;,
        Lcom/inmobi/ads/InMobiNative$NativeAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/inmobi/ads/ae;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

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

.field private mDownloaderEnabled:Z

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

.field private mKeywords:Ljava/lang/String;

.field private mLockScreenListener:Lcom/inmobi/ads/InMobiNative$LockScreenListener;

.field private final mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

.field private mNativeAdUnit:Lcom/inmobi/ads/ae;

.field private mNativeDownloader:Lcom/inmobi/ads/InMobiNative$Downloader;

.field private mNativeListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

.field private mPlacementId:J

.field private mPrimaryView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryViewReturned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    const-class v0, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mDownloaderEnabled:Z

    .line 983
    new-instance v0, Lcom/inmobi/ads/InMobiNative$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$2;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 167
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Native ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 172
    :cond_0
    if-nez p1, :cond_1

    .line 173
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, Native ad cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    if-nez p4, :cond_2

    .line 178
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the Native ad cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiNative;->mPlacementId:J

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object p4, p0, Lcom/inmobi/ads/InMobiNative;->mNativeListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 186
    new-instance v0, Lcom/inmobi/ads/InMobiNative$Downloader;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$Downloader;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeDownloader:Lcom/inmobi/ads/InMobiNative$Downloader;

    .line 187
    new-instance v0, Lcom/inmobi/ads/InMobiNative$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$a;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mDownloaderEnabled:Z

    .line 983
    new-instance v0, Lcom/inmobi/ads/InMobiNative$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$2;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 191
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating an InMobiNative ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, Native ad cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/inmobi/ads/ae$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 203
    new-instance v0, Lcom/inmobi/ads/InMobiNative$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$a;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Lcom/inmobi/ads/InMobiNative$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiNative;-><init>(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    return-void
.end method

.method private constructor <init>(Lcom/inmobi/ads/ae;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mDownloaderEnabled:Z

    .line 983
    new-instance v0, Lcom/inmobi/ads/InMobiNative$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$2;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 215
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 216
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$NativeAdListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$LockScreenListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mLockScreenListener:Lcom/inmobi/ads/InMobiNative$LockScreenListener;

    return-object v0
.end method

.method private prepareAdUnit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 219
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 220
    :goto_0
    if-nez v1, :cond_2

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-nez v0, :cond_4

    .line 223
    iget-wide v2, p0, Lcom/inmobi/ads/InMobiNative;->mPlacementId:J

    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mExtras:Ljava/util/Map;

    const-string v4, "native"

    iget-object v5, p0, Lcom/inmobi/ads/InMobiNative;->mKeywords:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v2

    .line 225
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 2073
    :goto_2
    iput-object v0, v2, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 228
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-static {v1, v2, v0, v6}, Lcom/inmobi/ads/ae$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 237
    :goto_3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 2964
    iput-boolean v6, v0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 239
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mKeywords:Ljava/lang/String;

    .line 3728
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mExtras:Ljava/util/Map;

    .line 3744
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    goto :goto_1

    .line 225
    :cond_3
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    goto :goto_2

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->a(Landroid/content/Context;)V

    .line 232
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    :goto_4
    invoke-virtual {v2, v0}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    goto :goto_4
.end method

.method public static requestAd(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before calling requestAd. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 342
    :cond_0
    if-nez p2, :cond_1

    .line 343
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null NativeAdRequestListener. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    if-nez p1, :cond_2

    .line 349
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null InMobiAdRequest. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getMonetizationContext()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v0

    if-nez v0, :cond_3

    .line 355
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a MonetizationContext type. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_3
    if-nez p0, :cond_4

    .line 361
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null Context. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_4
    :try_start_0
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 368
    const-class v0, Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getPlacementId()J

    move-result-wide v0

    .line 376
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getExtras()Ljava/util/Map;

    move-result-object v2

    const-string v3, "native"

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getMonetizationContext()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v1

    .line 6073
    iput-object v1, v0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 379
    new-instance v1, Lcom/inmobi/ads/InMobiNative$1;

    invoke-direct {v1, v0}, Lcom/inmobi/ads/InMobiNative$1;-><init>(Lcom/inmobi/ads/bc;)V

    .line 428
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4}, Lcom/inmobi/ads/ae$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;

    move-result-object v0

    .line 430
    if-nez v0, :cond_5

    .line 431
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered an internal error while pre-fetching ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in requestAd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 370
    :catch_1
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Some of the dependency libraries for InMobiNative not found. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {p2, v0, v3}, Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;->onAdRequestCompleted(Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/ads/InMobiNative;)V

    goto/16 :goto_0

    .line 436
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getExtras()Ljava/util/Map;

    move-result-object v2

    .line 6744
    iput-object v2, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 437
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v2

    .line 7728
    iput-object v2, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 7807
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 7964
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 440
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 208
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 878
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized. Ignoring InMobiNative.destroy()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    if-eqz v1, :cond_1

    .line 883
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiNative$a;->removeMessages(I)V

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryView:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_4

    .line 886
    :goto_0
    if-eqz v0, :cond_2

    .line 887
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->K()V

    .line 893
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeDownloader:Lcom/inmobi/ads/InMobiNative$Downloader;

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryViewReturned:Z

    .line 902
    :goto_1
    return-void

    .line 885
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "Failed to destroy ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method public final getAdCtaText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 728
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 729
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdCtaText()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 734
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->S()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v1

    .line 738
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the ctaText; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getAdDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdDescription()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-object v0

    .line 680
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->P()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    .line 684
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the description; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getAdIconUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 692
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdIconUrl()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    :goto_0
    return-object v0

    .line 698
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->Q()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v1

    .line 702
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the iconUrl; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getAdLandingPageUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 711
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdLandingPageUrl()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_0
    :goto_0
    return-object v0

    .line 716
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->R()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v1

    .line 720
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the adLandingPageUrl; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getAdRating()F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 746
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 747
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdRating()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->T()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v1

    .line 756
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 757
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "Could not get rating; SDK encountered an unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in getAdRating(); "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getAdTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 657
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.getAdTitle()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return-object v0

    .line 662
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->O()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the ad title; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getCustomAdContent()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 638
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 639
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.setExtras()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 644
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->L()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get the ad customJson ; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getDownloader()Lcom/inmobi/ads/InMobiNative$Downloader;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 915
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 916
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized. Ignoring InMobiNative.getDownloader()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :goto_0
    return-object v0

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeDownloader:Lcom/inmobi/ads/InMobiNative$Downloader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    :catch_0
    move-exception v1

    .line 924
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get Downloader; SDK encountered an unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 570
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiSdk is not initialized. Ignoring InMobiNative.getPrimaryView()"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-object v1

    .line 575
    :cond_0
    if-nez p1, :cond_1

    .line 576
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "View can not be rendered using null context"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 611
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK encountered unexpected error in pausing ad; "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 579
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-nez v0, :cond_2

    .line 580
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized. Ignoring InMobiNative.getPrimaryView()"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 585
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->a(Landroid/content/Context;)V

    .line 586
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mDownloaderEnabled:Z

    .line 11351
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_7

    .line 11352
    invoke-virtual {v2}, Lcom/inmobi/ads/ae;->Y()Z

    move-result v4

    if-nez v4, :cond_5

    .line 11353
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    const-string v5, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling getPrimaryView()."

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 11356
    iget-object v0, v2, Lcom/inmobi/ads/ae;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    .line 11357
    iget-object v0, v2, Lcom/inmobi/ads/ae;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11358
    if-eqz v0, :cond_3

    .line 11359
    new-instance v2, Landroid/view/View;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11360
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 586
    :goto_1
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryView:Ljava/lang/ref/WeakReference;

    .line 588
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 589
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v3, "TrueAdViewRequested"

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 591
    if-nez v0, :cond_9

    .line 594
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->Y()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 595
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v2, "TrueAdViewFailedToBuild"

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 600
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "PrimaryViewInflationFailed"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 11363
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 11365
    goto :goto_1

    .line 11455
    :cond_5
    iget-object v4, v2, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/ac;

    .line 11370
    if-eqz v4, :cond_a

    .line 11623
    iget-boolean v5, v2, Lcom/inmobi/ads/ae;->y:Z

    .line 12585
    iput-boolean v5, v4, Lcom/inmobi/ads/ac;->r:Z

    .line 13411
    iput p4, v4, Lcom/inmobi/ads/ac;->p:I

    .line 13419
    iput-boolean v0, v4, Lcom/inmobi/ads/ac;->q:Z

    .line 11374
    invoke-virtual {v4}, Lcom/inmobi/ads/ac;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v4

    .line 11375
    const/4 v0, 0x1

    invoke-virtual {v4, p2, p3, v0}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11376
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/inmobi/ads/ae;->x:Ljava/lang/ref/WeakReference;

    .line 14337
    iget v5, v2, Lcom/inmobi/ads/AdUnit;->q:I

    .line 11377
    if-nez v5, :cond_6

    .line 14345
    iget-boolean v5, v2, Lcom/inmobi/ads/AdUnit;->s:Z

    .line 11377
    if-nez v5, :cond_6

    .line 11378
    iget-object v5, v2, Lcom/inmobi/ads/ae;->r:Landroid/os/Handler;

    new-instance v6, Lcom/inmobi/ads/ae$2;

    invoke-direct {v6, v2, v4}, Lcom/inmobi/ads/ae$2;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/ViewableAd;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 11385
    :cond_6
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {v4, v2}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_1

    .line 11390
    :cond_7
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Please ensure that you call getPrimaryView() on the UI thread"

    invoke-static {v0, v2, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 11392
    goto :goto_1

    .line 597
    :cond_8
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v2, "TrueAdViewRequestRejected"

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 606
    :cond_9
    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v3, "TrueAdViewDisplayed"

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 607
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryViewReturned:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    .line 608
    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final getPrimaryViewOfWidth(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 630
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized or provided context is null."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x0

    .line 634
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/inmobi/ads/InMobiNative;->getPrimaryViewOfWidth(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final isAppDownload()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.isAppDownload()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->U()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v4, "Could not get isAppDownload; SDK encountered unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final isReady()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 809
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 810
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNative is not initialized.Ignoring InMobiNative.isReady()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->Y()Z

    move-result v0

    goto :goto_0
.end method

.method public final load()V
    .locals 5

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized. Ignoring InMobiNative.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    .line 4101
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/ads/InMobiNative$a;->a:Z

    .line 260
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiNative;->mPrimaryViewReturned:Z

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v1, "TrueAdRequestReceived"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 265
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "You can call load() on an instance of InMobiNative only once if the ad request has been successful. Ignoring InMobiNative.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 282
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in loading ad; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiNative;->prepareAdUnit()V

    .line 272
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    const-string v1, "TrueAdRequestReceived"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 274
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiNative;->mPlacementId:J

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mExtras:Ljava/util/Map;

    const-string v3, "native"

    iget-object v4, p0, Lcom/inmobi/ads/InMobiNative;->mKeywords:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v1

    .line 5073
    iput-object v1, v0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 277
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v1}, Lcom/inmobi/ads/ae;->l()V

    .line 278
    invoke-static {}, Lcom/inmobi/ads/aq;->d()Lcom/inmobi/ads/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/aq;->c(Lcom/inmobi/ads/bc;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final load(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized. Ignoring InMobiNative.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 303
    :cond_0
    if-nez p1, :cond_1

    .line 304
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, InMobiNative cannot be loaded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    if-nez v0, :cond_2

    .line 310
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the InMobiNative cannot be loaded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 315
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiNative;->load()V

    goto :goto_0
.end method

.method public final pause()V
    .locals 4

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->W()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in pausing ad; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final reportAdClickAndOpenLandingPage()V
    .locals 4

    .prologue
    .line 784
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized.Ignoring InMobiNative.reportAdClickAndOpenLandingPage()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "reportAdClickAndOpenLandingPage failed; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final resume()V
    .locals 4

    .prologue
    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "Could not resume ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in resuming ad; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final setDownloaderEnabled(Z)V
    .locals 0

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiNative;->mDownloaderEnabled:Z

    .line 911
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 4
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
    .line 826
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized.Ignoring InMobiNative.setExtras()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :goto_0
    return-void

    .line 832
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 14744
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 835
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mExtras:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 838
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not set extras; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in setting extras "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 852
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized.Ignoring InMobiNative.setKeywords()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 858
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 15728
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 861
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mKeywords:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v3, "Could not set keywords on Native ad; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in setting keywords; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final setNativeAdListener(Lcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 212
    return-void
.end method

.method public final showOnLockScreen(Lcom/inmobi/ads/InMobiNative$LockScreenListener;)V
    .locals 5

    .prologue
    .line 455
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before calling showOnLockScreen."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 461
    :cond_0
    if-nez p1, :cond_1

    .line 462
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please provided non null LockScreenListener. Ignoring showOnLockScreen"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 468
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized. Provided context is null. Ignoring showOnLockScreen"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-nez v0, :cond_4

    .line 474
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiNative;->mPlacementId:J

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mExtras:Ljava/util/Map;

    const-string v3, "native"

    iget-object v4, p0, Lcom/inmobi/ads/InMobiNative;->mKeywords:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    .line 476
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/AdUnit$b;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/ads/ae$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 8619
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/ae;->y:Z

    .line 480
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mLockScreenListener:Lcom/inmobi/ads/InMobiNative$LockScreenListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error in showOnLockScreen"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final takeAction()V
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before calling takeAction."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/ae;

    .line 9455
    iget-object v1, v0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/ac;

    .line 8627
    if-eqz v1, :cond_0

    .line 10455
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/ac;

    .line 8628
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error in takeAction"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_2
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNative is not initialized. Ignoring takeAction"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
