.class Lcom/adcolony/sdk/l$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/adcolony/sdk/l$8;->a:Lcom/adcolony/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 535
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 536
    new-instance v1, Lcom/adcolony/sdk/l$8$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/l$8$1;-><init>(Lcom/adcolony/sdk/l$8;)V

    .line 545
    iget-object v2, p0, Lcom/adcolony/sdk/l$8;->a:Lcom/adcolony/sdk/l;

    invoke-static {v2}, Lcom/adcolony/sdk/l;->g(Lcom/adcolony/sdk/l;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 546
    return-void
.end method
