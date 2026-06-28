.class Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "LeaderboardsClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getPercentileRanksForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

.field final synthetic val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$playerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$leaderboardId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$playerId:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v0, "request":Lorg/json/JSONObject;
    const-string v1, "ACTION_CODE"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v1, "LEADERBOARD_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v1, "playerId"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$playerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v1, "LEADERBOARD_FILTER"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

    invoke-virtual {v2}, Lcom/amazon/ags/constants/LeaderboardFilter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1
    .param p1, "x0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;
    .locals 27
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 346
    const-string v25, "RESPONSE_CODE"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 347
    .local v20, "responseCode":I
    const-string v25, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "leaderboardId":Ljava/lang/String;
    const-string v25, "LEADERBOARD_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "leaderboardName":Ljava/lang/String;
    const-string v25, "LEADERBOARD_DISPLAY_TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "leaderboardDisplayText":Ljava/lang/String;
    const-string v25, "LEADERBOARD_DATA_FORMAT"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, "format":Ljava/lang/String;
    const-string v25, "LEADERBOARD_USER_INDEX"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 352
    .local v21, "userIndex":I
    const-string v25, "LEADERBOARD_ICON_URL"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, "imageURL":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 356
    sget-object v25, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual/range {v25 .. v25}, Lcom/amazon/ags/constants/ScoreFormat;->toString()Ljava/lang/String;

    move-result-object v12

    .line 358
    :cond_0
    invoke-static {v12}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v8

    .line 359
    .local v8, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    const-string v25, "LEADERBOARD_PERCENTILES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 361
    .local v17, "percentileListJson":Lorg/json/JSONArray;
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    .local v16, "percentileList":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_2

    .line 364
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 365
    .local v24, "value":Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v25, v24

    .line 366
    check-cast v25, Lorg/json/JSONObject;

    const-string v26, "PlayerId"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "playerID":Ljava/lang/String;
    move-object/from16 v25, v24

    .line 367
    check-cast v25, Lorg/json/JSONObject;

    const-string v26, "PlayerName"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "alias":Ljava/lang/String;
    move-object/from16 v25, v24

    .line 368
    check-cast v25, Lorg/json/JSONObject;

    const-string v26, "AvatarUrl"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 369
    .local v11, "avatarUrl":Ljava/lang/String;
    new-instance v18, Lcom/amazon/ags/client/player/PlayerImpl;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10, v11}, Lcom/amazon/ags/client/player/PlayerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v18, "player":Lcom/amazon/ags/api/player/Player;
    move-object/from16 v25, v24

    .line 370
    check-cast v25, Lorg/json/JSONObject;

    const-string v26, "PlayerScore"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 371
    .local v22, "score":J
    check-cast v24, Lorg/json/JSONObject;

    .end local v24    # "value":Ljava/lang/Object;
    const-string v25, "Percentile"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 372
    .local v14, "percentile":I
    new-instance v15, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImpl;

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-direct {v15, v0, v1, v2, v14}, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImpl;-><init>(Lcom/amazon/ags/api/player/Player;JI)V

    .line 373
    .local v15, "percentileItem":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v10    # "alias":Ljava/lang/String;
    .end local v11    # "avatarUrl":Ljava/lang/String;
    .end local v14    # "percentile":I
    .end local v15    # "percentileItem":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    .end local v18    # "player":Lcom/amazon/ags/api/player/Player;
    .end local v19    # "playerID":Ljava/lang/String;
    .end local v22    # "score":J
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 377
    :cond_2
    new-instance v4, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    invoke-direct/range {v4 .. v9}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;)V

    .line 378
    .local v4, "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    new-instance v25, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;-><init>(Lcom/amazon/ags/api/leaderboards/Leaderboard;Ljava/util/List;II)V

    return-object v25
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 383
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
