.class public Lcom/supersonic/mediationsdk/model/ProviderSettings;
.super Ljava/lang/Object;
.source "ProviderSettings.java"


# instance fields
.field private mInterstitialSettings:Lorg/json/JSONObject;

.field private mProviderName:Ljava/lang/String;

.field private mProviderTypeForReflection:Ljava/lang/String;

.field private mRewardedVideoSettings:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerType"    # Ljava/lang/String;
    .param p3, "rewardedVideoSettings"    # Lorg/json/JSONObject;
    .param p4, "interstitialSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 28
    iput-object p4, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 29
    return-void
.end method


# virtual methods
.method public getInterstitialSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setInterstitialSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "interstitialSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 61
    return-void
.end method

.method public setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRewardedVideoSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "rewardedVideoSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 45
    return-void
.end method
