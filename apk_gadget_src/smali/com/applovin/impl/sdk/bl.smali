.class public Lcom/applovin/impl/sdk/bl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/impl/adview/az;

.field private c:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/az;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p1, p0, Lcom/applovin/impl/sdk/bl;->b:Lcom/applovin/impl/adview/az;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bl;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bl;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/adview/az;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->b:Lcom/applovin/impl/adview/az;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/bl;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->b:Lcom/applovin/impl/adview/az;

    new-instance v1, Lcom/applovin/impl/sdk/bm;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bm;-><init>(Lcom/applovin/impl/sdk/bl;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/az;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->b:Lcom/applovin/impl/adview/az;

    new-instance v1, Lcom/applovin/impl/sdk/bn;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bn;-><init>(Lcom/applovin/impl/sdk/bl;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/az;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->b:Lcom/applovin/impl/adview/az;

    new-instance v1, Lcom/applovin/impl/sdk/bq;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bq;-><init>(Lcom/applovin/impl/sdk/bl;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/az;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
