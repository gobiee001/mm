.class Lcom/appsomniacs/da2/DA2Activity$42;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->tryFetchGpgsScore(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Lcom/google/android/gms/games/AnnotatedData",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;

.field final synthetic val$scoreId:Ljava/lang/String;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$42;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$scoreId:Ljava/lang/String;

    iput p3, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$step:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "leaderboardScoreAnnotatedData":Lcom/google/android/gms/games/AnnotatedData;, "Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    const/4 v8, 0x1

    .line 4944
    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 4945
    .local v0, "score":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    if-eqz v0, :cond_0

    .line 4946
    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v2

    .line 4947
    .local v2, "scoreValRaw":J
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$4400()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$scoreId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$5000()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$scoreId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4949
    const-string v1, "DA2"

    const-string v4, "GPGS Leaderboard Score Found: %s (%s) [step %d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$scoreId:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget v7, p0, Lcom/appsomniacs/da2/DA2Activity$42;->val$step:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4956
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$42;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$5100(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 4958
    .end local v2    # "scoreValRaw":J
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4941
    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$42;->onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V

    return-void
.end method
