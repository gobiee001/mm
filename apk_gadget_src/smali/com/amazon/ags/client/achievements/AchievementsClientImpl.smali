.class public Lcom/amazon/ags/client/achievements/AchievementsClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "AchievementsClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/achievements/AchievementsClient;


# instance fields
.field private overlayClient:Lcom/amazon/ags/client/OverlayClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0
    .param p1, "serviceHelper"    # Lcom/amazon/ags/html5/service/ServiceHelper;
    .param p2, "overlayClient"    # Lcom/amazon/ags/client/OverlayClient;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 47
    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 48
    return-void
.end method

.method public static convertToAchievement(Lorg/json/JSONObject;)Lcom/amazon/ags/api/achievements/Achievement;
    .locals 18
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v2, "ACHIEVEMENT_ID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "id":Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "title":Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "description":Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 147
    .local v6, "pointValue":I
    const-string v2, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 148
    .local v7, "hidden":Z
    const-string v2, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 149
    .local v8, "unlocked":Z
    const-string v2, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v9, v0

    .line 150
    .local v9, "progress":F
    const-string v2, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 151
    .local v10, "position":I
    const-string v2, "ACHIEVEMENT_DATE_UNLOCKED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 152
    .local v14, "dateUnlockedLong":J
    const-string v2, "ACHIEVEMENT_ICON_URL_LARGE"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "imageURL":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_1

    .line 155
    :cond_0
    const/4 v11, 0x0

    .line 160
    .local v11, "dateUnlocked":Ljava/util/Date;
    :goto_0
    new-instance v2, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-direct/range {v2 .. v12}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;Ljava/lang/String;)V

    return-object v2

    .line 157
    .end local v11    # "dateUnlocked":Ljava/util/Date;
    :cond_1
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    .restart local v11    # "dateUnlocked":Ljava/util/Date;
    goto :goto_0
.end method


# virtual methods
.method public varargs getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 1
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "SELF"

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->getAchievementForPlayer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public varargs getAchievementForPlayer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 108
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 109
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getAchievement called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;

    const-string v2, "Get Achievement"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 1
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const-string v0, "SELF"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->getAchievementsForPlayer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public varargs getAchievementsForPlayer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 63
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 64
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getAchievements called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;

    const-string v2, "Get Achievements"

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public setOverlayClient(Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0
    .param p1, "overlayClient"    # Lcom/amazon/ags/client/OverlayClient;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 57
    return-void
.end method

.method public varargs showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v1, :cond_0

    .line 201
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 202
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 203
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "showAchievementsOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/OverlayClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isReady:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 53
    return-void
.end method

.method public varargs updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "percentComplete"    # F
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 168
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 169
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateProgress called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;

    const-string v2, "Update Achievement Progress"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;-><init>(Lcom/amazon/ags/client/achievements/AchievementsClientImpl;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v1, p3}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
