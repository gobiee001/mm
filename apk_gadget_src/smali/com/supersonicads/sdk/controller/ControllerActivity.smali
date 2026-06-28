.class public Lcom/supersonicads/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/supersonicads/sdk/controller/VideoEventsListener;
.implements Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private calledFromOnCreate:Z

.field public currentRequestedRotation:I

.field private final decorViewSettings:Ljava/lang/Runnable;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mIsImmersive:Z

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/supersonicads/sdk/data/AdUnitsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/supersonicads/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 50
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$1;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    iput-boolean v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/controller/ControllerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/ControllerActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/supersonicads/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/ControllerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonicads/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/controller/ControllerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScreenOn()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$4;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-static {p0}, Lcom/supersonic/environment/DeviceStatus;->isDeviceOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    .line 304
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 307
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 309
    return-void
.end method

.method private initOrientationState()V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "orientation_set_flag"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "orientation":Ljava/lang/String;
    const-string v3, "rotation_set_flag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "rotation":I
    invoke-direct {p0, v1, v2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method private keepScreenOn()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/supersonicads/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$3;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method private removeWebViewContainerView()V
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 260
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 336
    invoke-static {p0}, Lcom/supersonic/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 338
    .local v0, "rotation":I
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-nez v0, :cond_0

    .line 341
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 355
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 344
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 347
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 349
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 350
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 353
    :cond_3
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setInitiatePortraitOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    invoke-static {p0}, Lcom/supersonic/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 364
    .local v0, "rotation":I
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-nez v0, :cond_0

    .line 367
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 381
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 370
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 372
    :cond_1
    if-ne v0, v3, :cond_2

    .line 373
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 376
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v3}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 379
    :cond_3
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->onBackPressed()V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 286
    sget-object v1, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->getInstance()Lcom/supersonicads/sdk/handlers/BackButtonHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/supersonicads/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    .line 290
    .local v0, "isHandled":Z
    if-nez v0, :cond_0

    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 293
    :cond_0
    return-void
.end method

.method public onCloseRequested()V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v4, "ControllerActivity"

    invoke-static {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v5, "ControllerActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object v4, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 87
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->hideActivtiyStatusBar()V

    .line 90
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v1

    .line 91
    .local v1, "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    invoke-virtual {v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;

    move-result-object v4

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .line 92
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4, v7}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setId(I)V

    .line 95
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setOnWebViewControllerChangeListener(Lcom/supersonicads/sdk/listeners/OnWebViewChangeListener;)V

    .line 96
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVideoEventsListener(Lcom/supersonicads/sdk/controller/VideoEventsListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "productType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    .line 100
    const-string v4, "immersive"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 102
    iget-boolean v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/supersonicads/sdk/controller/ControllerActivity$2;

    invoke-direct {v5, p0}, Lcom/supersonicads/sdk/controller/ControllerActivity$2;-><init>(Lcom/supersonicads/sdk/controller/ControllerActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 114
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    if-eqz p1, :cond_4

    .line 120
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 121
    .local v2, "state":Lcom/supersonicads/sdk/data/AdUnitsState;
    if-eqz v2, :cond_1

    .line 122
    iput-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    .line 123
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->restoreState(Lcom/supersonicads/sdk/data/AdUnitsState;)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 132
    .end local v2    # "state":Lcom/supersonicads/sdk/data/AdUnitsState;
    :cond_2
    :goto_1
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 133
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/supersonicads/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 139
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_3

    .line 142
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 143
    iput-boolean v7, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 144
    invoke-virtual {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->finish()V

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->initOrientationState()V

    .line 150
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v4

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "ControllerActivity#onCreate"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 128
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "ssaPubAgt":Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :cond_4
    iget-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getSavedState()Lcom/supersonicads/sdk/data/AdUnitsState;

    move-result-object v4

    iput-object v4, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    sget-object v1, Lcom/supersonicads/sdk/controller/SupersonicWebView$State;->Gone:Lcom/supersonicads/sdk/controller/SupersonicWebView$State;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setState(Lcom/supersonicads/sdk/controller/SupersonicWebView$State;)V

    .line 252
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->removeVideoEventsListener()V

    .line 255
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 385
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->hideCustomView()V

    .line 388
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 393
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/supersonicads/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 232
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->pause()V

    .line 235
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 239
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->resume()V

    .line 215
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mWebViewController:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->viewableChange(ZLjava/lang/String;)V

    .line 218
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 222
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 201
    const-string v0, "state"

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mState:Lcom/supersonicads/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 299
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 434
    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 424
    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 429
    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 419
    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 439
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 411
    iget-boolean v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 400
    iget v0, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 401
    sget-object v0, Lcom/supersonicads/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput p1, p0, Lcom/supersonicads/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 405
    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->keepScreenOn()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/supersonicads/sdk/controller/ControllerActivity;->cancelScreenOn()V

    goto :goto_0
.end method
