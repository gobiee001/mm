.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
.super Ljava/lang/Object;
.source "Information.java"


# instance fields
.field private batteryLevel:Ljava/lang/Float;

.field private dataConnectionType:Ljava/lang/String;

.field private debugMode:Ljava/lang/Boolean;

.field private event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

.field private geo:Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

.field private ipAddressV4:Ljava/lang/String;

.field private ipAddressV6:Ljava/lang/String;

.field private isRoaming:Ljava/lang/Boolean;

.field private lastSeen:Ljava/lang/Long;

.field private timestamp:Ljava/lang/Long;

.field private wifis:Lcom/cuebiq/cuebiqsdk/utils/WifiList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->debugMode:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    .line 132
    .local v0, "that":Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    iget-object v4, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public getBatteryLevel()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public getDataConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->dataConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->debugMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEvent()Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    return-object v0
.end method

.method public getGeo()Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->geo:Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    return-object v0
.end method

.method public getIpAddressV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->ipAddressV4:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddressV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->ipAddressV6:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRoaming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->isRoaming:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastSeen()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->lastSeen:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getWifis()Lcom/cuebiq/cuebiqsdk/utils/WifiList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->wifis:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatteryLevel(Ljava/lang/Float;)V
    .locals 0
    .param p1, "batteryLevel"    # Ljava/lang/Float;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->batteryLevel:Ljava/lang/Float;

    .line 94
    return-void
.end method

.method public setDataConnectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataConnectionType"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->dataConnectionType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDebugMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "debugMode"    # Ljava/lang/Boolean;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->debugMode:Ljava/lang/Boolean;

    .line 78
    return-void
.end method

.method public setEvent(Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->event:Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    .line 86
    return-void
.end method

.method public setGeo(Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;)V
    .locals 0
    .param p1, "geo"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->geo:Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    .line 110
    return-void
.end method

.method public setIpAddressV4(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddressV4"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->ipAddressV4:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setIpAddressV6(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddressV6"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->ipAddressV6:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIsRoaming(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isRoaming"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->isRoaming:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public setLastSeen(Ljava/lang/Long;)V
    .locals 0
    .param p1, "lastSeen"    # Ljava/lang/Long;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->lastSeen:Ljava/lang/Long;

    .line 62
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->timestamp:Ljava/lang/Long;

    .line 118
    return-void
.end method

.method public setWifis(Lcom/cuebiq/cuebiqsdk/utils/WifiList;)V
    .locals 0
    .param p1, "wifis"    # Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->wifis:Lcom/cuebiq/cuebiqsdk/utils/WifiList;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
