.class Lcom/adcolony/sdk/t$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/t$9;->a(Lcom/adcolony/sdk/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/af;

.field final synthetic b:Lcom/adcolony/sdk/t$9;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/t$9;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/adcolony/sdk/t$9$1;->b:Lcom/adcolony/sdk/t$9;

    iput-object p2, p0, Lcom/adcolony/sdk/t$9$1;->a:Lcom/adcolony/sdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/adcolony/sdk/t$9$1;->b:Lcom/adcolony/sdk/t$9;

    iget-object v0, v0, Lcom/adcolony/sdk/t$9;->a:Lcom/adcolony/sdk/t;

    iget-object v1, p0, Lcom/adcolony/sdk/t$9$1;->a:Lcom/adcolony/sdk/af;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/t;->c(Lcom/adcolony/sdk/t;Lcom/adcolony/sdk/af;)Z

    .line 351
    iget-object v0, p0, Lcom/adcolony/sdk/t$9$1;->b:Lcom/adcolony/sdk/t$9;

    iget-object v0, v0, Lcom/adcolony/sdk/t$9;->a:Lcom/adcolony/sdk/t;

    invoke-virtual {v0}, Lcom/adcolony/sdk/t;->b()V

    .line 352
    return-void
.end method
