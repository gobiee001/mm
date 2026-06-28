.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/BaseInterstitialActivity;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;
    }
.end annotation


# instance fields
.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/MoPubActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;
    .param p6, "orientation"    # Lcom/mopub/common/CreativeOrientation;
    .param p7, "broadcastIdentifier"    # J

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "Scrollable"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    const-string v1, "com_mopub_orientation"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "baseInterstitial"    # Lcom/mopub/mobileads/Interstitial;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
    .param p3, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .param p4, "htmlData"    # Ljava/lang/String;
    .param p5, "isScrollable"    # Z
    .param p6, "redirectUrl"    # Ljava/lang/String;
    .param p7, "clickthroughUrl"    # Ljava/lang/String;
    .param p8, "broadcastIdentifier"    # J

    .prologue
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v7

    .line 85
    .local v7, "htmlInterstitialWebView":Lcom/mopub/mobileads/HtmlInterstitialWebView;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 86
    invoke-virtual {v7}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enableJavascriptCaching()V

    .line 88
    new-instance v0, Lcom/mopub/mobileads/MoPubActivity$1;

    invoke-direct {v0, p3}, Lcom/mopub/mobileads/MoPubActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v7, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    new-instance v6, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v6, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    .line 103
    .local v6, "externalViewabilitySessionManager":Lcom/mopub/common/ExternalViewabilitySessionManager;
    const/4 v0, 0x1

    invoke-virtual {v6, p1, v7, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 105
    invoke-virtual {v7, p4}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 106
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0, v7, v6}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    .line 108
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlData"    # Ljava/lang/String;
    .param p2, "adReport"    # Lcom/mopub/common/AdReport;
    .param p3, "isScrollable"    # Z
    .param p4, "redirectUrl"    # Ljava/lang/String;
    .param p5, "clickthroughUrl"    # Ljava/lang/String;
    .param p6, "creativeOrientation"    # Lcom/mopub/common/CreativeOrientation;
    .param p7, "broadcastIdentifier"    # J

    .prologue
    .line 48
    invoke-static/range {p0 .. p8}, Lcom/mopub/mobileads/MoPubActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v2, "MoPubActivity"

    const-string v3, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 15

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 113
    .local v14, "intent":Landroid/content/Intent;
    const-string v0, "Scrollable"

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    .local v2, "isScrollable":Z
    const-string v0, "Redirect-Url"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "redirectUrl":Ljava/lang/String;
    const-string v0, "Clickthrough-Url"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "clickthroughUrl":Ljava/lang/String;
    const-string v0, "Html-Response-Body"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "htmlResponse":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v11

    .line 119
    .local v11, "broadcastIdentifier":Ljava/lang/Long;
    if-eqz v11, :cond_1

    .line 124
    invoke-static {v11}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v12

    .line 125
    .local v12, "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v12}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    new-instance v1, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    .line 128
    invoke-virtual {v5}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v5

    .line 127
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v12}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 145
    .end local v12    # "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    :goto_1
    return-object v0

    .line 128
    .restart local v12    # "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 138
    .end local v12    # "config":Lcom/mopub/mobileads/WebViewCacheService$Config;
    :cond_1
    const-string v0, "WebView cache miss. Recreating the WebView."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    new-instance v7, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v7, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    move v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 142
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    const/4 v5, 0x1

    invoke-virtual {v0, p0, v1, v5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v13}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com_mopub_orientation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 155
    .local v0, "orientationExtra":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mopub/common/CreativeOrientation;

    if-nez v2, :cond_2

    .line 156
    :cond_0
    sget-object v1, Lcom/mopub/common/CreativeOrientation;->UNDEFINED:Lcom/mopub/common/CreativeOrientation;

    .line 160
    .local v1, "requestedOrientation":Lcom/mopub/common/CreativeOrientation;
    :goto_0
    invoke-static {p0, v1}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 162
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v2, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "com.mopub.action.interstitial.show"

    invoke-static {p0, v2, v3, v4}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 166
    return-void

    .end local v1    # "requestedOrientation":Lcom/mopub/common/CreativeOrientation;
    :cond_2
    move-object v1, v0

    .line 158
    check-cast v1, Lcom/mopub/common/CreativeOrientation;

    .restart local v1    # "requestedOrientation":Lcom/mopub/common/CreativeOrientation;
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onDestroy()V

    .line 180
    return-void
.end method
