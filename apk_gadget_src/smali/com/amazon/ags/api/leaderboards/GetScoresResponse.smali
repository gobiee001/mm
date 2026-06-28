.class public interface abstract Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
.super Ljava/lang/Object;
.source "GetScoresResponse.java"

# interfaces
.implements Lcom/amazon/ags/api/RequestResponse;


# virtual methods
.method public abstract getLeaderboard()Lcom/amazon/ags/api/leaderboards/Leaderboard;
.end method

.method public abstract getNumScores()I
.end method

.method public abstract getScores()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Score;",
            ">;"
        }
    .end annotation
.end method
