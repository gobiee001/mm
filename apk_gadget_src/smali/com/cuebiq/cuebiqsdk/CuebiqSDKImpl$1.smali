.class final Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/cuebiq/cuebiqsdk/api/Environment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onGoogleAdvID(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "googleAdvertisingID"    # Ljava/lang/String;
    .param p2, "isLimitedADTracking"    # Z

    .prologue
    .line 83
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTase()I

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "Device with GoogleAdvertisingID with opt out. Increase app open."

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;-><init>()V

    .line 86
    .local v0, "analyticsHelper":Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;->pingCoverageAfterXAppOpenFromOptout(Landroid/content/Context;)Z

    .line 88
    .end local v0    # "analyticsHelper":Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;
    :cond_0
    return-void
.end method
