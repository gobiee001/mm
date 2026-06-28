.class Lorg/go3k/utilities/ZYWebView$2;
.super Ljava/lang/Object;
.source "ZYWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/go3k/utilities/ZYWebView;->updateURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/go3k/utilities/ZYWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/go3k/utilities/ZYWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/go3k/utilities/ZYWebView;

    .prologue
    .line 185
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView$2;->this$0:Lorg/go3k/utilities/ZYWebView;

    iput-object p2, p0, Lorg/go3k/utilities/ZYWebView$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lorg/go3k/utilities/ZYWebView$2;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v1}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DA2.WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOnUiThread->run() unable to update url. Exception message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
