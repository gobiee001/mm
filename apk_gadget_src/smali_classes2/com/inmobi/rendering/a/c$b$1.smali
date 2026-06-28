.class final Lcom/inmobi/rendering/a/c$b$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/a;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/inmobi/rendering/a/c$b;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b;Lcom/inmobi/rendering/a/a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    iput-object p2, p0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iput-object p3, p0, Lcom/inmobi/rendering/a/c$b$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 428
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-object v2, v2, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 431
    iget-object v1, p0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    invoke-static {v1}, Lcom/inmobi/rendering/a/c;->b(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 436
    :cond_0
    new-instance v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;

    new-instance v2, Lcom/inmobi/rendering/a/c$b$1$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$b$1$1;-><init>(Lcom/inmobi/rendering/a/c$b$1;)V

    invoke-direct {v1, v0, v2}, Lcom/inmobi/commons/core/network/WebViewNetworkTask;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;Landroid/webkit/WebViewClient;)V

    .line 1037
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;-><init>(Lcom/inmobi/commons/core/network/WebViewNetworkTask;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    .line 1038
    iget-object v0, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    iget-object v2, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1039
    iget-object v0, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1040
    iget-object v0, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1027
    iget-object v0, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->c:Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    iget-object v2, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkRequest;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/inmobi/commons/core/network/WebViewNetworkTask;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in WebViewNetworkTask.execute() method; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
