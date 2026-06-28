.class Lcom/applovin/impl/sdk/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/q;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field final synthetic d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field final synthetic e:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field final synthetic f:Lcom/applovin/sdk/AppLovinAdClickListener;

.field final synthetic g:Lcom/applovin/impl/sdk/aw;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aw;Lcom/applovin/impl/sdk/q;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/q;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ax;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ax;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iput-object p5, p0, Lcom/applovin/impl/sdk/ax;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p6, p0, Lcom/applovin/impl/sdk/ax;->e:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p7, p0, Lcom/applovin/impl/sdk/ax;->f:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    iget-object v1, v1, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aw;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v9

    new-instance v0, Lcom/applovin/impl/sdk/bc;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ax;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ax;->c:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v4, p0, Lcom/applovin/impl/sdk/ax;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v5, p0, Lcom/applovin/impl/sdk/ax;->e:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v6, p0, Lcom/applovin/impl/sdk/ax;->f:Lcom/applovin/sdk/AppLovinAdClickListener;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/bc;-><init>(Lcom/applovin/impl/sdk/aw;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/ax;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    invoke-interface {v9, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    invoke-static {v1}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v8, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    instance-of v1, v8, Lcom/applovin/impl/sdk/am;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    move-object v1, v8

    check-cast v1, Lcom/applovin/impl/sdk/am;

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;Lcom/applovin/impl/sdk/am;Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/ax;->g:Lcom/applovin/impl/sdk/aw;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ax;->a:Lcom/applovin/impl/sdk/q;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ax;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ax;->e:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/aw;->a(Lcom/applovin/impl/sdk/aw;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    goto :goto_0
.end method
