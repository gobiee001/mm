.class Lcom/amazon/device/ads/VideoActionHandler;
.super Ljava/lang/Object;
.source "VideoActionHandler.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$IAdActivityAdapter;


# instance fields
.field private activity:Landroid/app/Activity;

.field private layout:Landroid/widget/RelativeLayout;

.field private player:Lcom/amazon/device/ads/AdVideoPlayer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/VideoActionHandler;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private initPlayer(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 77
    new-instance v1, Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 78
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdVideoPlayer;->setPlayData(Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdVideoPlayer;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 85
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/VideoActionHandler;->setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V

    .line 86
    return-void
.end method

.method private setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V
    .locals 1
    .param p1, "player"    # Lcom/amazon/device/ads/AdVideoPlayer;

    .prologue
    .line 59
    new-instance v0, Lcom/amazon/device/ads/VideoActionHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/VideoActionHandler$1;-><init>(Lcom/amazon/device/ads/VideoActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setListener(Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 129
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 44
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/VideoActionHandler;->initPlayer(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdVideoPlayer;->playVideo()V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 110
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    return-void
.end method

.method public preOnCreate()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 121
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    .line 36
    return-void
.end method
