.class Lcom/applovin/impl/sdk/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aw;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final f:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/aw;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/applovin/impl/sdk/bc;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p6, p0, Lcom/applovin/impl/sdk/bc;->d:Lcom/applovin/sdk/AppLovinAdClickListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/bc;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bc;->b:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/aw;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/ax;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/sdk/bc;-><init>(Lcom/applovin/impl/sdk/aw;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/am;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/impl/sdk/aw;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->d(Lcom/applovin/impl/sdk/aw;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/bu;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/am;->ae()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/fp;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/fp;-><init>(Lcom/applovin/impl/sdk/am;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->c(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/ft;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/applovin/impl/sdk/ft;->a(Z)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/impl/sdk/aw;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "network_timeout"

    const/16 v0, -0x1f4

    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/dm;->a()Lcom/applovin/impl/sdk/dm;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/applovin/impl/sdk/dm;->a(Lcom/applovin/impl/sdk/am;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v1}, Lcom/applovin/impl/sdk/aw;->b(Lcom/applovin/impl/sdk/aw;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v3, p0, Lcom/applovin/impl/sdk/bc;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v2, v2, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, p1, v0, v2}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;ILcom/applovin/sdk/AppLovinSdk;)V

    goto :goto_0

    :cond_3
    const-string v1, "user_closed_video"

    const/16 v0, -0x258

    goto :goto_1
.end method

.method private a(Lcom/applovin/impl/sdk/cj;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "Handling ad hidden for mediated ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/bu;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->d:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 5

    instance-of v0, p1, Lcom/applovin/impl/sdk/ap;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/applovin/impl/sdk/ap;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ap;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/am;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/applovin/impl/sdk/am;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/am;)V

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/applovin/impl/sdk/cj;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/applovin/impl/sdk/cj;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/cj;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "IncentivizedAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Something is terribly wrong. Received `adHidden` callback for invalid ad of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/bu;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/bu;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    const-string v1, "network_timeout"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/aw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;ILcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    iget-object v5, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZLcom/applovin/sdk/AppLovinSdk;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bc;->a:Lcom/applovin/impl/sdk/aw;

    invoke-static {v0, p4}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;Z)Z

    return-void
.end method
