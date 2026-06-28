.class Lcom/adcolony/sdk/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/u;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/u;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/u;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adcolony/sdk/u$2;->a:Lcom/adcolony/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adcolony/sdk/u$2;->a:Lcom/adcolony/sdk/u;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/adcolony/sdk/u$2;->a:Lcom/adcolony/sdk/u;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u;->b(Lcom/adcolony/sdk/af;)V

    .line 158
    :cond_0
    return-void
.end method
