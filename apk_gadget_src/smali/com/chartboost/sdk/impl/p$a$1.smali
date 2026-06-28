.class Lcom/chartboost/sdk/impl/p$a$1;
.super Lcom/chartboost/sdk/impl/ar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/p$a;-><init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/p;

.field final synthetic b:Lcom/chartboost/sdk/impl/p$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/p$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/p$a$1;->a:Lcom/chartboost/sdk/impl/p;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/q;->a(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v3, :cond_1

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/p$a;->c(Z)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a$1;->b:Lcom/chartboost/sdk/impl/p$a;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/p$a;->b(Z)V

    .line 146
    return-void
.end method
