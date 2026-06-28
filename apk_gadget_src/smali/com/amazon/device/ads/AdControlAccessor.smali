.class Lcom/amazon/device/ads/AdControlAccessor;
.super Ljava/lang/Object;
.source "AdControlAccessor.java"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0
    .param p1, "adController"    # Lcom/amazon/device/ads/AdController;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    .line 23
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 1
    .param p1, "jsif"    # Ljava/lang/Object;
    .param p2, "shouldPreload"    # Z
    .param p3, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    .line 296
    return-void
.end method

.method public addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/amazon/device/ads/SDKEventListener;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 285
    return-void
.end method

.method public closeAd()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    move-result v0

    return v0
.end method

.method public enableCloseButton(Z)V
    .locals 1
    .param p1, "showImage"    # Z

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 146
    return-void
.end method

.method public enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V
    .locals 1
    .param p1, "showImage"    # Z
    .param p2, "position"    # Lcom/amazon/device/ads/RelativePosition;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->enableNativeCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 157
    return-void
.end method

.method public fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/amazon/device/ads/AdEvent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 48
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getAdState()Lcom/amazon/device/ads/AdState;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdData;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()Lcom/amazon/device/ads/Position;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMaxExpandableSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalOrientation()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getOriginalOrientation()I

    move-result v0

    return v0
.end method

.method public getScalingMultiplier()D
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getScalingMultiplier()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewHeight()I

    move-result v0

    return v0
.end method

.method public getViewParentIfExpanded()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewParentIfExpanded()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getViewWidth()I

    move-result v0

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getWindowHeight()I

    move-result v0

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getWindowWidth()I

    move-result v0

    return v0
.end method

.method public injectJavascript(Ljava/lang/String;)V
    .locals 2
    .param p1, "javascript"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public injectJavascriptPreload(Ljava/lang/String;)V
    .locals 2
    .param p1, "javascript"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public isInterstitial()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isInterstitial()Z

    move-result v0

    return v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isModal()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "shouldPreload"    # Z
    .param p4, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdController;->loadHtml(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 101
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->loadUrl(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method public moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1
    .param p1, "newViewGroup"    # Landroid/view/ViewGroup;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "isModal"    # Z

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 207
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->openUrl(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public orientationChangeAttemptedWhenNotAllowed()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->orientationChangeAttemptedWhenNotAllowed()V

    .line 382
    return-void
.end method

.method public overrideBackButton(Z)V
    .locals 1
    .param p1, "override"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->overrideBackButton(Z)V

    .line 319
    return-void
.end method

.method public popView()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->popView()Z

    move-result v0

    return v0
.end method

.method public preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/AdController;->preloadHtml(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    .line 77
    return-void
.end method

.method public preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/amazon/device/ads/PreloadCallback;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdController;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    .line 110
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->reload()V

    .line 304
    return-void
.end method

.method public removeCloseButton()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->removeNativeCloseButton()V

    .line 166
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setExpanded(Z)V

    .line 236
    return-void
.end method

.method public setOriginalOrientation(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setOriginalOrientation(Landroid/app/Activity;)V

    .line 309
    return-void
.end method

.method public showNativeCloseButtonImage(Z)V
    .locals 1
    .param p1, "showNativeCloseButtonImage"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->showNativeCloseButtonImage(Z)V

    .line 171
    return-void
.end method

.method public stashView()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/device/ads/AdControlAccessor;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->stashView()V

    .line 31
    return-void
.end method
