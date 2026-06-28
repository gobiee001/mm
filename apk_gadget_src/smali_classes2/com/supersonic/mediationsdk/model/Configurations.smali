.class public Lcom/supersonic/mediationsdk/model/Configurations;
.super Ljava/lang/Object;
.source "Configurations.java"


# instance fields
.field private mApplicationConfig:Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

.field private mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

.field private mOfferwallConfig:Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

.field private mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    .line 16
    new-instance v0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    .line 17
    new-instance v0, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mApplicationConfig:Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    .line 18
    new-instance v0, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mOfferwallConfig:Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;)V
    .locals 1
    .param p1, "rewardedVideoConfigurations"    # Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    .param p2, "interstitialConfigurations"    # Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    .param p3, "offerwallConfigurations"    # Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
    .param p4, "applicationConfigurations"    # Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    .line 28
    :goto_0
    if-nez p2, :cond_1

    .line 29
    new-instance v0, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    .line 33
    :goto_1
    if-nez p3, :cond_2

    .line 34
    new-instance v0, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mOfferwallConfig:Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    .line 39
    :goto_2
    iput-object p4, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mApplicationConfig:Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    .line 40
    return-void

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    goto :goto_0

    .line 31
    :cond_1
    iput-object p2, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    goto :goto_1

    .line 36
    :cond_2
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mOfferwallConfig:Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    goto :goto_2
.end method


# virtual methods
.method public getApplicationConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mApplicationConfig:Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    return-object v0
.end method

.method public getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    return-object v0
.end method

.method public getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    return-object v0
.end method
