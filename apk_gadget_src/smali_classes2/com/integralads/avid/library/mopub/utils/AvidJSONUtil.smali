.class public Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;
.super Ljava/lang/Object;
.source "AvidJSONUtil.java"


# static fields
.field private static KEYS:[Ljava/lang/String; = null

.field public static final KEY_CHILD_VIEWS:Ljava/lang/String; = "childViews"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_FRIENDLY_OBSTRUCTION_FOR:Ljava/lang/String; = "isFriendlyObstructionFor"

.field public static final KEY_ROOT_VIEW:Ljava/lang/String; = "rootView"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_X:Ljava/lang/String; = "x"

.field public static final KEY_Y:Ljava/lang/String; = "y"

.field static density:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->KEYS:[Ljava/lang/String;

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAvidId(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p0, "state"    # Lorg/json/JSONObject;
    .param p1, "avidId"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Error with setting avid id"

    invoke-static {v1, v0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static addChildState(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "state"    # Lorg/json/JSONObject;
    .param p1, "childState"    # Lorg/json/JSONObject;

    .prologue
    .line 94
    :try_start_0
    const-string v2, "childViews"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 95
    .local v0, "children":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "children":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .restart local v0    # "children":Lorg/json/JSONArray;
    const-string v2, "childViews"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "children":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addFriendlyObstruction(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 5
    .param p0, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "sessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 81
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 85
    .end local v2    # "sessionId":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v3, "isFriendlyObstructionFor"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "Error with setting friendly obstruction"

    invoke-static {v3, v1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static compareChildren(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "state1"    # Lorg/json/JSONObject;
    .param p1, "state2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    const-string v7, "childViews"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 176
    .local v2, "children1":Lorg/json/JSONArray;
    const-string v7, "childViews"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 177
    .local v3, "children2":Lorg/json/JSONArray;
    invoke-static {v2, v3}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v5

    .line 180
    :cond_1
    if-nez v2, :cond_2

    move v5, v6

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 184
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    .local v0, "childState1":Lorg/json/JSONObject;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    .local v1, "childState2":Lorg/json/JSONObject;
    invoke-static {v0, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "childState1":Lorg/json/JSONObject;
    .end local v1    # "childState2":Lorg/json/JSONObject;
    :cond_3
    move v5, v6

    .line 190
    goto :goto_0
.end method

.method private static compareFriendlySessionIds(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8
    .param p0, "state1"    # Lorg/json/JSONObject;
    .param p1, "state2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    const-string v7, "isFriendlyObstructionFor"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 157
    .local v0, "friendlySessionIds1":Lorg/json/JSONArray;
    const-string v7, "isFriendlyObstructionFor"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 158
    .local v1, "friendlySessionIds2":Lorg/json/JSONArray;
    invoke-static {v0, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v5

    .line 161
    :cond_1
    if-nez v0, :cond_2

    move v5, v6

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 165
    const-string v7, ""

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "sessionId1":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "sessionId2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "sessionId1":Ljava/lang/String;
    .end local v4    # "sessionId2":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 171
    goto :goto_0
.end method

.method private static compareJSONArrays(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 4
    .param p0, "array1"    # Lorg/json/JSONArray;
    .param p1, "array2"    # Lorg/json/JSONArray;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    :cond_3
    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static compareRequiredValues(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 10
    .param p0, "state1"    # Lorg/json/JSONObject;
    .param p1, "state2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 143
    sget-object v3, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->KEYS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 144
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_0

    .line 148
    .end local v0    # "key":Ljava/lang/String;
    :goto_1
    return v1

    .line 143
    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static compareSessionId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 3
    .param p0, "state1"    # Lorg/json/JSONObject;
    .param p1, "state2"    # Lorg/json/JSONObject;

    .prologue
    .line 152
    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 2
    .param p0, "state1"    # Lorg/json/JSONObject;
    .param p1, "state2"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareRequiredValues(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareSessionId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareFriendlySessionIds(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {p0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->compareChildren(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fixStateFrame(Lorg/json/JSONObject;)V
    .locals 12
    .param p0, "state"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    const-string v11, "childViews"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 107
    .local v1, "children":Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v8, 0x0

    .line 111
    .local v8, "width":I
    const/4 v5, 0x0

    .line 112
    .local v5, "height":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 113
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_2

    .line 114
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    .local v0, "child":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 116
    const-string v11, "x"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 117
    .local v9, "x":I
    const-string v11, "y"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 118
    .local v10, "y":I
    const-string v11, "width"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 119
    .local v7, "w":I
    const-string v11, "height"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    .local v4, "h":I
    add-int v11, v9, v7

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 121
    add-int v11, v10, v4

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 113
    .end local v4    # "h":I
    .end local v7    # "w":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "child":Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    const-string v11, "width"

    invoke-virtual {p0, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v11, "height"

    invoke-virtual {p0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getEmptyTreeJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-static {v1, v1, v1, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "viewStateObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method

.method public static getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;
    .locals 3
    .param p0, "rootJSONObject"    # Lorg/json/JSONObject;
    .param p1, "timestamp"    # D

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "treeJSONObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "timestamp"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 45
    const-string v2, "rootView"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Error with creating treeJSONObject"

    invoke-static {v2, v0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getViewState(IIII)Lorg/json/JSONObject;
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v1, "viewStateObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "x"

    invoke-static {p0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    const-string v2, "y"

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 58
    const-string v2, "width"

    invoke-static {p2}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    const-string v2, "height"

    invoke-static {p3}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->pxToDp(I)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Error with creating viewStateObject"

    invoke-static {v2, v0}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    .line 34
    :cond_0
    return-void
.end method

.method static pxToDp(I)F
    .locals 2
    .param p0, "px"    # I

    .prologue
    .line 67
    int-to-float v0, p0

    sget v1, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->density:F

    div-float/2addr v0, v1

    return v0
.end method
