.class Lcom/adcolony/sdk/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/adcolony/sdk/c$12;->a:Lcom/adcolony/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adcolony/sdk/c$12;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/adcolony/sdk/c$12;->a:Lcom/adcolony/sdk/c;

    iget-object v1, p0, Lcom/adcolony/sdk/c$12;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/c;->k(Lcom/adcolony/sdk/af;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/c;->a(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method
