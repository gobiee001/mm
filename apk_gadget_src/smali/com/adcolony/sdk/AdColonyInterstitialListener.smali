.class public abstract Lcom/adcolony/sdk/AdColonyInterstitialListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStarted(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 91
    return-void
.end method

.method public onAudioStopped(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 83
    return-void
.end method

.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 75
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 37
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 59
    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "engagement_type"    # I

    .prologue
    .line 50
    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 67
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 29
    return-void
.end method

.method public abstract onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 0
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 21
    return-void
.end method
