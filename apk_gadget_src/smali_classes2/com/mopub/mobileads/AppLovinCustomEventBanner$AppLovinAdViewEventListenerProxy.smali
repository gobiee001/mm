.class final Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AppLovinCustomEventBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppLovinAdViewEventListenerProxy"
.end annotation


# instance fields
.field private final customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .param p1, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;->customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 280
    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;->newInstance(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Ljava/lang/Object;
    .locals 4
    .param p0, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .prologue
    .line 272
    const-class v0, Lcom/applovin/adview/AppLovinAdViewEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/applovin/adview/AppLovinAdViewEventListener;

    aput-object v3, v1, v2

    new-instance v2, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;-><init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 284
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "adOpenedFullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "Banner opened fullscreen"

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;->customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    .line 303
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 291
    :cond_1
    const-string v1, "adClosedFullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const-string v1, "Banner closed fullscreen"

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;->customEventBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    goto :goto_0

    .line 296
    :cond_2
    const-string v1, "adLeftApplication"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    const-string v1, "Banner left application"

    invoke-static {v2, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string v1, "adFailedToDisplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
