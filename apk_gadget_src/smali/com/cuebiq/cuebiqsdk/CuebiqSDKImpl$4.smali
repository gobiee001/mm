.class final Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->testIntegration(Landroid/content/Context;)V
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
    .line 335
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "Cuebiq Integration"

    const-string v1, "Error retrieving Google Advertising ID. Please retry the integration test."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public onGoogleAdvID(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "googleAdvertisingID"    # Ljava/lang/String;
    .param p2, "isLimitedADTracking"    # Z

    .prologue
    .line 338
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Advertising ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v0, "Cuebiq Integration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Advertising ID is opted out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTase()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    const-string v0, "Cuebiq Integration"

    const-string v1, "Go to Google Settings -> Ads, turn off Interest-base advertising and retry the integration test."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v0, "Cuebiq Integration"

    const-string v1, "Calling Cuebiq Server...: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;

    invoke-direct {v3, p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4$1;-><init>(Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->checkCoverage(Landroid/content/Context;ZLcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    goto :goto_0
.end method
