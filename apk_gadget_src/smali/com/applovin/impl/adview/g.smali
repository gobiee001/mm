.class Lcom/applovin/impl/adview/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->o(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->o(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->o(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ar;->a()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->o(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/ar;->dismiss()V

    iget-object v2, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ar;

    move-object v1, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v3, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/applovin/impl/sdk/bu;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/sdk/AppLovinSdk;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ar;->a()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/ar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/adview/ar;->dismiss()V

    iget-object v2, p0, Lcom/applovin/impl/adview/g;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/ar;)Lcom/applovin/impl/adview/ar;

    move-object v1, v0

    goto :goto_0
.end method
