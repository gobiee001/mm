.class Lcom/amazon/ags/client/player/PlayerClientImpl$3;
.super Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;
.source "PlayerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/player/PlayerClientImpl;->getBatchFriends(Ljava/util/List;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper",
        "<",
        "Lcom/amazon/ags/api/player/RequestFriendsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/player/PlayerClientImpl;

.field final synthetic val$playerIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->this$0:Lcom/amazon/ags/client/player/PlayerClientImpl;

    iput-object p3, p0, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->val$playerIds:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/ClientBase$AsyncTaskWrapper;-><init>(Lcom/amazon/ags/client/ClientBase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildRequest()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "request":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->val$playerIds:Ljava/util/List;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 177
    .local v0, "playerIdArray":Lorg/json/JSONArray;
    const-string v2, "ACTION_CODE"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v2, "friendsPlayerIds"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    return-object v1
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
    .line 171
    invoke-virtual {p0, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestFriendsResponse;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestFriendsResponse;
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 184
    const-string v9, "RESPONSE_CODE"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 186
    .local v8, "responseCode":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v5, "friendProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/player/Player;>;"
    const-string v9, "friendsProfiles"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 189
    .local v6, "friendsArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    .line 190
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 191
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    .local v0, "friend":Lorg/json/JSONObject;
    const-string v9, "playerId"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "friendPlayerId":Ljava/lang/String;
    const-string v9, "ALIAS"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "friendAlias":Ljava/lang/String;
    const-string v9, "avatarUrl"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "friendAvatarUrl":Ljava/lang/String;
    new-instance v4, Lcom/amazon/ags/client/player/PlayerImpl;

    invoke-direct {v4, v3, v1, v2}, Lcom/amazon/ags/client/player/PlayerImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v4, "friendPlayerProfile":Lcom/amazon/ags/api/player/Player;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "friend":Lorg/json/JSONObject;
    .end local v1    # "friendAlias":Ljava/lang/String;
    .end local v2    # "friendAvatarUrl":Ljava/lang/String;
    .end local v3    # "friendPlayerId":Ljava/lang/String;
    .end local v4    # "friendPlayerProfile":Lcom/amazon/ags/api/player/Player;
    .end local v7    # "i":I
    :cond_0
    new-instance v9, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;

    invoke-direct {v9, v5, v8}, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;-><init>(Ljava/util/List;I)V

    return-object v9
.end method

.method public bridge synthetic getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/RequestResponse;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestFriendsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFailureResponse(ILorg/json/JSONObject;)Lcom/amazon/ags/api/player/RequestFriendsResponse;
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 206
    invoke-static {}, Lcom/amazon/ags/client/player/PlayerClientImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request friends failure response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
