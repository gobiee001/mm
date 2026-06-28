.class Lcom/appsomniacs/da2/DA2Activity$34;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->showGpgsAchievementsRequested()V
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
        "Landroid/content/Intent;",
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
    .line 4670
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$34;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$34;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const/16 v1, 0x1389

    invoke-virtual {v0, p1, v1}, Lcom/appsomniacs/da2/DA2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4674
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 4670
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$34;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
