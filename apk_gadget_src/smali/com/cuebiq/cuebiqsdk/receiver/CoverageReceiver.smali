.class public Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CoverageReceiver.java"


# static fields
.field public static final ALARM_TRACK_REQUEST_CODE:I = 0x6f

.field public static final NEW_REQUEST:I = 0x0

.field public static final REQUEST_CODE:I = 0x3e7

.field public static final REQUEST_CODE_KEY:Ljava/lang/String; = "requestCode"


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 37
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAmvs()I

    move-result v7

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isAndroidVersionNotSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v7, "requestCode"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 42
    .local v6, "requestCode":I
    const/16 v7, 0x6f

    if-ne v6, v7, :cond_2

    .line 44
    const-string v7, "CoverageReceiver -> Start new acquisition..."

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;-><init>()V

    .line 47
    .local v1, "analyticsHelper":Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v7

    invoke-virtual {v1, p1, v7}, Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;->pingCoverageAfterXAcquisition(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z

    .line 49
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;)V

    .line 51
    new-instance v2, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver$1;-><init>(Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;Landroid/content/Context;)V

    .line 70
    .local v2, "callback":Landroid/os/Handler$Callback;
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getWorkerThread()Landroid/os/HandlerThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;->mWorkerHandler:Landroid/os/Handler;

    .line 71
    iget-object v7, p0, Lcom/cuebiq/cuebiqsdk/receiver/CoverageReceiver;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 76
    .end local v1    # "analyticsHelper":Lcom/cuebiq/cuebiqsdk/model/AnalyticsHelper;
    .end local v2    # "callback":Landroid/os/Handler$Callback;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 79
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->getCoverageStatus(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    move-result-object v3

    .line 81
    .local v3, "coverageStatus":Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    sget-object v7, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    if-ne v3, v7, :cond_0

    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isOptedOut(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 82
    const-string v7, "QUICK SETTINGS LOCATION CHANGED!"

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 85
    .local v4, "isLocationEnabled":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location ENABLED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getLocationON(Landroid/content/Context;)Z

    move-result v5

    .line 88
    .local v5, "isPreviousLocationON":Z
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v7

    invoke-interface {v7, p1, v4}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setLocationON(Landroid/content/Context;Z)V

    .line 90
    if-eq v4, v5, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateImmediately(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTloo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 96
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->get()Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/cuebiq/cuebiqsdk/model/helper/CustomResourcesHelper;->trackGeoStats(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 100
    .end local v3    # "coverageStatus":Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;
    .end local v4    # "isLocationEnabled":Z
    .end local v5    # "isPreviousLocationON":Z
    :cond_3
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 101
    const-string v7, "Coverage -> BOOT_COMPLETED event received!"

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->checkCoverageAndActivateIfOpened(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    const-string v7, "Coverage -> Check coverage!"

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v7

    sget-object v8, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->UNCHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v7, p1, v8}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V

    .line 106
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->checkCoverageAndActivateIfOpened(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
