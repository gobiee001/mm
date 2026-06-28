.class final Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;
.super Ljava/lang/Object;
.source "CuebiqSDKImpl.java"

# interfaces
.implements Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->checkCoverageAndActivateIfOpened(Landroid/content/Context;)V
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
    .line 124
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryCovered()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "Country covered but context is null."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "CuebiqSDK -> Start tracking"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getCurrentAcquisitionMills(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->access$000(Landroid/content/Context;J)V

    .line 135
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTloo()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 136
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setLocationON(Landroid/content/Context;Z)V

    .line 137
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->get()Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->trackGeoStats(Landroid/content/Context;Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "be1"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->collectCustomEvents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCountryNotCovered()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->disableTracking(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->disableTracking(Landroid/content/Context;)V

    goto :goto_0
.end method
