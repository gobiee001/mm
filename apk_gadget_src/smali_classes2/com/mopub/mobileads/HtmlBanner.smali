.class public Lcom/mopub/mobileads/HtmlBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "HtmlBanner.java"


# instance fields
.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
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
    .line 86
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
    .line 36
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lcom/mopub/mobileads/HtmlBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "Html-Response-Body"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 38
    .local v8, "htmlData":Ljava/lang/String;
    const-string v0, "Redirect-Url"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 39
    .local v4, "redirectUrl":Ljava/lang/String;
    const-string v0, "Clickthrough-Url"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 40
    .local v5, "clickthroughUrl":Ljava/lang/String;
    const-string v0, "Scrollable"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 43
    .local v9, "isScrollable":Ljava/lang/Boolean;
    :try_start_0
    const-string v0, "mopub-intent-ad-report"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/AdReport;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v1, "adReport":Lcom/mopub/common/AdReport;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlBannerWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlBannerWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 57
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 58
    check-cast v6, Landroid/app/Activity;

    .line 59
    .local v6, "activity":Landroid/app/Activity;
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0, v6}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v2, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-virtual {v0, v6, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 65
    .end local v6    # "activity":Landroid/app/Activity;
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-virtual {v0, v8}, Lcom/mopub/mobileads/HtmlBannerWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 66
    .end local v1    # "adReport":Lcom/mopub/common/AdReport;
    .end local v4    # "redirectUrl":Ljava/lang/String;
    .end local v5    # "clickthroughUrl":Ljava/lang/String;
    .end local v8    # "htmlData":Ljava/lang/String;
    .end local v9    # "isScrollable":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 44
    .restart local v4    # "redirectUrl":Ljava/lang/String;
    .restart local v5    # "clickthroughUrl":Ljava/lang/String;
    .restart local v8    # "htmlData":Ljava/lang/String;
    .restart local v9    # "isScrollable":Ljava/lang/Boolean;
    :catch_0
    move-exception v7

    .line 45
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string v0, "LocalExtras contained an incorrect type."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 50
    .end local v4    # "redirectUrl":Ljava/lang/String;
    .end local v5    # "clickthroughUrl":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "htmlData":Ljava/lang/String;
    .end local v9    # "isScrollable":Ljava/lang/Boolean;
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 62
    .restart local v1    # "adReport":Lcom/mopub/common/AdReport;
    .restart local v4    # "redirectUrl":Ljava/lang/String;
    .restart local v5    # "clickthroughUrl":Ljava/lang/String;
    .restart local v8    # "htmlData":Ljava/lang/String;
    .restart local v9    # "isScrollable":Ljava/lang/Boolean;
    :cond_1
    const-string v0, "Unable to start viewability session for HTML banner: Context provided was not an Activity."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlBannerWebView;->destroy()V

    .line 78
    :cond_1
    return-void
.end method

.method protected trackMpxAndThirdPartyImpressions()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBanner;->mHtmlBannerWebView:Lcom/mopub/mobileads/HtmlBannerWebView;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlBannerWebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    return-void
.end method
