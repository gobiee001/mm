.class Lcom/appsomniacs/da2/DA2Activity$4;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->showLuminatiOptInDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;

.field final synthetic val$activity:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$4;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$4;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$4;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->clear_selection(Landroid/content/Context;)V

    .line 1114
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1115
    return-void
.end method
