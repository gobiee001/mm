.class public Lcom/amazon/insights/impl/DisabledAmazonInsights;
.super Lcom/amazon/insights/AmazonInsights;
.source "DisabledAmazonInsights.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/amazon/insights/AmazonInsights;-><init>()V

    return-void
.end method


# virtual methods
.method public getABTestClient()Lcom/amazon/insights/ABTestClient;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$1;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V

    return-object v0
.end method

.method public getEventClient()Lcom/amazon/insights/EventClient;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$2;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$2;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V

    return-object v0
.end method

.method public getSessionClient()Lcom/amazon/insights/SessionClient;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$4;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$4;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V

    return-object v0
.end method

.method public getUserProfile()Lcom/amazon/insights/UserProfile;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V

    return-object v0
.end method
