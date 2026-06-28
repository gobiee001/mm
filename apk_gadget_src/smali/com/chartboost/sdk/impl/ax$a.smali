.class Lcom/chartboost/sdk/impl/ax$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ax;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/ax;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/ax;Lcom/chartboost/sdk/impl/ax$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ax$a;-><init>(Lcom/chartboost/sdk/impl/ax;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ax;->r:Z

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/chartboost/sdk/impl/ax;->q:J

    .line 268
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total web view load response time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    iget-wide v2, v2, Lcom/chartboost/sdk/impl/ax;->q:J

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    iget-wide v4, v4, Lcom/chartboost/sdk/impl/ax;->p:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->c(Landroid/content/Context;)V

    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->d(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->o()V

    .line 276
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ax;->r:Z

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/d;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax$a;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 285
    const-string v0, "Webview seems to have some issues loading html, onRecievedError callback triggered"

    .line 286
    const-string v1, "CBWebViewProtocol"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method
