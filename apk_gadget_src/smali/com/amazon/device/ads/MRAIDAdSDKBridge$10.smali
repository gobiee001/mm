.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAdOnThread(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
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
    .line 1122
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->triggered:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->triggered:Z

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->triggered:Z

    .line 1133
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$800(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "Expand ViewTreeObserver fired"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->EXPANDED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1137
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string v1, "mraidBridge.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    .line 1139
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    .line 1141
    :cond_0
    return-void
.end method
