.class Lcom/applovin/impl/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    instance-of v0, v0, Lcom/applovin/impl/sdk/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/m;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/content/Context;

    move-result-object v4

    instance-of v0, v4, Landroid/app/Activity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/n;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/fy;->a(Landroid/view/View;Lcom/applovin/sdk/AppLovinSdk;)Landroid/app/Activity;

    move-result-object v4

    :cond_2
    instance-of v0, v4, Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v6, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    new-instance v0, Lcom/applovin/impl/adview/ar;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/n;

    move-result-object v3

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v5}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/ar;-><init>(Lcom/applovin/impl/sdk/m;Ljava/lang/String;Lcom/applovin/impl/adview/n;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-static {v6, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ar;

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/c;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/b;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/ar;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ar;->show()V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/sdk/AppLovinSdk;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/g;->d()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v2, "AppLovinAdView"

    const-string v3, "Unable to expand ad. No Activity found."

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/m;->g()Landroid/net/Uri;

    move-result-object v5

    new-instance v0, Lcom/applovin/impl/sdk/eb;

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->ah()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->l(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/g;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/g;->b()V

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/b;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/n;

    move-result-object v0

    const-string v1, "javascript:al_onFailedExpand();"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
