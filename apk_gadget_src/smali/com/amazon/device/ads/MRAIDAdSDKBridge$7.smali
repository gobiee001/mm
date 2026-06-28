.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field private triggered:Z

.field final synthetic val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 1

    .prologue
    .line 979
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 987
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->triggered:Z

    if-nez v0, :cond_0

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->triggered:Z

    .line 991
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->CLOSED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 993
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const-string v1, "mraidBridge.stateChange(\'default\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 996
    :cond_0
    return-void
.end method
