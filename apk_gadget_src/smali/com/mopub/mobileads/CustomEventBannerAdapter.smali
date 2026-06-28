.class public Lcom/mopub/mobileads/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

.field private final mHandler:Landroid/os/Handler;

.field private mImpressionMinVisibleDips:I

.field private mImpressionMinVisibleMs:I

.field private mInvalidated:Z

.field private mIsVisibilityImpressionTrackingEnabled:Z

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mServerExtras:Ljava/util/Map;
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

.field private mStoredAutorefresh:Z

.field private final mTimeout:Ljava/lang/Runnable;

.field private mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .locals 4
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "broadcastIdentifier"    # J
    .param p6, "adReport"    # Lcom/mopub/common/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v1, -0x80000000

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    .line 45
    iput v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    .line 54
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 57
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 58
    new-instance v1, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to invoke custom event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 80
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->parseBannerImpressionTrackingHeaders()V

    .line 82
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 83
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "location"

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "broadcastIdentifier"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "mopub-intent-ad-report"

    invoke-interface {v1, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "com_mopub_ad_width"

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v2, "com_mopub_ad_height"

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/MoPubView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/CustomEventBannerAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/CustomEventBanner;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/CustomEventBannerAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    return-object v0
.end method

.method private cancelTimeout()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 170
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 171
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 172
    :cond_0
    const/16 v0, 0x2710

    .line 175
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method private parseBannerImpressionTrackingHeaders()V
    .locals 5

    .prologue
    .line 179
    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v4, "Banner-Impression-Min-Pixels"

    .line 180
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    .local v1, "impressionMinVisibleDipsString":Ljava/lang/String;
    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v4, "Banner-Impression-Min-Ms"

    .line 182
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "impressionMinVisibleMsString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    :goto_1
    iget v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    if-ltz v3, :cond_0

    .line 201
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    .line 204
    :cond_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Cannot parse integer from header Banner-Impression-Min-Pixels"

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "Cannot parse integer from header Banner-Impression-Min-Ms"

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method getImpressionMinVisibleDips()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    return v0
.end method

.method getImpressionMinVisibleMs()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    return v0
.end method

.method getVisibilityTracker()Lcom/mopub/mobileads/BannerVisibilityTracker;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    return-object v0
.end method

.method invalidate()V
    .locals 3
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v1}, Lcom/mopub/mobileads/CustomEventBanner;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    if-eqz v1, :cond_1

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BannerVisibilityTracker;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    .line 130
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 131
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    .line 133
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Invalidating a custom event banner threw an exception"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Destroying a banner visibility tracker threw an exception"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method isInvalidated()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return v0
.end method

.method isVisibilityImpressionTrackingEnabled()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    return v0
.end method

.method loadAd()V
    .locals 6
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/mopub/mobileads/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Loading a custom event banner threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerClicked()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    goto :goto_0
.end method

.method public onBannerCollapsed()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-boolean v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    goto :goto_0
.end method

.method public onBannerExpanded()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAutorefreshEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    .line 275
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adPresentedOverlay()V

    goto :goto_0
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 260
    if-nez p1, :cond_2

    .line 261
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 6
    .param p1, "bannerView"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 217
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->nativeAdLoaded()V

    .line 226
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    iget v5, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/BannerVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    new-instance v1, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 245
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    if-nez v0, :cond_0

    .line 246
    instance-of v0, p1, Lcom/mopub/mobileads/HtmlBannerWebView;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerClicked()V

    .line 303
    return-void
.end method
