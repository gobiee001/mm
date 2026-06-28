.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "LeaderboardsClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;


# static fields
.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private overlayClient:Lcom/amazon/ags/client/OverlayClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0
    .param p1, "serviceHelper"    # Lcom/amazon/ags/html5/service/ServiceHelper;
    .param p2, "overlayClient"    # Lcom/amazon/ags/client/OverlayClient;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 58
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->convertToLeaderboard(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Lcom/amazon/ags/constants/ScoreFormat;)Lcom/amazon/ags/api/leaderboards/Score;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/amazon/ags/constants/ScoreFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->convertToScore(Lorg/json/JSONObject;Lcom/amazon/ags/constants/ScoreFormat;)Lcom/amazon/ags/api/leaderboards/Score;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static convertToLeaderboard(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .locals 8
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v0, "LEADERBOARD_ID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "id":Ljava/lang/String;
    const-string v0, "LEADERBOARD_NAME"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "name":Ljava/lang/String;
    const-string v0, "LEADERBOARD_ICON_URL"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "imageURL":Ljava/lang/String;
    const-string v0, "LEADERBOARD_DISPLAY_TEXT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "display":Ljava/lang/String;
    const-string v0, "LEADERBOARD_DATA_FORMAT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "format":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 120
    const-string v3, "UNKNOWN"

    .line 124
    :cond_0
    if-nez v6, :cond_1

    .line 125
    sget-object v0, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v0}, Lcom/amazon/ags/constants/ScoreFormat;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    :cond_1
    invoke-static {v6}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v4

    .line 129
    .local v4, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertToScore(Lorg/json/JSONObject;Lcom/amazon/ags/constants/ScoreFormat;)Lcom/amazon/ags/api/leaderboards/Score;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "scoreFormat"    # Lcom/amazon/ags/constants/ScoreFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v1, "scoreValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 248
    .local v2, "scoreValue":J
    const-string v1, "rank"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 249
    .local v5, "rank":I
    const-string v1, "leaderboard"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "leaderboard":Ljava/lang/String;
    const-string v1, "ALIAS"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "playerAlias":Ljava/lang/String;
    const-string v1, "playerId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "playerId":Ljava/lang/String;
    const-string v1, "avatarUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "playerAvatarUrl":Ljava/lang/String;
    new-instance v4, Lcom/amazon/ags/client/player/PlayerImpl;

    invoke-direct {v4, v9, v0, v8}, Lcom/amazon/ags/client/player/PlayerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v4, "player":Lcom/amazon/ags/api/player/Player;
    new-instance v1, Lcom/amazon/ags/client/leaderboards/ScoreImpl;

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ags/client/leaderboards/ScoreImpl;-><init>(JLcom/amazon/ags/api/player/Player;ILjava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V

    return-object v1
.end method


# virtual methods
.method public varargs getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 74
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 75
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getLeaderboards called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;

    const-string v2, "Get Leaderboards"

    invoke-direct {v1, p0, v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 1
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, "SELF"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getScoreForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public varargs getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 1
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const-string v0, "SELF"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getPercentileRanksForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public varargs getPercentileRanksForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 7
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 319
    :cond_0
    new-instance v6, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v6, p4}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 320
    .local v6, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;

    const/16 v1, 0x1d

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v6, v0}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 322
    if-nez p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPercentileRanks called with null leaderboard ID; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    :goto_0
    return-object v6

    .line 324
    .restart local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    :cond_1
    if-nez p2, :cond_2

    .line 325
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPercentileRanks called with null player ID; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPercentileRanks called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    :cond_3
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;

    const-string v2, "Get Local Player Score"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v0, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$5;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v6

    goto :goto_0
.end method

.method public varargs getScoreForPlayer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 7
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "playerId"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 268
    :cond_0
    new-instance v6, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v6, p4}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 269
    .local v6, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImpl;

    const/16 v1, 0x1d

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v6, v0}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 270
    if-nez p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPlayerScore called with null leaderboard ID; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    :goto_0
    return-object v6

    .line 272
    .restart local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    :cond_1
    if-nez p2, :cond_2

    .line 273
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPlayerScore called with null player ID; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getPlayerScore called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    :cond_3
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;

    const-string v2, "Get Local Player Score"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v0, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$4;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v6

    goto :goto_0
.end method

.method public varargs getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p3}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 199
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 200
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getScores called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;

    const-string v2, "Get Local Player Score"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V

    invoke-virtual {v1, p3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public setOverlayClient(Lcom/amazon/ags/client/OverlayClient;)V
    .locals 0
    .param p1, "overlayClient"    # Lcom/amazon/ags/client/OverlayClient;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 68
    return-void
.end method

.method public varargs showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
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
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v1, :cond_0

    .line 404
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 405
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 406
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "showLeaderboardOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/ags/client/OverlayClient;->showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
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
    .line 391
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    if-nez v1, :cond_0

    .line 392
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 393
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 394
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "showLeaderboardsOverlay called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/RequestResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/OverlayClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isReady:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->overlayClient:Lcom/amazon/ags/client/OverlayClient;

    .line 64
    return-void
.end method

.method public varargs submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->isClientReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v6, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v6, p4}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 137
    .local v6, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    new-instance v0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;

    const/16 v1, 0x1d

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v6, v0}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 138
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "submitScore called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v6    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    :goto_0
    return-object v6

    :cond_0
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;

    const-string v2, "Submit Score"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;-><init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, p4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v6

    goto :goto_0
.end method
