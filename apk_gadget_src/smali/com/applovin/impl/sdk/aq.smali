.class public final Lcom/applovin/impl/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "<html><head></head><body></body></html>"

    return-object v0
.end method

.method public getAdIdNumber()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public isVideoAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
