.class public Lcom/supersonicads/sdk/SSAFactory;
.super Ljava/lang/Object;
.source "SSAFactory.java"


# direct methods
.method public static getPublisherInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method
