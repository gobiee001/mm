.class final Lcom/inmobi/ads/InMobiInterstitial$1$2;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiInterstitial$1;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;

.field final synthetic b:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field final synthetic c:Lcom/inmobi/ads/InMobiInterstitial$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiInterstitial$1;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial$1$2;->c:Lcom/inmobi/ads/InMobiInterstitial$1;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiInterstitial$1$2;->a:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;

    iput-object p3, p0, Lcom/inmobi/ads/InMobiInterstitial$1$2;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$1$2;->a:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$1$2;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdRequestListener;->onAdRequestCompleted(Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/ads/InMobiInterstitial;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/InMobiInterstitial;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Publisher handler caused unexpected error"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
