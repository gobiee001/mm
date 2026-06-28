.class public abstract Lcom/mopub/common/AdUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "AdUrlGenerator.java"


# instance fields
.field protected mAdUnitId:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mKeywords:Ljava/lang/String;

.field protected mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .prologue
    .line 259
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private static calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I
    .locals 6
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 267
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 269
    .local v0, "locationLastUpdatedInMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 270
    .local v2, "nowInMillis":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method

.method private mncPortionLength(Ljava/lang/String;)I
    .locals 2
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected addBaseParams(Lcom/mopub/common/ClientMetadata;)V
    .locals 4
    .param p1, "clientMetadata"    # Lcom/mopub/common/ClientMetadata;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setAdUnitId(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setSdkVersion(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 230
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 231
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 229
    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setDeviceInfo([Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setBundleId(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setKeywords(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/mopub/common/AdUrlGenerator;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setLocation(Landroid/location/Location;)V

    .line 238
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setTimezone(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setOrientation(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setDeviceDimensions(Landroid/graphics/Point;)V

    .line 242
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDensity()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setDensity(F)V

    .line 244
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorForUrl()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "networkOperator":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMccCode(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/mopub/common/AdUrlGenerator;->setMncCode(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setIsoCountryCode(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setCarrierName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 253
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/common/AdUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/mopub/common/AdUrlGenerator;->appendAdvertisingInfoTemplates()V

    .line 256
    return-void
.end method

.method protected enableViewability(Ljava/lang/String;)V
    .locals 1
    .param p1, "vendorKey"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 222
    const-string v0, "vv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method protected setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected setBundleId(Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected setCarrierName(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkOperatorName"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v0, "cn"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected setDensity(F)V
    .locals 3
    .param p1, "density"    # F

    .prologue
    .line 182
    const-string v0, "sc_a"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method protected setIsoCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "networkCountryIso"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 151
    move-object v0, p1

    .line 152
    .local v0, "bestLocation":Landroid/location/Location;
    iget-object v2, p0, Lcom/mopub/common/AdUrlGenerator;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v3

    .line 154
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v4

    .line 152
    invoke-static {v2, v3, v4}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v1

    .line 156
    .local v1, "locationFromLocationService":Landroid/location/Location;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 158
    :cond_0
    move-object v0, v1

    .line 161
    :cond_1
    if-eqz v0, :cond_2

    .line 162
    const-string v2, "ll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "lla"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "llf"

    .line 165
    invoke-static {v0}, Lcom/mopub/common/AdUrlGenerator;->calculateLocationStalenessInMilliseconds(Landroid/location/Location;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-ne v0, v1, :cond_2

    .line 168
    const-string v2, "llsdk"

    const-string v3, "1"

    invoke-virtual {p0, v2, v3}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    return-void
.end method

.method protected setMccCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p1, :cond_0

    const-string v0, ""

    .line 193
    .local v0, "mcc":Ljava/lang/String;
    :goto_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 192
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setMncCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkOperator"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_0

    const-string v0, ""

    .line 198
    .local v0, "mnc":Ljava/lang/String;
    :goto_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 197
    .end local v0    # "mnc":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/common/AdUrlGenerator;->mncPortionLength(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setMraidFlag(Z)V
    .locals 2
    .param p1, "mraid"    # Z

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, "mr"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected setNetworkType(Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V
    .locals 1
    .param p1, "networkType"    # Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    .prologue
    .line 210
    const-string v0, "ct"

    invoke-direct {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Lcom/mopub/common/ClientMetadata$MoPubNetworkType;)V

    .line 211
    return-void
.end method

.method protected setOrientation(Ljava/lang/String;)V
    .locals 1
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "o"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method protected setSdkVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "nv"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method protected setTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZoneOffsetString"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "z"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/AdUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mAdUnitId:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public withFacebookSupported(Z)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    return-object p0
.end method

.method public withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mKeywords:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mopub/common/AdUrlGenerator;->mLocation:Landroid/location/Location;

    .line 135
    return-object p0
.end method
