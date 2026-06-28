.class public Lcom/cuebiq/cuebiqsdk/model/BatchManager;
.super Ljava/lang/Object;
.source "BatchManager.java"


# static fields
.field private static final wifiHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->wifiHash:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .locals 4
    .param p0, "savedRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "newRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "batteryLevel"    # I
    .param p3, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    .line 34
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;-><init>()V

    .line 37
    .local v1, "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->validate(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 40
    invoke-virtual {p3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0
.end method

.method private static changeAcquisitionIntervalBasedOnBattery(ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V
    .locals 2
    .param p0, "batteryLevel"    # I
    .param p1, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .param p2, "result"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getBtlt()I

    move-result v0

    if-le p0, v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxa()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->wifiHash:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 198
    return-void
.end method

.method private static containsNewWifi(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)Z
    .locals 4
    .param p0, "wifi"    # Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "newWifi":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/utils/WifiList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    .line 187
    .local v1, "wi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    sget-object v3, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->wifiHash:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    sget-object v3, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->wifiHash:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "wi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    :cond_1
    return v0
.end method

.method public static flush(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z
    .locals 8
    .param p0, "trackRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMinb()I

    move-result v5

    if-lt v4, v5, :cond_2

    move v3, v2

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v0

    .line 214
    .local v0, "first":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v1

    .line 216
    .local v1, "last":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxst()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private static increaseLastSeenAndReturn(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .locals 4
    .param p0, "savedRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "batteryLevel"    # I
    .param p2, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .param p3, "result"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .param p4, "last"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setLastSeen(Ljava/lang/Long;)V

    .line 77
    invoke-virtual {p3, p0}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 79
    const-string v0, "BatchManager -> Information equals...update lastseen and increase acquisition..."

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2, p3}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->changeAcquisitionIntervalBasedOnBattery(ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    .line 82
    return-object p3
.end method

.method private static informationAreDifferent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z
    .locals 1
    .param p0, "saved"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p1, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->clear()V

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static informationIsEqualToLast(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z
    .locals 9
    .param p0, "saved"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p1, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    .param p2, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-static {p0, p1}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->informationAreDifferent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v7

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getGeo()Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v4

    .line 132
    .local v4, "savedGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getGeo()Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    move-result-object v2

    .line 134
    .local v2, "infoGeo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v4, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    invoke-virtual {v4}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getHaccuracy()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 140
    .local v3, "savedAccuracy":F
    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->getHaccuracy()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 141
    .local v1, "infoAccuracy":F
    cmpg-float v7, v1, v3

    if-gez v7, :cond_2

    .line 142
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setHaccuracy(Ljava/lang/Float;)V

    .line 144
    :cond_2
    const-string v7, "BatchManager -> GEO is identical, increase last seen immediately!"

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    move v7, v6

    .line 145
    goto :goto_0

    .line 148
    .end local v1    # "infoAccuracy":F
    .end local v3    # "savedAccuracy":F
    :cond_3
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAcc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->toLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 149
    .local v5, "source":Landroid/location/Location;
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAcc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->toLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 151
    .local v0, "destination":Landroid/location/Location;
    invoke-static {v5, v0, p2}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->locationAreDifferent(Landroid/location/Location;Landroid/location/Location;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 155
    const-string v8, "BatchManager -> GEO is equals to last. Checking new record..."

    invoke-static {v8}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->wifiAreDifferent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private static locationAreDifferent(Landroid/location/Location;Landroid/location/Location;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z
    .locals 5
    .param p0, "source"    # Landroid/location/Location;
    .param p1, "destination"    # Landroid/location/Location;
    .param p2, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 171
    .local v0, "distanceBetween":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Geo -> Meters: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Greater than "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTr()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTr()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTr()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 171
    goto :goto_0

    :cond_1
    move v2, v3

    .line 172
    goto :goto_1
.end method

.method private static validate(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .locals 2
    .param p0, "savedRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "newRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "batteryLevel"    # I
    .param p3, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    .line 46
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;-><init>()V

    .line 48
    .local v0, "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    invoke-static {p0, p1, p3, v0}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->validateNullability(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    .end local v0    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->validateEquality(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static validateEquality(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    .locals 4
    .param p0, "savedRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "newRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "batteryLevel"    # I
    .param p3, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .param p4, "result"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v1

    .line 57
    .local v1, "last":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v0

    .line 59
    .local v0, "current":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    invoke-static {v1, v0, p3}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->informationIsEqualToLast(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {p0, p2, p3, p4, v1}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->increaseLastSeenAndReturn(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    move-result-object p4

    .line 72
    .end local p4    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :goto_0
    return-object p4

    .line 63
    .restart local p4    # "result":Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;
    :cond_0
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->size()I

    move-result v2

    invoke-virtual {p3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMaxb()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->removeFirst()V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getFirst()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->add(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z

    .line 68
    invoke-virtual {p4, p0}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 70
    invoke-static {p2, p3, p4}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->changeAcquisitionIntervalBasedOnBattery(ILcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    goto :goto_0
.end method

.method private static validateNullability(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Lcom/cuebiq/cuebiqsdk/model/config/Settings;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)Z
    .locals 4
    .param p0, "savedRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p1, "newRequest"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p2, "configuration"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .param p3, "result"    # Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p3, v2}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 96
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    .line 123
    :goto_0
    return v0

    .line 100
    :cond_1
    if-nez p0, :cond_2

    .line 101
    invoke-virtual {p3, p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 102
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {p3, v2}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 108
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v1

    if-nez v1, :cond_4

    .line 113
    invoke-virtual {p3, p1}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 114
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v1

    if-nez v1, :cond_5

    .line 119
    invoke-virtual {p3, p0}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setTrackRequest(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 120
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getMina()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->setNextAcquisitionMills(J)V

    goto :goto_0

    .line 123
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wifiAreDifferent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;)Z
    .locals 1
    .param p0, "information"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->getWifis()Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/model/BatchManager;->containsNewWifi(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "BatchManager -> New record: WIFI"

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
