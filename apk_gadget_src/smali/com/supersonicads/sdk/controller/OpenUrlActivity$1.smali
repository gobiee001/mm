.class Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/OpenUrlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 87
    and-int/lit16 v0, p1, 0x1002

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$000(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$100(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/OpenUrlActivity$1;->this$0:Lcom/supersonicads/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/OpenUrlActivity;->access$000(Lcom/supersonicads/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method
