.class Lcom/adcolony/sdk/bb$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bb;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bb;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bb;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/adcolony/sdk/bb$5;->a:Lcom/adcolony/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adcolony/sdk/bb$5;->a:Lcom/adcolony/sdk/bb;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/adcolony/sdk/bb$5;->a:Lcom/adcolony/sdk/bb;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bb;->c(Lcom/adcolony/sdk/af;)V

    .line 373
    :cond_0
    return-void
.end method
