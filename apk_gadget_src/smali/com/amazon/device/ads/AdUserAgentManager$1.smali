.class Lcom/amazon/device/ads/AdUserAgentManager$1;
.super Ljava/lang/Object;
.source "AdUserAgentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdUserAgentManager;->buildAndSetUserAgentString(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdUserAgentManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdUserAgentManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/amazon/device/ads/AdUserAgentManager$1;->this$0:Lcom/amazon/device/ads/AdUserAgentManager;

    iput-object p2, p0, Lcom/amazon/device/ads/AdUserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/AdUserAgentManager$1;->this$0:Lcom/amazon/device/ads/AdUserAgentManager;

    invoke-static {}, Lcom/amazon/device/ads/WebViewFactory;->getInstance()Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdUserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdUserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    .line 45
    return-void
.end method
