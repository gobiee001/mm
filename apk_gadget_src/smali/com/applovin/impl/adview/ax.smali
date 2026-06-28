.class Lcom/applovin/impl/adview/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/ar;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->e(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ak;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->d(Lcom/applovin/impl/adview/ar;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->e(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ak;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->e(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ak;->bringToFront()V

    new-instance v0, Lcom/applovin/impl/sdk/eb;

    iget-object v1, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v1}, Lcom/applovin/impl/adview/ar;->f(Lcom/applovin/impl/adview/ar;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->Q()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Lcom/applovin/impl/adview/ay;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/ay;-><init>(Lcom/applovin/impl/adview/ax;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->e(Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ak;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v1}, Lcom/applovin/impl/adview/ar;->g(Lcom/applovin/impl/adview/ar;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "ExpandedAdDialog"

    const-string v3, "Unable to fade in close button"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/ax;->a:Lcom/applovin/impl/adview/ar;

    invoke-static {v0}, Lcom/applovin/impl/adview/ar;->d(Lcom/applovin/impl/adview/ar;)V

    goto :goto_0
.end method
