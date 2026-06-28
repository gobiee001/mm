.class public interface abstract Lcom/supersonic/mediationsdk/sdk/Supersonic;
.super Ljava/lang/Object;
.source "Supersonic.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/logger/LoggingApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoApi;


# virtual methods
.method public abstract getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract removeRewardedVideoListener()V
.end method
