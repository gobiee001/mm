.class public interface abstract Lcom/applovin/mediation/AppLovinMediationAdapter;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract initialize(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract loadIncentivizedAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;Lcom/applovin/mediation/AppLovinMediationLoadListener;)V
.end method

.method public abstract loadInterstitialAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;Lcom/applovin/mediation/AppLovinMediationLoadListener;)V
.end method

.method public abstract prepareIncentivizedAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;)V
.end method

.method public abstract prepareInterstitialAd(Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/content/Context;)V
.end method

.method public abstract processIncentivizedAdLoadTimeout()V
.end method

.method public abstract processInterstitialAdLoadTimeout()V
.end method

.method public abstract showIncentivizedAd(Lcom/applovin/mediation/AppLovinMediatedAdInfo;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/app/Activity;Lcom/applovin/mediation/AppLovinMediationDisplayListener;)V
.end method

.method public abstract showInterstitialAd(Lcom/applovin/mediation/AppLovinMediatedAdInfo;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;Landroid/app/Activity;Lcom/applovin/mediation/AppLovinMediationDisplayListener;)V
.end method
