.class Lcom/appsomniacs/da2/DA2Activity$40;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsLeaderboardScores()V
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
        "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 4891
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$40;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "leaderboardBufferAnnotatedData":Lcom/google/android/gms/games/AnnotatedData;, "Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;>;"
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 4894
    invoke-static {v10}, Lcom/appsomniacs/da2/DA2Activity;->access$4302(Z)Z

    .line 4895
    if-nez p1, :cond_1

    .line 4925
    :cond_0
    return-void

    .line 4898
    :cond_1
    const/4 v3, 0x0

    .line 4899
    .local v3, "step":I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4900
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-virtual {v4}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 4901
    .local v1, "l":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    if-eqz v1, :cond_2

    .line 4902
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$4400()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4903
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$4400()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$4400()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4905
    :cond_3
    const-string v4, "DA2"

    const-string v6, "GPGS New Leaderboard Found: %s (%s)"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$4400()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4909
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$40$1;

    invoke-direct {v2, p0, v1}, Lcom/appsomniacs/da2/DA2Activity$40$1;-><init>(Lcom/appsomniacs/da2/DA2Activity$40;Lcom/google/android/gms/games/leaderboard/Leaderboard;)V

    .line 4915
    .local v2, "r":Ljava/lang/Runnable;
    add-int/lit8 v3, v3, 0x1

    .line 4916
    const-string v4, "DA2"

    const-string v6, "GPGS Injecting a pause of %d ms before attempting to fetch score of %s (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/appsomniacs/da2/DA2Activity$40;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v8}, Lcom/appsomniacs/da2/DA2Activity;->access$4600(Lcom/appsomniacs/da2/DA2Activity;)I

    move-result v8

    mul-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4917
    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity$40;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v4}, Lcom/appsomniacs/da2/DA2Activity;->access$4600(Lcom/appsomniacs/da2/DA2Activity;)I

    move-result v4

    mul-int/2addr v4, v3

    int-to-double v6, v4

    const-wide v8, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4920
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_4
    const-string v4, "DA2"

    const-string v6, "GPGS Known Leaderboard Hit: %s (%s)"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4891
    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$40;->onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V

    return-void
.end method
