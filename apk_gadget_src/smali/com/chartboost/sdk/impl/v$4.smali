.class Lcom/chartboost/sdk/impl/v$4;
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

.field private b:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v;)V
    .locals 1

    .prologue
    .line 347
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/v$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_4

    .line 353
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/an$a;->d()I

    move-result v1

    .line 355
    if-lez v1, :cond_0

    .line 356
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iput v1, v2, Lcom/chartboost/sdk/impl/p;->v:I

    .line 357
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget v2, v2, Lcom/chartboost/sdk/impl/p;->v:I

    int-to-float v2, v2

    .line 358
    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/p;->t()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/p;->r()V

    .line 360
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/p;->a(Z)V

    .line 363
    :cond_0
    int-to-float v2, v1

    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/an$a;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 364
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/p;->M:Z

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->f:Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/r;->a(F)V

    .line 366
    :cond_1
    div-int/lit16 v1, v1, 0x3e8

    .line 368
    iget v2, p0, Lcom/chartboost/sdk/impl/v$4;->b:I

    if-eq v2, v1, :cond_2

    .line 369
    iput v1, p0, Lcom/chartboost/sdk/impl/v$4;->b:I

    .line 370
    div-int/lit8 v2, v1, 0x3c

    .line 371
    rem-int/lit8 v1, v1, 0x3c

    .line 372
    iget-object v3, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p$a;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/impl/p$a;->d(Z)Lcom/chartboost/sdk/impl/ar;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 379
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->h:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v1, v8, v0}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;)V

    .line 380
    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v$4;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/v;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    :cond_4
    return-void
.end method
