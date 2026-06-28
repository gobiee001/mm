.class public Lcom/mopub/mobileads/WebViewCacheService$Config;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/WebViewCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private final mWeakInterstitial:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Lcom/mopub/mobileads/BaseWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 1
    .param p1, "baseWebView"    # Lcom/mopub/mobileads/BaseWebView;
    .param p2, "baseInterstitial"    # Lcom/mopub/mobileads/Interstitial;
    .param p3, "viewabilityManager"    # Lcom/mopub/common/ExternalViewabilitySessionManager;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 39
    return-void
.end method


# virtual methods
.method public getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object v0
.end method

.method public getWeakInterstitial()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method
