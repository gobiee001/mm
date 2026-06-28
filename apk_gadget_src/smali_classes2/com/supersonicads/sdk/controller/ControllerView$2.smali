.class Lcom/supersonicads/sdk/controller/ControllerView$2;
.super Ljava/lang/Object;
.source "ControllerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/supersonicads/sdk/controller/ControllerView;->removeViewFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/ControllerView;


# direct methods
.method constructor <init>(Lcom/supersonicads/sdk/controller/ControllerView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/ControllerView$2;->this$0:Lcom/supersonicads/sdk/controller/ControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerView$2;->this$0:Lcom/supersonicads/sdk/controller/ControllerView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/ControllerView;->access$000(Lcom/supersonicads/sdk/controller/ControllerView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 98
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/supersonicads/sdk/controller/ControllerView$2;->this$0:Lcom/supersonicads/sdk/controller/ControllerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    :cond_0
    return-void
.end method
