.class public Lcom/amazon/ags/client/player/PlayerClientImpl;
.super Lcom/amazon/ags/client/ClientBase;
.source "PlayerClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/player/PlayerClient;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;


# instance fields
.field private final globalState:Lcom/amazon/ags/html5/util/GlobalState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/player/PlayerClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/service/ServiceHelper;Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 0
    .param p1, "serviceHelper"    # Lcom/amazon/ags/html5/service/ServiceHelper;
    .param p2, "globalState"    # Lcom/amazon/ags/html5/util/GlobalState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ClientBase;-><init>(Lcom/amazon/ags/html5/service/ServiceHelper;)V

    .line 43
    iput-object p2, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/html5/util/GlobalState;)V
    .locals 0
    .param p1, "globalState"    # Lcom/amazon/ags/html5/util/GlobalState;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/ags/client/ClientBase;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static notifySignedInListener(Z)V
    .locals 4
    .param p0, "isSignedIn"    # Z

    .prologue
    .line 130
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    invoke-interface {v1, p0}, Lcom/amazon/ags/api/player/AGSignedInListener;->onSignedInStateChange(Z)V

    .line 134
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/AGSJniHandler;->isLibraryLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {p0}, Lcom/amazon/ags/jni/player/ProfilesJni;->callSignedInStateChangedListener(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in calling signed in listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public varargs getBatchFriends(Ljava/util/List;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestFriendsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazon/ags/client/player/PlayerClientImpl;->isClientReady()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    :cond_0
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 159
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendsResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 161
    if-nez p1, :cond_1

    .line 162
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getBatchFriends called with null playerIds; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendsResponse;>;"
    :goto_0
    return-object v0

    .line 163
    .restart local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendsResponse;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getBatchFriends called with empty playerIds; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_2
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getBatchFriends called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendsResponse;>;"
    :cond_3
    new-instance v1, Lcom/amazon/ags/client/player/PlayerClientImpl$3;

    const-string v2, "Get Local Player Friends"

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$3;-><init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/amazon/ags/client/player/PlayerClientImpl$3;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getFriendIds([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestFriendIdsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/amazon/ags/client/player/PlayerClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 89
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendIdsResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/player/RequestFriendIdsResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/player/RequestFriendIdsResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 90
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getFriendIds called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestFriendIdsResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/player/PlayerClientImpl$2;

    const-string v2, "Get Local Player Friends"

    invoke-direct {v1, p0, v2}, Lcom/amazon/ags/client/player/PlayerClientImpl$2;-><init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$2;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getLocalPlayer([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/player/RequestPlayerResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/amazon/ags/client/player/PlayerClientImpl;->isClientReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    new-instance v0, Lcom/amazon/ags/client/AGResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/AGResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 54
    .local v0, "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestPlayerResponse;>;"
    new-instance v1, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;

    const/16 v2, 0x1d

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/player/RequestPlayerResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/AGResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 55
    sget-object v1, Lcom/amazon/ags/client/player/PlayerClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "getLocalPlayer called before AmazonGamesClient initialized; returning empty response"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "emptyHandle":Lcom/amazon/ags/client/AGResponseHandleImpl;, "Lcom/amazon/ags/client/AGResponseHandleImpl<Lcom/amazon/ags/api/player/RequestPlayerResponse;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amazon/ags/client/player/PlayerClientImpl$1;

    const-string v2, "Get Local Player"

    invoke-direct {v1, p0, v2}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;-><init>(Lcom/amazon/ags/client/player/PlayerClientImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/player/PlayerClientImpl$1;->execute([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->globalState:Lcom/amazon/ags/html5/util/GlobalState;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/util/GlobalState;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignedInListener(Lcom/amazon/ags/api/player/AGSignedInListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/amazon/ags/api/player/AGSignedInListener;

    .prologue
    .line 144
    sput-object p1, Lcom/amazon/ags/client/player/PlayerClientImpl;->signedInListener:Lcom/amazon/ags/api/player/AGSignedInListener;

    .line 145
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/player/PlayerClientImpl;->isReady:Z

    .line 48
    return-void
.end method
