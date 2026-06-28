.class public final Lcom/inmobi/ads/InMobiBanner;
.super Landroid/widget/RelativeLayout;
.source "InMobiBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiBanner$a;,
        Lcom/inmobi/ads/InMobiBanner$b;,
        Lcom/inmobi/ads/InMobiBanner$BannerAdRequestListener;,
        Lcom/inmobi/ads/InMobiBanner$BannerAdListener;,
        Lcom/inmobi/ads/InMobiBanner$AnimationType;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "InMobi"

.field private static final TAG:Ljava/lang/String;

.field private static prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/inmobi/ads/m;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/InMobiBanner$BannerAdRequestListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdLoadCalledTimestamp:J

.field private mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

.field private mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

.field private final mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

.field private mBannerAdUnit1:Lcom/inmobi/ads/m;

.field private mBannerAdUnit2:Lcom/inmobi/ads/m;

.field private mBannerHeightInDp:I

.field private mBannerWidthInDp:I

.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

.field private mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

.field private mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

.field private mIsAutoRefreshEnabled:Z

.field private mIsInitialized:Z

.field private mRefreshHandler:Lcom/inmobi/ads/n;

.field private mRefreshInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 128
    const-class v0, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/ads/InMobiBanner;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 141
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 142
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 143
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 1136
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 288
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Banner ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 301
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 141
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 142
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 143
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 1136
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 207
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    if-nez p1, :cond_2

    .line 214
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Banner ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 220
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 221
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v1, "placementId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "refreshInterval"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    if-eqz v0, :cond_3

    .line 226
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 228
    invoke-direct {p0, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/app/Activity;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :goto_1
    if-eqz v1, :cond_0

    .line 241
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value supplied in XML layout is not valid. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value is not supplied in XML layout. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 141
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 142
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 143
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 1136
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 263
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create InMobiBanner ad with null context object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 141
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 142
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 143
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 1136
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$4;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 159
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 167
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v1, "placementId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "refreshInterval"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v0, :cond_2

    .line 172
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 174
    invoke-direct {p0, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_1
    if-eqz v1, :cond_0

    .line 187
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value supplied in XML layout is not valid. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value is not supplied in XML layout. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiBanner;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    return-void
.end method

.method static synthetic access$1200(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V

    return-void
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/m;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/AdUnit$b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/inmobi/ads/InMobiBanner;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    return-void
.end method

.method static synthetic access$702(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    return p1
.end method

.method static synthetic access$802(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    return p1
.end method

.method static synthetic access$900(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/m;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    return-object v0
.end method

.method private cancelScheduledRefresh()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/n;->removeMessages(I)V

    .line 899
    return-void
.end method

.method private checkForRefreshRate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-wide v2, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 5332
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 5498
    iget v1, v1, Lcom/inmobi/ads/b;->g:I

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    sub-long/2addr v2, v4

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad cannot be refreshed before "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 584
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad cannot be refreshed before "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seconds (Placement Id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 6269
    iget-wide v4, v4, Lcom/inmobi/ads/AdUnit;->b:J

    .line 587
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_0
    return v0

    .line 591
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 592
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private displayAd()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 902
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 905
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    .line 908
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 17103
    iget-boolean v2, v2, Lcom/inmobi/ads/m;->w:Z

    .line 908
    if-eqz v2, :cond_2

    .line 909
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    .line 912
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 913
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 916
    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v3

    .line 917
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 919
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v1, :cond_3

    .line 920
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v1}, Lcom/inmobi/ads/m;->M()V

    .line 923
    :cond_3
    if-nez v0, :cond_4

    .line 924
    invoke-virtual {p0, v3, v2}, Lcom/inmobi/ads/InMobiBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->r()V

    goto :goto_0

    .line 926
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 927
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private initializeAdUnit(Landroid/app/Activity;J)V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/m;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    .line 868
    new-instance v0, Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/m;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    .line 869
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 870
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 13332
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 13502
    iget v0, v0, Lcom/inmobi/ads/b;->h:I

    .line 870
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 871
    new-instance v0, Lcom/inmobi/ads/n;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/n;

    .line 872
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 874
    return-void
.end method

.method private initializeAdUnit(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 857
    new-instance v0, Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/m;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    .line 858
    new-instance v0, Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/m;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    .line 859
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 860
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 12332
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 12502
    iget v0, v0, Lcom/inmobi/ads/b;->h:I

    .line 860
    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 861
    new-instance v0, Lcom/inmobi/ads/n;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/n;

    .line 862
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 864
    return-void
.end method

.method public static requestAd(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiBanner$BannerAdRequestListener;)V
    .locals 6

    .prologue
    .line 475
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before calling requestAd. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 481
    :cond_0
    if-nez p0, :cond_1

    .line 482
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null Context. Aborting request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    if-nez p1, :cond_2

    .line 488
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non  null InMobiAdRequest. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_2
    if-nez p2, :cond_3

    .line 494
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a non null BannerAdRequestListener. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getWidth()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getHeight()I

    move-result v0

    if-gtz v0, :cond_4

    .line 500
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please provide positive width and height for banner. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getMonetizationContext()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v0

    if-nez v0, :cond_5

    .line 506
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply a MonetizationContext type. Ignoring request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_5
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$2;

    invoke-direct {v0}, Lcom/inmobi/ads/InMobiBanner$2;-><init>()V

    .line 563
    :try_start_0
    new-instance v1, Lcom/inmobi/ads/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 564
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getPlacementId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/inmobi/ads/m;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 566
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getExtras()Ljava/util/Map;

    move-result-object v2

    .line 2744
    iput-object v2, v1, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 567
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getMonetizationContext()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 568
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v2

    .line 3728
    iput-object v2, v1, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequest;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4126
    iput-object v2, v1, Lcom/inmobi/ads/m;->x:Ljava/lang/String;

    .line 4807
    iput-object v0, v1, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 571
    sget-object v0, Lcom/inmobi/ads/InMobiBanner;->prefetchAdUnitMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {v1}, Lcom/inmobi/ads/m;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in requestAd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private scheduleRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 881
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/n;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/n;->removeMessages(I)V

    .line 886
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 14273
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 886
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 15273
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 886
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 16273
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 887
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_0

    .line 892
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/n;

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/ads/n;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 454
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 456
    :cond_0
    return-void
.end method

.method private setSizeFromLayoutParams()V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 755
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 757
    :cond_0
    return-void
.end method

.method private swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 933
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-nez v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 935
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 945
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 18017
    const/4 v0, 0x0

    .line 18019
    sget-object v4, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_ALPHA:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne v1, v4, :cond_5

    .line 18020
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 18022
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 18023
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 18024
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 946
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->displayAd()V

    .line 947
    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->startAnimation(Landroid/view/animation/Animation;)V

    .line 950
    :cond_2
    invoke-interface {p1}, Lcom/inmobi/ads/InMobiBanner$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_2
    return-void

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 938
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    goto :goto_0

    .line 939
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 941
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    goto :goto_0

    .line 18026
    :cond_5
    :try_start_1
    sget-object v4, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne v1, v4, :cond_6

    .line 18027
    new-instance v0, Lcom/inmobi/ads/j$a;

    div-float v1, v2, v5

    div-float v2, v3, v5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/j$a;-><init>(FF)V

    .line 18031
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/j$a;->setDuration(J)V

    .line 18032
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$a;->setFillAfter(Z)V

    .line 18033
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$a;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error while displaying Banner Ad."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while displaying Banner Ad : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 18035
    :cond_6
    :try_start_2
    sget-object v4, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_VERTICAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    if-ne v1, v4, :cond_1

    .line 18036
    new-instance v0, Lcom/inmobi/ads/j$b;

    div-float v1, v2, v5

    div-float v2, v3, v5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/j$b;-><init>(FF)V

    .line 18040
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/j$b;->setDuration(J)V

    .line 18041
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$b;->setFillAfter(Z)V

    .line 18042
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j$b;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->K()V

    .line 706
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->K()V

    .line 708
    :cond_0
    return-void
.end method

.method final getFrameSizeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final hasValidSize()Z
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final load()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->load(Z)V

    .line 316
    return-void
.end method

.method public final load(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 421
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "InMobiBanner is not initialized. Ignoring InMobiBanner.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 427
    :cond_0
    if-nez p1, :cond_1

    .line 428
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, InMobiBanner cannot be loaded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-nez v0, :cond_2

    .line 434
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "InMobiBanner is not initialized. Ignoring InMobiBanner.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->a(Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->a(Landroid/content/Context;)V

    .line 440
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 441
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 442
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 446
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->load()V

    goto :goto_0

    .line 444
    :cond_3
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    goto :goto_1
.end method

.method final load(Z)V
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 321
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "InMobiBanner is not initialized. Ignoring InMobiBanner.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    const-string v1, "TrueAdRequestReceived"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/m;->d(Ljava/lang/String;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 334
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    const-string v2, "TrueAdRequestTerminated"

    const-string v3, "LoadInProgress"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/ads/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 338
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    const-string v1, "AdActive"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/m;->b(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_7

    .line 353
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_4

    .line 354
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The layout params of the banner must be set before calling load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "or call setBannerSize(int widthInDp, int heightInDp) before load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto/16 :goto_0

    .line 360
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v2, :cond_5

    .line 361
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_6

    .line 362
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The height or width of a Banner ad can\'t be WRAP_CONTENT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "or call setBannerSize(int widthInDp, int heightInDp) before load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto/16 :goto_0

    .line 367
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 370
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_8

    .line 371
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/InMobiBanner$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/InMobiBanner$1;-><init>(Lcom/inmobi/ads/InMobiBanner;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 395
    :cond_8
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    .line 396
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getFrameSizeString()Ljava/lang/String;

    move-result-object v1

    .line 2126
    iput-object v1, v0, Lcom/inmobi/ads/m;->x:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/m;->b(Z)V

    goto/16 :goto_0

    .line 402
    :cond_9
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "InMobiBanner is not initialized. Ignoring InMobiBanner.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    .prologue
    .line 716
    :try_start_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 718
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 719
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 720
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->setupBannerSizeObserver()V

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner#onAttachedToWindow() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiBanner#onAttachedToWindow() handler threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 739
    :try_start_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 741
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 815
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 817
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 818
    if-nez p2, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 835
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 840
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 841
    if-eqz p1, :cond_1

    .line 842
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final pause()V
    .locals 4

    .prologue
    .line 988
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in pausing ad; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final resume()V
    .locals 4

    .prologue
    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not resume ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in resuming ad; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 696
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 698
    :cond_0
    return-void
.end method

.method public final setBannerSize(II)V
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 768
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 769
    iput p2, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 771
    :cond_0
    return-void
.end method

.method public final setEnableAutoRefresh(Z)V
    .locals 4

    .prologue
    .line 644
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 647
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-ne v0, p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 653
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_2

    .line 654
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to setup auto-refresh on the ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting up auto-refresh failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 656
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
    .line 601
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    .line 6744
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 603
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    .line 7744
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 605
    :cond_0
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/m;

    .line 8728
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/m;

    .line 9728
    iput-object p1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 617
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V
    .locals 3

    .prologue
    .line 625
    if-nez p1, :cond_1

    .line 626
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please pass a non-null listener to the banner."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    .line 632
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 10019
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/inmobi/ads/InMobiBanner$b;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public final setRefreshInterval(I)V
    .locals 4

    .prologue
    .line 674
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 10332
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 10498
    iget v0, v0, Lcom/inmobi/ads/b;->g:I

    .line 675
    if-ge p1, v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/m;

    .line 11332
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 11498
    iget p1, v0, Lcom/inmobi/ads/b;->g:I

    .line 679
    :cond_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_1
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to set refresh interval for the ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting refresh interval failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final setupBannerSizeObserver()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 777
    new-instance v1, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 799
    return-void
.end method
