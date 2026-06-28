.class Lcom/appsomniacs/da2/DA2Activity$35;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->fetchGpgsAchievementScores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 4723
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$35;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$35;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$35;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Lcom/appsomniacs/da2/DA2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/appsomniacs/da2/DA2Activity;->access$3800(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 4727
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$35;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v0, p1}, Lcom/appsomniacs/da2/DA2Activity;->reportNonFatalException(Ljava/lang/Throwable;)V

    .line 4728
    return-void
.end method
