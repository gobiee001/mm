.class Lcom/amazon/device/ads/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ViewManager;->destroyWebViews([Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;

.field final synthetic val$webViews:[Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ViewManager;[Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$1;->this$0:Lcom/amazon/device/ads/ViewManager;

    iput-object p2, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 531
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager$1;->val$webViews:[Landroid/webkit/WebView;

    .local v0, "arr$":[Landroid/webkit/WebView;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 533
    .local v4, "webView":Landroid/webkit/WebView;
    if-eqz v4, :cond_1

    .line 535
    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 537
    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/amazon/device/ads/ViewManager$1;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-static {v5}, Lcom/amazon/device/ads/ViewManager;->access$100(Lcom/amazon/device/ads/ViewManager;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v5

    const-string v6, "Caught an IllegalArgumentException while destroying a WebView: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 551
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "webView":Landroid/webkit/WebView;
    :cond_2
    return-void
.end method
