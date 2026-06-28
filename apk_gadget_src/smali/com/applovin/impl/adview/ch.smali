.class public Lcom/applovin/impl/adview/ch;
.super Lcom/applovin/impl/adview/ak;


# instance fields
.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/ak;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/applovin/impl/adview/ch;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/ch;->d:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/ch;->d:F

    return-void
.end method

.method public a(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/applovin/impl/adview/ch;->c:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ch;->a(F)V

    return-void
.end method
