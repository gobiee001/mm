.class public Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pingCoverageAfterXAcquisition(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getCoverageCounter(Landroid/content/Context;)I

    move-result v0

    .line 25
    .local v0, "coverageCounter":I
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAncc()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 26
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->checkCoverage(Landroid/content/Context;ZLcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 27
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->resetCoverageCounter(Landroid/content/Context;)V

    .line 32
    :goto_0
    return v1

    .line 30
    :cond_0
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->increaseCoverageCounter(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pingCoverageAfterXAppOpenFromOptout(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getAppOpenCounter(Landroid/content/Context;)I

    move-result v0

    .line 43
    .local v0, "appOpenCounter":I
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAnao()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 44
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->checkCoverage(Landroid/content/Context;ZLcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V

    .line 45
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->resetAppOpenCounter(Landroid/content/Context;)V

    .line 51
    :goto_0
    return v1

    .line 48
    :cond_0
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->increaseAppOpenCounter(Landroid/content/Context;)V

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method
