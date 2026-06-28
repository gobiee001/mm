.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
.super Ljava/lang/Object;
.source "Wifi.java"


# instance fields
.field private bssid:Ljava/lang/String;

.field private capabilities:Ljava/lang/String;

.field private linkSpeed:Ljava/lang/Integer;

.field private rssi:Ljava/lang/Integer;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 69
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

    .line 71
    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    .line 73
    .local v0, "wifi":Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    iget-object v4, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    iget-object v4, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_7
    iget-object v3, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->capabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkSpeed()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->linkSpeed:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRssi()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->rssi:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 80
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 81
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->bssid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0
    .param p1, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->capabilities:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setLinkSpeed(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "linkSpeed"    # Ljava/lang/Integer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->linkSpeed:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setRssi(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rssi"    # Ljava/lang/Integer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->rssi:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;->ssid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
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
