.class public Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;
.super Lcom/amazon/ags/client/RequestResponseImpl;
.source "RequestFriendsResponseImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/player/RequestFriendsResponse;


# instance fields
.field friendsProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/player/Player;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;->friendsProfiles:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/player/Player;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/player/Player;>;"
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;->friendsProfiles:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x13

    return v0
.end method

.method public getFriends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/player/Player;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/ags/client/player/RequestFriendsResponseImpl;->friendsProfiles:Ljava/util/List;

    return-object v0
.end method
