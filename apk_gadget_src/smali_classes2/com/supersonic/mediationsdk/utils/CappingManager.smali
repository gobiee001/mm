.class public Lcom/supersonic/mediationsdk/utils/CappingManager;
.super Ljava/lang/Object;
.source "CappingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/utils/CappingManager$1;,
        Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    }
.end annotation


# direct methods
.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 37
    const-class v2, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    .line 41
    .local v0, "availabilitySettings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "Interstitial"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3, v0}, Lcom/supersonic/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "availabilitySettings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 49
    const-class v2, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    .line 53
    .local v0, "availabilitySettings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "Rewarded Video"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3, v0}, Lcom/supersonic/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "availabilitySettings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "availabilitySettings"    # Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    .prologue
    .line 225
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled()Z

    move-result v5

    .line 226
    .local v5, "isDeliveryEnabled":Z
    const-string v12, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "deliveryKey":Ljava/lang/String;
    invoke-static {p0, v2, v5}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 228
    if-nez v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled()Z

    move-result v3

    .line 235
    .local v3, "isCappingEnabled":Z
    const-string v12, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "isCappingEnabledKey":Ljava/lang/String;
    invoke-static {p0, v4, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 237
    if-eqz v3, :cond_2

    .line 239
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->getCappingValue()I

    move-result v8

    .line 240
    .local v8, "maxNumberOfShows":I
    const-string v12, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "maxNumberOfShowsKey":Ljava/lang/String;
    invoke-static {p0, v9, v8}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->getCappingType()Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    move-result-object v0

    .line 245
    .local v0, "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    const-string v12, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "cappingTypeKey":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v1, v12}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .end local v1    # "cappingTypeKey":Ljava/lang/String;
    .end local v8    # "maxNumberOfShows":I
    .end local v9    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled()Z

    move-result v6

    .line 251
    .local v6, "isPacingEnabled":Z
    const-string v12, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "isPacingEnabledKey":Ljava/lang/String;
    invoke-static {p0, v7, v6}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 253
    if-eqz v6, :cond_0

    .line 255
    invoke-virtual/range {p3 .. p3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;->getPacingValue()I

    move-result v10

    .line 256
    .local v10, "secondsBetweenShows":I
    const-string v12, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v12, p2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, "secondsBetweenShowsKey":Ljava/lang/String;
    invoke-static {p0, v11, v10}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "adUnit"    # Ljava/lang/String;
    .param p1, "baseConst"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 75
    const-class v1, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "Interstitial"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v1

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 79
    const-class v1, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "Rewarded Video"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v26, "CappingManager.IS_PACING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, "isPacingEnabledKey":Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v16

    .line 154
    .local v16, "isPacingEnabled":Z
    if-eqz v16, :cond_0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 157
    .local v10, "currentTime":J
    const-string v26, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, "timeOfPreviousShowKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10, v11}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 162
    .end local v10    # "currentTime":J
    .end local v21    # "timeOfPreviousShowKey":Ljava/lang/String;
    :cond_0
    const-string v26, "CappingManager.IS_CAPPING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "isCappingEnabledKey":Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v14, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v13

    .line 164
    .local v13, "isCappingEnabled":Z
    if-eqz v13, :cond_3

    .line 166
    const-string v26, "CappingManager.MAX_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 167
    .local v20, "maxNumberOfShowsKey":Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    .line 170
    .local v19, "maxNumberOfShows":I
    const-string v26, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    .local v9, "currentNumberOfShowsKey":Ljava/lang/String;
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v9, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 174
    .local v8, "currentNumberOfShows":I
    if-nez v8, :cond_4

    const/4 v15, 0x1

    .line 176
    .local v15, "isFirstShow":Z
    :goto_0
    if-eqz v15, :cond_2

    .line 178
    const-string v26, "CappingManager.CAPPING_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "cappingTypeKey":Ljava/lang/String;
    sget-object v26, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    invoke-virtual/range {v26 .. v26}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v6, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "cappingTypeString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 181
    .local v5, "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    invoke-static {}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->values()[Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    move-result-object v4

    .local v4, "arr$":[Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    aget-object v25, v4, v12

    .line 182
    .local v25, "type":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 183
    move-object/from16 v5, v25

    .line 188
    .end local v25    # "type":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    :cond_1
    invoke-static {v5}, Lcom/supersonic/mediationsdk/utils/CappingManager;->initTimeThreshold(Lcom/supersonic/mediationsdk/model/PlacementCappingType;)J

    move-result-wide v22

    .line 191
    .local v22, "timeThreshold":J
    const-string v26, "CappingManager.CAPPING_TIME_THRESHOLD"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 192
    .local v24, "timeThresholdKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 196
    .end local v4    # "arr$":[Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .end local v5    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .end local v6    # "cappingTypeKey":Ljava/lang/String;
    .end local v7    # "cappingTypeString":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "timeThreshold":J
    .end local v24    # "timeThresholdKey":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 199
    move-object/from16 v0, p0

    invoke-static {v0, v9, v8}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 201
    .end local v8    # "currentNumberOfShows":I
    .end local v9    # "currentNumberOfShowsKey":Ljava/lang/String;
    .end local v15    # "isFirstShow":Z
    .end local v19    # "maxNumberOfShows":I
    .end local v20    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_3
    return-void

    .line 174
    .restart local v8    # "currentNumberOfShows":I
    .restart local v9    # "currentNumberOfShowsKey":Ljava/lang/String;
    .restart local v19    # "maxNumberOfShows":I
    .restart local v20    # "maxNumberOfShowsKey":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 181
    .restart local v4    # "arr$":[Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .restart local v5    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .restart local v6    # "cappingTypeKey":Ljava/lang/String;
    .restart local v7    # "cappingTypeString":Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v15    # "isFirstShow":Z
    .restart local v18    # "len$":I
    .restart local v25    # "type":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private static initTimeThreshold(Lcom/supersonic/mediationsdk/model/PlacementCappingType;)J
    .locals 8
    .param p0, "cappingType"    # Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 205
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Lcom/supersonic/mediationsdk/utils/CappingManager$1;->$SwitchMap$com$supersonic$mediationsdk$model$PlacementCappingType:[I

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 220
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    .line 207
    :pswitch_0
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 208
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 209
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 214
    :pswitch_1
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 215
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 217
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 61
    const-class v1, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Interstitial"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 68
    const-class v1, Lcom/supersonic/mediationsdk/utils/CappingManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Rewarded Video"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    .local v6, "currentTime":J
    const-string v24, "CappingManager.IS_DELIVERY_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "deliveryKey":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v8, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    .line 95
    .local v11, "isDeliveryEnabled":Z
    if-nez v11, :cond_0

    .line 97
    sget-object v24, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 147
    :goto_0
    return-object v24

    .line 101
    :cond_0
    const-string v24, "CappingManager.IS_PACING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "isPacingEnabledKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v12

    .line 103
    .local v12, "isPacingEnabled":Z
    if-eqz v12, :cond_1

    .line 105
    const-string v24, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 106
    .local v20, "timeOfPreviousShowKey":Ljava/lang/String;
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v18

    .line 109
    .local v18, "timeOfPreviousShow":J
    const-string v24, "CappingManager.SECONDS_BETWEEN_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 110
    .local v17, "secondsBetweenShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 113
    .local v16, "secondsBetweenShows":I
    sub-long v24, v6, v18

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 115
    sget-object v24, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 120
    .end local v16    # "secondsBetweenShows":I
    .end local v17    # "secondsBetweenShowsKey":Ljava/lang/String;
    .end local v18    # "timeOfPreviousShow":J
    .end local v20    # "timeOfPreviousShowKey":Ljava/lang/String;
    :cond_1
    const-string v24, "CappingManager.IS_CAPPING_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, "isCappingEnabledKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v10, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    .line 122
    .local v9, "isCappingEnabled":Z
    if-eqz v9, :cond_2

    .line 124
    const-string v24, "CappingManager.MAX_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "maxNumberOfShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v15, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 128
    .local v14, "maxNumberOfShows":I
    const-string v24, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "currentNumberOfShowsKey":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 132
    .local v4, "currentNumberOfShows":I
    const-string v24, "CappingManager.CAPPING_TIME_THRESHOLD"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 133
    .local v21, "timeThresholdKey":Ljava/lang/String;
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v22

    .line 136
    .local v22, "timeThreshold":J
    cmp-long v24, v6, v22

    if-ltz v24, :cond_3

    .line 138
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v5, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 139
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    .line 147
    .end local v4    # "currentNumberOfShows":I
    .end local v5    # "currentNumberOfShowsKey":Ljava/lang/String;
    .end local v14    # "maxNumberOfShows":I
    .end local v15    # "maxNumberOfShowsKey":Ljava/lang/String;
    .end local v21    # "timeThresholdKey":Ljava/lang/String;
    .end local v22    # "timeThreshold":J
    :cond_2
    sget-object v24, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    goto/16 :goto_0

    .line 140
    .restart local v4    # "currentNumberOfShows":I
    .restart local v5    # "currentNumberOfShowsKey":Ljava/lang/String;
    .restart local v14    # "maxNumberOfShows":I
    .restart local v15    # "maxNumberOfShowsKey":Ljava/lang/String;
    .restart local v21    # "timeThresholdKey":Ljava/lang/String;
    .restart local v22    # "timeThreshold":J
    :cond_3
    if-lt v4, v14, :cond_2

    .line 142
    sget-object v24, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    goto/16 :goto_0
.end method
