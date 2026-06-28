.class final Lcom/inmobi/rendering/a/c$b$1$1$1$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c$b$1$1$1;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b$1$1$1;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1$1$1$1;->a:Lcom/inmobi/rendering/a/c$b$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1$1;->a:Lcom/inmobi/rendering/a/c$b$1$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1$1;->a:Landroid/webkit/WebView;

    check-cast v0, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;

    .line 463
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView;->a:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1$1;->a:Lcom/inmobi/rendering/a/c$b$1$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
