.class public Lcom/applovin/impl/sdk/aw;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field protected final b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private c:Lcom/applovin/sdk/AppLovinAd;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/applovin/sdk/AppLovinAdLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/String;

.field private i:Lcom/applovin/impl/sdk/ft;

.field private volatile j:Z

.field private k:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/applovin/adview/AppLovinInterstitialAdDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/aw;->j:Z

    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->k:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    check-cast v1, Lcom/applovin/impl/sdk/q;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/q;->m()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/o;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    instance-of v0, v1, Lcom/applovin/impl/sdk/cj;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast v1, Lcom/applovin/impl/sdk/cj;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/cj;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Skipping incentivized video playback: Activity required."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0, v0, p3, p4}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v2, "IncentivizedAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping mediated incentivized video playback: an unknown ad was pre-loaded: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->e()V

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/q;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->e()V

    goto :goto_1
.end method

.method private a(Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/ft;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/ft;-><init>(Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->i:Lcom/applovin/impl/sdk/ft;

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->i:Lcom/applovin/impl/sdk/ft;

    sget-object v2, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/cj;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/h;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/h;-><init>()V

    invoke-virtual {v0, p5}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-virtual {v0, p4}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {v0, p3}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getMediationService()Lcom/applovin/impl/sdk/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/applovin/impl/sdk/MediationServiceImpl;->showAd(Lcom/applovin/impl/sdk/cj;Ljava/lang/String;Landroid/app/Activity;Lcom/applovin/impl/sdk/h;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->f()V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/q;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to render an ad of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in an Incentivized Ad interstitial."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->m()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/o;

    if-ne v0, v1, :cond_3

    instance-of v0, p1, Lcom/applovin/impl/sdk/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/q;->t()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/ci;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/am;

    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p2, v1}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/impl/sdk/am;Landroid/content/Context;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Failed to render an ad: video cache has been removed."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4, p5}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/am;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/applovin/impl/sdk/ax;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/ax;-><init>(Lcom/applovin/impl/sdk/aw;Lcom/applovin/impl/sdk/q;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->am:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/applovin/impl/sdk/bf;->b()Lcom/applovin/impl/sdk/bk;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/bk;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/bk;

    move-result-object v1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v1, p2}, Lcom/applovin/impl/sdk/bk;->a(Landroid/app/Activity;)Lcom/applovin/impl/sdk/bk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/bk;->a(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/bk;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/applovin/impl/sdk/bk;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)Lcom/applovin/impl/sdk/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/bk;->a(Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bk;->a()Lcom/applovin/impl/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bf;->a()V

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "IncentivizedAdController"

    const-string v3, "Unable to show Incentivized Ad prompt. Must pass in an active Activity context."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZLcom/applovin/sdk/AppLovinSdk;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/bu;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/aw;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/aw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/aw;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/ft;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->i:Lcom/applovin/impl/sdk/ft;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->f()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x12c

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/lang/String;

    return-void
.end method

.method private g()Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/ay;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ay;-><init>(Lcom/applovin/impl/sdk/aw;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 6

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/aw;->g()Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v2

    :goto_0
    iput-object p2, p0, Lcom/applovin/impl/sdk/aw;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/aw;->a(Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void

    :cond_0
    move-object v2, p3

    goto :goto_0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "User requested preload of incentivized ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/aw;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden)."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/az;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/az;-><init>(Lcom/applovin/impl/sdk/aw;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/aw;->h:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->an:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/bd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, p2, p1}, Lcom/applovin/impl/sdk/bd;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bd;->a()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->c:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->h:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/aw;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/aw;->b:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0
.end method
