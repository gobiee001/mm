.class Lcom/chartboost/sdk/impl/v$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->b:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->M:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/r;->setVisibility(I)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->c:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$3;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->d:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 296
    :cond_2
    return-void
.end method
