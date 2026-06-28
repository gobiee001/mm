.class public Lcom/supersonicads/sdk/controller/OpenUrlActivity;
.super Landroid/app/Activity;
.source "OpenUrlActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;
    }
.end annotation


# instance fields
.field private final decorViewSettings:Ljava/lang/Runnable;

.field isSecondaryWebview:Z

.field private mIsImmersive:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUrl:Ljava/lang/String;

.field private mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 280
    new-instance v0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$2;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$2;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    return v0
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->requestWindowFeature(I)Z

    .line 240
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 243
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 245
    return-void
.end method

.method private initializeWebView()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v1, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 116
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setId(I)V

    .line 118
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebViewClient;

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 121
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 124
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 135
    new-instance v2, Landroid/widget/ProgressBar;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030073

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 140
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->loadUrl(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v3, "secondary"

    invoke-virtual {v2, v5, v3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 159
    :cond_0
    return-void

    .line 137
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const-string v1, "secondaryClose"

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->engageEnd(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 275
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 184
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OpenUrlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUrlActivity:: loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-string v3, "OpenUrlActivity"

    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v4, "OpenUrlActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v3, "OpenUrlActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v2

    .line 65
    .local v2, "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    invoke-virtual {v2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 68
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->hideActivityTitle()V

    .line 71
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->hideActivtiyStatusBar()V

    .line 74
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/supersonicads/sdk/controller/SupersonicWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    .line 78
    sget-object v3, Lcom/supersonicads/sdk/controller/SupersonicWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    .line 80
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "immersive"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 83
    iget-boolean v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;

    invoke-direct {v4, p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;-><init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 93
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v3, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "OpenUrlActivity#onCreate"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v3, 0x0

    const-string v4, "secondary"

    invoke-virtual {v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 179
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->initializeWebView()V

    .line 107
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 290
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    :cond_0
    return-void
.end method
