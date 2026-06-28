.class public Lcom/supersonicads/sdk/controller/ControllerView;
.super Landroid/widget/FrameLayout;
.source "ControllerView.java"

# interfaces
.implements Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerView;->setClickable(Z)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/controller/ControllerView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/ControllerView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->getWindowDecorViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private addViewToWindow()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/supersonicads/sdk/controller/ControllerView$1;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/ControllerView$1;-><init>(Lcom/supersonicads/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method private getNavigationBarPadding()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 165
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 167
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v2, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v3, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 174
    invoke-static {v0}, Lcom/supersonic/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v1

    .line 175
    .local v1, "orientation":I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 176
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v5, v4

    .line 183
    .end local v1    # "orientation":I
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .end local v3    # "visibleFrame":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v4

    .line 178
    .restart local v1    # "orientation":I
    .restart local v2    # "screenRect":Landroid/graphics/Rect;
    .restart local v3    # "visibleFrame":Landroid/graphics/Rect;
    :cond_1
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v4, v5, v4

    goto :goto_0

    .line 181
    .end local v1    # "orientation":I
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    .end local v3    # "visibleFrame":Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    .end local v0    # "resourceId":I
    :cond_0
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStatusBarPadding()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 134
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 135
    .local v1, "isFullScreen":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 139
    :goto_1
    return v3

    .end local v1    # "isFullScreen":Z
    :cond_0
    move v1, v3

    .line 134
    goto :goto_0

    .line 138
    .restart local v1    # "isFullScreen":Z
    :cond_1
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->getStatusBarHeight()I

    move-result v2

    .line 139
    .local v2, "top":I
    if-lez v2, :cond_2

    .end local v2    # "top":I
    :goto_2
    move v3, v2

    goto :goto_1

    .restart local v2    # "top":I
    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private getWindowDecorViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeViewFromWindow()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/supersonicads/sdk/controller/ControllerView$2;

    invoke-direct {v1, p0}, Lcom/supersonicads/sdk/controller/ControllerView$2;-><init>(Lcom/supersonicads/sdk/controller/ControllerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private setPaddingByOrientation(II)V
    .locals 3
    .param p1, "statusBarHeight"    # I
    .param p2, "navigationBarSize"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/supersonic/environment/DeviceStatus;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 121
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/supersonicads/sdk/controller/ControllerView;->setPadding(IIII)V

    .line 128
    .end local v0    # "orientation":I
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v0    # "orientation":I
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/supersonicads/sdk/controller/ControllerView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v0    # "orientation":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->resume()V

    .line 55
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->getInstance()Lcom/supersonicads/sdk/handlers/BackButtonHandler;

    move-result-object v1

    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->removeViewFromWindow()V

    .line 191
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->pause()V

    .line 63
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 67
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->removeVideoEventsListener()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->removeAllViews()V

    .line 71
    return-void
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 196
    return-void
.end method

.method public showInterstitial(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 2
    .param p1, "webView"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 40
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->requestFocus()Z

    .line 43
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->getStatusBarPadding()I

    move-result v0

    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->getNavigationBarPadding()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/supersonicads/sdk/controller/ControllerView;->setPaddingByOrientation(II)V

    .line 47
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerView;->addViewToWindow()V

    .line 48
    return-void
.end method
