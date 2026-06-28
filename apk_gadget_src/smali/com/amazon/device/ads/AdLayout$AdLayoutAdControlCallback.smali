.class Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;
.super Ljava/lang/Object;
.source "AdLayout.java"

# interfaces
.implements Lcom/amazon/device/ads/AdControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdLayoutAdControlCallback"
.end annotation


# instance fields
.field private properties:Lcom/amazon/device/ads/AdProperties;

.field final synthetic this$0:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosing()I
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    const/4 v0, 0x0

    .line 1351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method handleAdEvent(Lcom/amazon/device/ads/AdEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    const/4 v1, 0x1

    .line 1324
    sget-object v2, Lcom/amazon/device/ads/AdLayout$4;->$SwitchMap$com$amazon$device$ads$AdEvent$AdEventType:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getAdEventType()Lcom/amazon/device/ads/AdEvent$AdEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdEvent$AdEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1340
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1327
    :pswitch_0
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpanded(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 1331
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdCollapsed(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0

    .line 1334
    :pswitch_2
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdEvent;->getParameters()Lcom/amazon/device/ads/ParameterMap;

    move-result-object v2

    const-string v3, "positionOnScreen"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/ParameterMap;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1335
    .local v0, "positionOnScreen":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAdReady(Z)Z
    .locals 1
    .param p1, "deferredLoad"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdLayout;->prepareAd(Z)Z

    move-result v0

    return v0
.end method

.method notifyAdShowing(Lcom/amazon/device/ads/AdProperties;)V
    .locals 2
    .param p1, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->adShown()V

    .line 1302
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    .line 1303
    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->handleAdEvent(Lcom/amazon/device/ads/AdEvent;)Z

    .line 1320
    return-void
.end method

.method public onAdExpired()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public onAdFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .param p1, "adError"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1308
    sget-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdError$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdLayout;->access$602(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/AdListenerExecutor;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    .line 1314
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .param p1, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->properties:Lcom/amazon/device/ads/AdProperties;

    .line 1267
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->render()V

    .line 1268
    return-void
.end method

.method public onAdRendered()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1274
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1275
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1277
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdLayout;->removeView(Landroid/view/View;)V

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/Destroyable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->access$500(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/Destroyable;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/device/ads/Destroyable;->destroy()V

    .line 1283
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/ads/AdLayout;->access$402(Lcom/amazon/device/ads/AdLayout;Landroid/view/View;)Landroid/view/View;

    .line 1284
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getDestroyable()Lcom/amazon/device/ads/Destroyable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/ads/AdLayout;->access$502(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/Destroyable;)Lcom/amazon/device/ads/Destroyable;

    .line 1285
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1289
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v2}, Lcom/amazon/device/ads/AdLayout;->access$400(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/AdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1291
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->properties:Lcom/amazon/device/ads/AdProperties;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;->notifyAdShowing(Lcom/amazon/device/ads/AdProperties;)V

    .line 1292
    return-void
.end method

.method public postAdRendered()V
    .locals 0

    .prologue
    .line 1358
    return-void
.end method
