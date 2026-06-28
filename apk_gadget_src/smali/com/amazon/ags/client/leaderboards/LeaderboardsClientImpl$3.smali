.class Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "LeaderboardsClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

.field final synthetic val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

.field final synthetic val$leaderboardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->val$leaderboardId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

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
    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v0, "request":Lorg/json/JSONObject;
    const-string v1, "ACTION_CODE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v1, "LEADERBOARD_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "LEADERBOARD_FILTER"

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->val$filter:Lcom/amazon/ags/constants/LeaderboardFilter;

    invoke-virtual {v2}, Lcom/amazon/ags/constants/LeaderboardFilter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
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
    .line 204
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetScoresResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    .locals 12
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 218
    .local v6, "responseCode":I
    const-string v0, "LEADERBOARD_DISPLAY_TEXT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "displayText":Ljava/lang/String;
    const-string v0, "LEADERBOARD_NAME"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "name":Ljava/lang/String;
    const-string v0, "LEADERBOARD_ID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "uniqueId":Ljava/lang/String;
    const-string v0, "LEADERBOARD_DATA_FORMAT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, "format":Ljava/lang/String;
    const-string v0, "LEADERBOARD_ICON_URL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "imageUrl":Ljava/lang/String;
    invoke-static {v8}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v3

    .line 225
    .local v3, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    const-string v0, "LEADERBOARD_SCORES_ARRAY"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 227
    .local v10, "scoreListJson":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lcom/amazon/ags/api/leaderboards/Score;

    .line 228
    .local v1, "scores":[Lcom/amazon/ags/api/leaderboards/Score;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 229
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 230
    .local v11, "value":Ljava/lang/Object;
    instance-of v0, v11, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    check-cast v11, Lorg/json/JSONObject;

    .end local v11    # "value":Ljava/lang/Object;
    invoke-static {v0, v11, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;->access$400(Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;Lorg/json/JSONObject;Lcom/amazon/ags/constants/ScoreFormat;)Lcom/amazon/ags/api/leaderboards/Score;

    move-result-object v0

    aput-object v0, v1, v9

    .line 228
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;

    invoke-direct/range {v0 .. v7}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;-><init>([Lcom/amazon/ags/api/leaderboards/Score;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl$3;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetScoresResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 240
    new-instance v0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;

    const/16 v1, 0x18

    sget-object v2, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method
