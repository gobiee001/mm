.class public Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;
.super Lcom/amazon/ags/client/RequestResponseImpl;
.source "GetScoresResponseImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/GetScoresResponse;


# instance fields
.field private final leaderboard:Lcom/amazon/ags/api/leaderboards/Leaderboard;

.field private final numScores:I

.field private final scores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Score;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->scores:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->numScores:I

    .line 40
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    sget-object v4, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->leaderboard:Lcom/amazon/ags/api/leaderboards/Leaderboard;

    .line 41
    return-void
.end method

.method public constructor <init>([Lcom/amazon/ags/api/leaderboards/Score;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "scores"    # [Lcom/amazon/ags/api/leaderboards/Score;
    .param p2, "displayText"    # Ljava/lang/String;
    .param p3, "scoreFormat"    # Lcom/amazon/ags/constants/ScoreFormat;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "uniqueId"    # Ljava/lang/String;
    .param p6, "responseCode"    # I
    .param p7, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p6}, Lcom/amazon/ags/client/RequestResponseImpl;-><init>(I)V

    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->scores:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->scores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->numScores:I

    .line 33
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    move-object v1, p5

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->leaderboard:Lcom/amazon/ags/api/leaderboards/Leaderboard;

    .line 34
    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x7

    return v0
.end method

.method public getLeaderboard()Lcom/amazon/ags/api/leaderboards/Leaderboard;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->leaderboard:Lcom/amazon/ags/api/leaderboards/Leaderboard;

    return-object v0
.end method

.method public final getNumScores()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->numScores:I

    return v0
.end method

.method public final getScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Score;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->scores:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/amazon/ags/client/RequestResponseImpl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n numScores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->numScores:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n leaderboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImpl;->leaderboard:Lcom/amazon/ags/api/leaderboards/Leaderboard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method
