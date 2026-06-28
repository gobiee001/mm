.class Lcom/appsomniacs/da2/DA2Activity$31;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->signInSilently()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 4350
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$31;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4353
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4354
    const-string v0, "DA2"

    const-string v1, "signInSilently(): success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$31;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v1, v0}, Lcom/appsomniacs/da2/DA2Activity;->access$3600(Lcom/appsomniacs/da2/DA2Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 4360
    :goto_0
    return-void

    .line 4357
    :cond_0
    const-string v0, "DA2"

    const-string v1, "signInSilently(): failure"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4358
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$31;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$3700(Lcom/appsomniacs/da2/DA2Activity;)V

    goto :goto_0
.end method
