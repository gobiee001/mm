.class Lcom/appsomniacs/da2/DA2Activity$40$1;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity$40;->onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appsomniacs/da2/DA2Activity$40;

.field final synthetic val$l:Lcom/google/android/gms/games/leaderboard/Leaderboard;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity$40;Lcom/google/android/gms/games/leaderboard/Leaderboard;)V
    .locals 0
    .param p1, "this$1"    # Lcom/appsomniacs/da2/DA2Activity$40;

    .prologue
    .line 4909
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$40$1;->this$1:Lcom/appsomniacs/da2/DA2Activity$40;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$40$1;->val$l:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4911
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$40$1;->this$1:Lcom/appsomniacs/da2/DA2Activity$40;

    iget-object v0, v0, Lcom/appsomniacs/da2/DA2Activity$40;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$40$1;->val$l:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity$40$1;->val$l:Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v2}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/appsomniacs/da2/DA2Activity;->access$4500(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4912
    return-void
.end method
