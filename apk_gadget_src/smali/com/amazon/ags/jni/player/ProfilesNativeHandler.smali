.class public Lcom/amazon/ags/jni/player/ProfilesNativeHandler;
.super Ljava/lang/Object;
.source "ProfilesNativeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchFriends([Ljava/lang/String;IJ)V
    .locals 10
    .param p0, "playerIds"    # [Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 67
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v5, :cond_0

    .line 68
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v6, "requestBatchFriends - initializeJni was not called beforehand."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v1, "friendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 74
    .local v4, "playerId":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v4    # "playerId":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v1, v6}, Lcom/amazon/ags/api/player/PlayerClient;->getBatchFriends(Ljava/util/List;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v5

    new-instance v6, Lcom/amazon/ags/jni/player/RequestBatchFriendsJniResponseHandler;

    invoke-direct {v6, p1, p2, p3}, Lcom/amazon/ags/jni/player/RequestBatchFriendsJniResponseHandler;-><init>(IJ)V

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static getBatchFriendsHandle([Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 9
    .param p0, "playerIds"    # [Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestFriendsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v5, :cond_0

    .line 101
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v6, "requestBatchFriendsHandle - initializeJni was not called beforehand."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v5, 0x0

    .line 110
    :goto_0
    return-object v5

    .line 105
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "friendIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 107
    .local v4, "playerId":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v4    # "playerId":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v1, v6}, Lcom/amazon/ags/api/player/PlayerClient;->getBatchFriends(Ljava/util/List;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v5

    goto :goto_0
.end method

.method public static getFriendIds(IJ)V
    .locals 5
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 57
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestFriendIds - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->getFriendIds([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/player/RequestFriendIdsJniResponseHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/player/RequestFriendIdsJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static getFriendIdsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestFriendIdsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestFriendIdsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->getFriendIds([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalPlayer(IJ)V
    .locals 3
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 47
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerProfile - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->getLocalPlayer([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/player/RequestLocalPlayerProfileJniResponseHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/player/RequestLocalPlayerProfileJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static getLocalPlayerHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestPlayerResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerProfileHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/player/PlayerClient;->getLocalPlayer([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getPlayerClient()Lcom/amazon/ags/api/player/PlayerClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    .line 44
    return-void
.end method

.method public static isSignedIn(I)Z
    .locals 2
    .param p0, "developerTag"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "isSignedIn - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/player/ProfilesNativeHandler;->m_PlayerClient:Lcom/amazon/ags/api/player/PlayerClient;

    invoke-interface {v0}, Lcom/amazon/ags/api/player/PlayerClient;->isSignedIn()Z

    move-result v0

    goto :goto_0
.end method
