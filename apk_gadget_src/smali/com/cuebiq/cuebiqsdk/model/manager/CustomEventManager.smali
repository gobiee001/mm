.class public Lcom/cuebiq/cuebiqsdk/model/manager/CustomEventManager;
.super Ljava/lang/Object;
.source "CustomEventManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gatherCustomEvent(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "eventDescription"    # Ljava/lang/String;
    .param p3, "eventInfo1"    # Ljava/lang/String;
    .param p4, "eventInfo2"    # Ljava/lang/String;
    .param p5, "eventInfo3"    # Ljava/lang/String;
    .param p6, "eventInfo4"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v4, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    invoke-direct {v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;-><init>()V

    .line 30
    .local v4, "event":Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->setName(Ljava/lang/String;)V

    .line 31
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->seteInfo1(Ljava/lang/String;)V

    .line 32
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->seteInfo2(Ljava/lang/String;)V

    .line 33
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->seteInfo3(Ljava/lang/String;)V

    .line 34
    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;->seteInfo4(Ljava/lang/String;)V

    .line 36
    new-instance v7, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-direct {v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;-><init>()V

    .line 37
    .local v7, "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setDevice(Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;)V

    .line 38
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->build(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setAuth(Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;)V

    .line 40
    new-instance v5, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    invoke-direct {v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;-><init>()V

    .line 42
    .local v5, "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->build(Landroid/location/Location;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setGeo(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;)V

    .line 46
    :cond_0
    invoke-virtual {v5, v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setEvent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;)V

    .line 47
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setBatteryLevel(Ljava/lang/Float;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setTimestamp(Ljava/lang/Long;)V

    .line 49
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getIPAddressV4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV4(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getIPAddressV6()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV6(Ljava/lang/String;)V

    .line 52
    new-instance v6, Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    invoke-direct {v6}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;-><init>()V

    .line 53
    .local v6, "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    invoke-virtual {v6, v5}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    .line 55
    invoke-virtual {v7, v6}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setInformation(Lcom/cuebiq/cuebiqsdk/utils/InformationList;)V

    .line 57
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v2

    .line 59
    .local v2, "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v10

    invoke-interface {v10, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveRequest(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v9

    .line 60
    .local v9, "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getBatteryLevel(Landroid/content/Context;)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v7, v10, v2}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->analyzeRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    move-result-object v8

    .line 61
    .local v8, "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 62
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v10

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v11

    invoke-interface {v10, p0, v11}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 64
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isFlushCounterActive(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 65
    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getNextAcquisitionMills()J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;J)V

    .line 80
    .end local v2    # "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .end local v4    # "event":Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    .end local v5    # "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .end local v6    # "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    .end local v7    # "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .end local v8    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .end local v9    # "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    :goto_0
    return-void

    .line 69
    .restart local v2    # "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .restart local v4    # "event":Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    .restart local v5    # "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .restart local v6    # "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    .restart local v7    # "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .restart local v8    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .restart local v9    # "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    :cond_1
    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->flush(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, p0, v11}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 71
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->get()Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->bea(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getNextAcquisitionMills()J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->activateLocationTracking(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v2    # "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .end local v4    # "event":Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    .end local v5    # "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .end local v6    # "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    .end local v7    # "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .end local v8    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .end local v9    # "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "configuration":Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .restart local v4    # "event":Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    .restart local v5    # "information":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .restart local v6    # "list":Lcom/cuebiq/cuebiqsdk/utils/InformationList;
    .restart local v7    # "request":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .restart local v8    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .restart local v9    # "savedRequest":Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, p0, v11}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
