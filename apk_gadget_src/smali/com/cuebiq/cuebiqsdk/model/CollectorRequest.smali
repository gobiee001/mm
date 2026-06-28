.class public Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;
.super Ljava/lang/Object;
.source "CollectorRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInformation:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

.field private mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

.field private mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->reportAllOperationsCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;
    .param p1, "x1"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->saveAndFlushRequest(Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    return-object v0
.end method

.method private reportAllOperationsCompleted()V
    .locals 12

    .prologue
    .line 69
    new-instance v4, Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    invoke-direct {v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;-><init>()V

    .line 70
    .local v4, "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mInformation:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-virtual {v4, v8}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    .line 71
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setInformation(Lcom/cuebiq/cuebiqsdk/utils/InformationList;)V

    .line 72
    const-string v8, "Collector -> Saving request... "

    invoke-static {v8}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 73
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v0

    .line 76
    .local v0, "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    :try_start_0
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTlowo()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 77
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getGeo()Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v2

    .line 78
    .local v2, "infoGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getWifis()Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    move-result-object v3

    .line 80
    .local v3, "infoWifi":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 81
    const-string v8, "Collector -> Geo information is missing. Wifis information is missing. Skip request..."

    invoke-static {v8}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 82
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    if-eqz v8, :cond_0

    .line 83
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    invoke-interface {v8}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V

    .line 149
    .end local v2    # "infoGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .end local v3    # "infoWifi":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v2    # "infoGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .restart local v3    # "infoWifi":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 89
    const-string v8, "Collector -> Geo information is missing. Wifis information are empty. Skip request..."

    invoke-static {v8}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 90
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    if-eqz v8, :cond_0

    .line 91
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    invoke-interface {v8}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v2    # "infoGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .end local v3    # "infoWifi":Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v9, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    const-string v10, "ERROR TRACKING WITH LOCATION OFF AND WIFI ON"

    iget-object v11, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v11}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-interface {v8, v9}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveRequest(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v7

    .line 101
    .local v7, "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    iget-object v9, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v7, v8, v9, v0}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->analyzeRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    move-result-object v6

    .line 102
    .local v6, "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    invoke-virtual {v6}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 103
    invoke-virtual {v6}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v8

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getCiaa()I

    move-result v9

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getIpad()J

    move-result-wide v10

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->callIpAddressAPI(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;IJ)Z

    move-result v8

    if-nez v8, :cond_3

    .line 104
    invoke-direct {p0, v6}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->saveAndFlushRequest(Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    .line 105
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    if-eqz v8, :cond_0

    .line 106
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    invoke-interface {v8}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    move-result-object v5

    .line 110
    .local v5, "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    new-instance v8, Lcom/cuebiq/cuebiqsdk/api/EchoRequest;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v9

    iget-object v10, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-interface {v9, v10}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/cuebiq/cuebiqsdk/api/EchoRequest;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;

    invoke-direct {v9, p0, v6}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;-><init>(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    invoke-virtual {v5, v8, v9}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->callAsync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;Lokhttp3/Callback;)V

    goto/16 :goto_0

    .line 144
    .end local v5    # "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    :cond_4
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 145
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    if-eqz v8, :cond_0

    .line 146
    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    invoke-interface {v8}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V

    goto/16 :goto_0
.end method

.method private saveAndFlushRequest(Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V
    .locals 3
    .param p1, "result"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    .prologue
    .line 152
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 154
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isFlushCounterActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getNextAcquisitionMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->scheduleNextAcquisition(J)V

    .line 165
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->flush(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "Collector -> Flushing request..."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 162
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->get()Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->bea(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getNextAcquisitionMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->scheduleNextAcquisition(J)V

    goto :goto_0
.end method

.method private scheduleNextAcquisition(J)V
    .locals 3
    .param p1, "nextAcquisitionMills"    # J

    .prologue
    .line 168
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setCurrentAcquisitionMills(Landroid/content/Context;J)V

    .line 169
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;J)V

    .line 170
    return-void
.end method


# virtual methods
.method public callIpAddressAPI(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;IJ)Z
    .locals 9
    .param p1, "trackRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "callApiEnabled"    # I
    .param p3, "diffToCallApi"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 173
    if-nez p2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v2

    .line 179
    .local v2, "last":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getIpAddressV4()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getIpAddressV6()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getLastSeen()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getLastSeen()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getLastSeen()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 196
    .local v0, "diff":J
    cmp-long v4, v0, p3

    if-ltz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public collect(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    .param p3, "device"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    .param p4, "listener"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mListener:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    .line 53
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;-><init>()V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .line 54
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v0, p3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setDevice(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;)V

    .line 55
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mTrackRequest:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v0, p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setAuth(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;)V

    .line 57
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;-><init>()V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mInformation:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .line 59
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;-><init>()V

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mInformation:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/processor/WifiProcessor;->gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V

    .line 60
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;-><init>()V

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->mInformation:Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    new-instance v3, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$1;

    invoke-direct {v3, p0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/processor/LocationProcessor;->gather(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/listener/ProcessorCompletedListener;)V

    .line 66
    return-void
.end method
