.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
.super Ljava/lang/Object;
.source "Geo.java"


# instance fields
.field private altitude:Ljava/lang/Double;

.field private haccuracy:Ljava/lang/Float;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/location/Location;)Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 77
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;-><init>()V

    .line 79
    .local v1, "geo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    :try_start_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setLatitude(Ljava/lang/Double;)V

    .line 80
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setLongitude(Ljava/lang/Double;)V

    .line 81
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setAltitude(Ljava/lang/Double;)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setHaccuracy(Ljava/lang/Float;)V

    .line 91
    :goto_1
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->setAltitude(Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
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

    .line 58
    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    .line 60
    .local v0, "geo":Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;
    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    iget-object v2, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    if-nez v3, :cond_5

    goto :goto_0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getHaccuracy()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->haccuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v0

    .line 67
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 68
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "altitude"    # Ljava/lang/Double;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->altitude:Ljava/lang/Double;

    .line 51
    return-void
.end method

.method public setHaccuracy(Ljava/lang/Float;)V
    .locals 0
    .param p1, "haccuracy"    # Ljava/lang/Float;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->haccuracy:Ljava/lang/Float;

    .line 43
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/Double;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    .line 27
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    .line 35
    return-void
.end method

.method public toLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 97
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 98
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;->haccuracy:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 99
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
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
