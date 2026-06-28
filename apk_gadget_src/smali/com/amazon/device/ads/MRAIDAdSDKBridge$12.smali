.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field private triggered:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1238
    iget-boolean v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->triggered:Z

    if-nez v3, :cond_0

    .line 1240
    iput-boolean v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->triggered:Z

    .line 1241
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1242
    .local v1, "onScreen":[I
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1243
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v5

    aget v4, v1, v7

    aget v5, v1, v5

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v1, v7

    iget-object v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v7}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1248
    .local v2, "positionOnScreen":Landroid/graphics/Rect;
    new-instance v0, Lcom/amazon/device/ads/AdEvent;

    sget-object v3, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v0, v3}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    .line 1249
    .local v0, "adEvent":Lcom/amazon/device/ads/AdEvent;
    const-string v3, "positionOnScreen"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/device/ads/AdEvent;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/device/ads/AdEvent;

    .line 1250
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1252
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v3

    const-string v4, "mraidBridge.stateChange(\'resized\');"

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1253
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1255
    .end local v0    # "adEvent":Lcom/amazon/device/ads/AdEvent;
    .end local v1    # "onScreen":[I
    .end local v2    # "positionOnScreen":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
