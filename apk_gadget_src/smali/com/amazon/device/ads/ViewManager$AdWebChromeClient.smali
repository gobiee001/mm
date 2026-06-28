.class Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/ViewManager;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/ViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/device/ads/ViewManager;
    .param p2, "x1"    # Lcom/amazon/device/ads/ViewManager$1;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;-><init>(Lcom/amazon/device/ads/ViewManager;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-static {v0}, Lcom/amazon/device/ads/ViewManager;->access$100(Lcom/amazon/device/ads/ViewManager;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x0

    return v0
.end method
