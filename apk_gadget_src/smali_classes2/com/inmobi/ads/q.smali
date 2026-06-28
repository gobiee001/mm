.class Lcom/inmobi/ads/q;
.super Lcom/inmobi/ads/br;
.source "IasTrackedNativeV2VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/q$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/ViewableAd;

.field private final g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

.field private h:Lcom/inmobi/ads/q$a;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/ads/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/q;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/ay;Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p3}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/q;->e:Ljava/lang/ref/WeakReference;

    .line 77
    iput-object p2, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    .line 78
    iput-object p4, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 79
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/Set;)Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

    .line 1045
    const-string v1, "7.0.2"

    .line 41
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;-><init>(Ljava/lang/String;Z)V

    .line 43
    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/session/AvidAdSessionManager;->startAvidManagedVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    move-result-object v1

    .line 46
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, v3, p0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->injectJavaScriptResource(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v1, v3, v3}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method

.method private a(Landroid/view/ViewGroup;Lcom/inmobi/ads/NativeVideoWrapper;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 182
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 183
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->registerFriendlyObstruction(Landroid/view/View;)V

    .line 186
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lcom/inmobi/ads/q;->a(Landroid/view/ViewGroup;Lcom/inmobi/ads/NativeVideoWrapper;)V

    .line 182
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 191
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/q;I)V
    .locals 3

    .prologue
    .line 6226
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending volumeChange to IAS AdSession("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 6228
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with volume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6230
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVolumeChangeEvent(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6236
    :cond_0
    :goto_0
    return-void

    .line 6232
    :catch_0
    move-exception v0

    .line 6233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onVolumeChange with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6234
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6235
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/q;Landroid/view/ViewGroup;Lcom/inmobi/ads/NativeVideoWrapper;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/q;->a(Landroid/view/ViewGroup;Lcom/inmobi/ads/NativeVideoWrapper;)V

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 195
    if-eqz v0, :cond_2

    .line 4093
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 195
    instance-of v1, v1, Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_2

    .line 5093
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 197
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 198
    if-eqz v1, :cond_2

    .line 199
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    .line 6096
    iget-object v2, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v2

    .line 5170
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5171
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/inmobi/ads/q$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/inmobi/ads/q$1;-><init>(Lcom/inmobi/ads/q;Landroid/view/View;Lcom/inmobi/ads/NativeVideoWrapper;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    iget-object v1, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    .line 6210
    iget-object v1, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    if-nez v1, :cond_1

    .line 6212
    new-instance v1, Lcom/inmobi/ads/q$a;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/inmobi/ads/q$a;-><init>(Landroid/content/Context;Lcom/inmobi/ads/q;)V

    iput-object v1, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    .line 6213
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registered ad view with AVID Video AdSession "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 320
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Sending event ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") to IAS AdSession : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 245
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    sget-object v0, Lcom/inmobi/ads/q$2;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 314
    :goto_1
    return-void

    .line 248
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdPausedEvent()V

    .line 249
    iget-object v1, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->unregisterAdView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onAdEvent with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_1

    .line 249
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdStartedEvent()V

    .line 253
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVideoStartEvent()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    throw v0

    .line 256
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdPlayingEvent()V

    goto :goto_0

    .line 259
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdSkippedEvent()V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVideoFirstQuartileEvent()V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVideoMidpointEvent()V

    goto/16 :goto_0

    .line 268
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVideoThirdQuartileEvent()V

    goto/16 :goto_0

    .line 271
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdImpressionEvent()V

    goto/16 :goto_0

    .line 274
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdCompleteEvent()V

    .line 275
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdStoppedEvent()V

    goto/16 :goto_0

    .line 278
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdUserCloseEvent()V

    goto/16 :goto_0

    .line 282
    :pswitch_a
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v3

    sget-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne v0, p1, :cond_2

    move v0, v2

    .line 283
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    invoke-interface {v3, v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdVolumeChangeEvent(Ljava/lang/Integer;)V

    .line 285
    iget-object v0, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    if-eqz v0, :cond_0

    .line 286
    iget-object v3, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    sget-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne v0, p1, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v3, v0}, Lcom/inmobi/ads/q$a;->a(Lcom/inmobi/ads/q$a;Z)Z

    goto/16 :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Ljava/lang/ref/WeakReference;

    .line 284
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/b;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 286
    goto :goto_4

    .line 290
    :pswitch_b
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdExpandedChangeEvent()V

    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdEnteredFullscreenEvent()V

    goto/16 :goto_0

    .line 294
    :pswitch_c
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdExitedFullscreenEvent()V

    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdUserMinimizeEvent()V

    goto/16 :goto_0

    .line 298
    :pswitch_d
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    const-string v1, "Unknown Player error"

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :pswitch_e
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdClickThruEvent()V

    goto/16 :goto_0

    .line 304
    :pswitch_f
    invoke-direct {p0}, Lcom/inmobi/ads/q;->g()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 3

    .prologue
    .line 128
    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    .line 1531
    iget-object v0, v0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 1757
    iget-boolean v0, v0, Lcom/inmobi/ads/b$h;->j:Z

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/inmobi/ads/q;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;->recordReadyEvent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;->recordAdLoadedEvent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 142
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 148
    .line 3093
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 148
    check-cast v0, Lcom/inmobi/ads/ay;

    .line 151
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->unregisterAdView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->endSession()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unregistered VideoView to IAS AdSession : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/q;->g:Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3218
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3219
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    if-eqz v1, :cond_1

    .line 3220
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 164
    :goto_1
    return-void

    .line 152
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 324
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 327
    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/inmobi/ads/q;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/q;->h:Lcom/inmobi/ads/q$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 337
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in destroy with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->e()V

    throw v0
.end method

.method public final f()Lcom/inmobi/ads/ViewableAd$a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/q;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->f()Lcom/inmobi/ads/ViewableAd$a;

    move-result-object v0

    return-object v0
.end method
