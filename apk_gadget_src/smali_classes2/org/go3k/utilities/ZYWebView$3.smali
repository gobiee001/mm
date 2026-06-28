.class Lorg/go3k/utilities/ZYWebView$3;
.super Ljava/lang/Object;
.source "ZYWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/go3k/utilities/ZYWebView;->removeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/go3k/utilities/ZYWebView;


# direct methods
.method constructor <init>(Lorg/go3k/utilities/ZYWebView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/go3k/utilities/ZYWebView;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView$3;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lorg/go3k/utilities/ZYWebView$3;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v1}, Lorg/go3k/utilities/ZYWebView;->access$000(Lorg/go3k/utilities/ZYWebView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/go3k/utilities/ZYWebView$3;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v2}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lorg/go3k/utilities/ZYWebView$3;->this$0:Lorg/go3k/utilities/ZYWebView;

    invoke-static {v1}, Lorg/go3k/utilities/ZYWebView;->access$200(Lorg/go3k/utilities/ZYWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    iget-object v1, p0, Lorg/go3k/utilities/ZYWebView$3;->this$0:Lorg/go3k/utilities/ZYWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/go3k/utilities/ZYWebView;->access$202(Lorg/go3k/utilities/ZYWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 211
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
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
