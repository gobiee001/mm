.class Lcom/amazon/device/ads/AdLocation;
.super Ljava/lang/Object;
.source "AdLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    }
.end annotation


# static fields
.field private static final ARCMINUTE_PRECISION:I = 0x6

.field private static final LOGTAG:Ljava/lang/String;

.field private static final MAX_DISTANCE_IN_KILOMETERS:F = 3.0f


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/amazon/device/ads/AdLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLocation;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLocation;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/Configuration;)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/Configuration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/amazon/device/ads/Configuration;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdLocation;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 36
    iput-object p1, p0, Lcom/amazon/device/ads/AdLocation;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/amazon/device/ads/AdLocation;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 38
    return-void
.end method

.method private getLocationAwareness()Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/AdLocation;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->TRUNCATE_LAT_LON:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    goto :goto_0
.end method

.method private static roundToArcminutes(D)D
    .locals 4
    .param p0, "coordinate"    # D

    .prologue
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 54
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 26

    .prologue
    .line 73
    const/4 v15, 0x0

    .line 75
    .local v15, "result":Landroid/location/Location;
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/AdLocation;->getLocationAwareness()Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    move-result-object v10

    .line 77
    .local v10, "locationAwareness":Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    sget-object v20, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 79
    const/16 v20, 0x0

    .line 186
    :goto_0
    return-object v20

    .line 82
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "location"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 83
    .local v7, "lm":Landroid/location/LocationManager;
    const/4 v5, 0x0

    .line 86
    .local v5, "gpsLocation":Landroid/location/Location;
    :try_start_0
    const-string v20, "gps"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 97
    :goto_1
    const/4 v11, 0x0

    .line 100
    .local v11, "networkLocation":Landroid/location/Location;
    :try_start_1
    const-string v20, "network"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 111
    :goto_2
    if-nez v5, :cond_1

    if-nez v11, :cond_1

    .line 113
    const/16 v20, 0x0

    goto :goto_0

    .line 88
    .end local v11    # "networkLocation":Landroid/location/Location;
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Failed to retrieve GPS location: No permissions to access GPS"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Failed to retrieve GPS location: No GPS found"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "networkLocation":Landroid/location/Location;
    :catch_2
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Failed to retrieve network location: No permissions to access network location"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Failed to retrieve network location: No network provider found"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz v5, :cond_8

    if-eqz v11, :cond_8

    .line 126
    invoke-virtual {v5, v11}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    .line 127
    .local v3, "distanceInMeters":F
    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v2, v3, v20

    .line 129
    .local v2, "distanceInKilometers":F
    const/high16 v20, 0x40400000    # 3.0f

    cmpg-float v20, v2, v20

    if-gtz v20, :cond_6

    .line 135
    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 136
    .local v6, "gpsLocationAccuracy":F
    :goto_3
    invoke-virtual {v11}, Landroid/location/Location;->hasAccuracy()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 139
    .local v14, "networkLocationAccuracy":F
    :goto_4
    cmpg-float v20, v6, v14

    if-gez v20, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using GPS determined by distance"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 142
    move-object v15, v5

    .line 175
    .end local v2    # "distanceInKilometers":F
    .end local v3    # "distanceInMeters":F
    .end local v6    # "gpsLocationAccuracy":F
    .end local v14    # "networkLocationAccuracy":F
    :goto_5
    sget-object v20, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 177
    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v8

    .line 178
    .local v8, "lat":D
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    div-double v16, v20, v22

    .line 179
    .local v16, "truncatedLat":D
    invoke-virtual/range {v15 .. v17}, Landroid/location/Location;->setLatitude(D)V

    .line 181
    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/amazon/device/ads/AdLocation;->roundToArcminutes(D)D

    move-result-wide v12

    .line 182
    .local v12, "lon":D
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    div-double v18, v20, v22

    .line 183
    .local v18, "truncatedLon":D
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .end local v8    # "lat":D
    .end local v12    # "lon":D
    .end local v16    # "truncatedLat":D
    .end local v18    # "truncatedLon":D
    :cond_2
    move-object/from16 v20, v15

    .line 186
    goto/16 :goto_0

    .line 135
    .restart local v2    # "distanceInKilometers":F
    .restart local v3    # "distanceInMeters":F
    :cond_3
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_3

    .line 136
    .restart local v6    # "gpsLocationAccuracy":F
    :cond_4
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_4

    .line 146
    .restart local v14    # "networkLocationAccuracy":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using network determined by distance"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 147
    move-object v15, v11

    goto :goto_5

    .line 152
    .end local v6    # "gpsLocationAccuracy":F
    .end local v14    # "networkLocationAccuracy":F
    :cond_6
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-lez v20, :cond_7

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using GPS"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 155
    move-object v15, v5

    goto/16 :goto_5

    .line 159
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using network"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 160
    move-object v15, v11

    goto/16 :goto_5

    .line 164
    .end local v2    # "distanceInKilometers":F
    .end local v3    # "distanceInMeters":F
    :cond_8
    if-eqz v5, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using GPS, not network"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 167
    move-object v15, v5

    goto/16 :goto_5

    .line 171
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/device/ads/AdLocation;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    move-object/from16 v20, v0

    const-string v21, "Setting lat/long using network location, not GPS"

    invoke-virtual/range {v20 .. v21}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 172
    move-object v15, v11

    goto/16 :goto_5
.end method
