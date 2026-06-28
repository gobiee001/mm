.class final Lcom/appsomniacs/da2/DA2Activity$30;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->initGPGS()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0

    .prologue
    .line 4278
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$30;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4281
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$30;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->access$3500(Lcom/appsomniacs/da2/DA2Activity;)Z

    move-result v0

    .line 4282
    .local v0, "var":Z
    const-string v1, "DA2"

    const-string v2, "Sending call tryInitGPGS() run on ui thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4278
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity$30;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
