.class public final Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.super Ljava/lang/Object;


# instance fields
.field private final zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

.field private final zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_3
    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_3
.end method

.method private static zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "MatchTurnStatus"

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown match turn status: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TURN_STATUS_UNKNOWN"

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    const-string v0, "TURN_STATUS_INVITED"

    goto :goto_0

    :pswitch_1
    const-string v0, "TURN_STATUS_MY_TURN"

    goto :goto_0

    :pswitch_2
    const-string v0, "TURN_STATUS_THEIR_TURN"

    goto :goto_0

    :pswitch_3
    const-string v0, "TURN_STATUS_COMPLETE"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->release()V

    return-void
.end method

.method public final getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method

.method public final getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public final hasData()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyo:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyq:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->zzhyr:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    :cond_3
    return-void
.end method
