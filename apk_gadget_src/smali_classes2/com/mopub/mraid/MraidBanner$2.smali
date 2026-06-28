.class Lcom/mopub/mraid/MraidBanner$2;
.super Ljava/lang/Object;
.source "MraidBanner.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBanner;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBanner;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mraid/MraidBanner;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    iput-object p2, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 3
    .param p1, "webView"    # Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .param p2, "viewabilityManager"    # Lcom/mopub/common/ExternalViewabilitySessionManager;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    new-instance v1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v2, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/mraid/MraidBanner;->access$102(Lcom/mopub/mraid/MraidBanner;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 92
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$2;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$100(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidBanner$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 93
    return-void
.end method
