.class public Lcom/chartboost/sdk/impl/p;
.super Lcom/chartboost/sdk/impl/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/p$a;
    }
.end annotation


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:I

.field protected E:Lcom/chartboost/sdk/Libraries/h;

.field protected F:Lcom/chartboost/sdk/Libraries/h;

.field protected G:Lcom/chartboost/sdk/Libraries/h;

.field protected H:Lcom/chartboost/sdk/Libraries/h;

.field protected I:Lcom/chartboost/sdk/Libraries/h;

.field protected J:Lcom/chartboost/sdk/Libraries/h;

.field protected K:Lcom/chartboost/sdk/Libraries/h;

.field protected L:Lcom/chartboost/sdk/Libraries/h;

.field protected M:Z

.field protected N:Z

.field protected O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field final q:Lcom/chartboost/sdk/Libraries/f;

.field protected r:I

.field protected s:I

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:I

.field protected w:I

.field x:Lorg/json/JSONObject;

.field protected y:Z

.field protected z:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-direct {p0, p1, p3, p4}, Lcom/chartboost/sdk/impl/o;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 56
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->r:I

    .line 61
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->P:Z

    .line 62
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->v:I

    .line 63
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->w:I

    .line 64
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->Q:Z

    .line 65
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->R:Z

    .line 75
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->C:Z

    .line 76
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->D:I

    .line 87
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->M:Z

    .line 89
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->N:Z

    .line 90
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->O:Z

    .line 576
    iput-object p2, p0, Lcom/chartboost/sdk/impl/p;->q:Lcom/chartboost/sdk/Libraries/f;

    .line 577
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->r:I

    .line 579
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    .line 580
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    .line 581
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    .line 582
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 583
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 584
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 585
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 586
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 588
    iput v1, p0, Lcom/chartboost/sdk/impl/p;->s:I

    .line 589
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p;->Q:Z

    .line 742
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 628
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/o;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 670
    :goto_0
    return v0

    .line 631
    :cond_0
    const-string v2, "ux"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    .line 632
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 633
    new-array v2, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    .line 635
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->d:Lorg/json/JSONObject;

    const-string v3, "video-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->d:Lorg/json/JSONObject;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    :cond_2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->i:Z

    .line 638
    :cond_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "replay-portrait"

    .line 639
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->I:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-click-button"

    .line 640
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-reward-icon"

    .line 641
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-button"

    .line 642
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-button"

    .line 643
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "video-confirmation-icon"

    .line 644
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->L:Lcom/chartboost/sdk/Libraries/h;

    const-string v3, "post-video-reward-icon"

    .line 645
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 646
    :cond_4
    const-string v1, "InterstitialVideoViewProtocol"

    const-string v2, "Error while downloading the assets"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0

    .line 651
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v2, "video-controls-togglable"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->y:Z

    .line 652
    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->N:Z

    .line 653
    const-string v0, "preroll_popup_fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->O:Z

    .line 655
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 656
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 657
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 659
    if-eqz v2, :cond_6

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 660
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->A:Z

    .line 661
    :cond_6
    if-eqz v0, :cond_7

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "color"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 662
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->z:Z

    .line 663
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 664
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->B:Z

    :cond_8
    move v0, v1

    .line 670
    goto/16 :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .locals 2

    .prologue
    .line 597
    new-instance v0, Lcom/chartboost/sdk/impl/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/p$a;-><init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;Lcom/chartboost/sdk/impl/p$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 686
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o;->d()V

    .line 687
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 688
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 689
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->I:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 690
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 691
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 692
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 693
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 694
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 695
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    .line 696
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    .line 697
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 698
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 699
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 700
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    .line 701
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 702
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p;->L:Lcom/chartboost/sdk/Libraries/h;

    .line 703
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/e$a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->G:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->H:Lcom/chartboost/sdk/Libraries/h;

    .line 677
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->z:Z

    .line 681
    :cond_1
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o;->i()V

    .line 682
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/chartboost/sdk/impl/p;->w:I

    int-to-float v0, v0

    return v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/chartboost/sdk/impl/p;->v:I

    int-to-float v0, v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p$a;->d()V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 608
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o;->m()V

    .line 609
    iget v0, p0, Lcom/chartboost/sdk/impl/p;->r:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->P:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->b()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p;->v:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/an$a;->a(I)V

    .line 611
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->e()V

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->P:Z

    .line 615
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o;->n()V

    .line 620
    iget v0, p0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->P:Z

    if-nez v0, :cond_0

    .line 621
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p;->P:Z

    .line 622
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p;->q()Lcom/chartboost/sdk/impl/p$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->g()V

    .line 624
    :cond_0
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 592
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v1, v1, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 706
    iget v1, p0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/chartboost/sdk/impl/p$a;
    .locals 1

    .prologue
    .line 711
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/p$a;

    return-object v0
.end method

.method protected r()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 716
    return-void
.end method

.method protected s()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 719
    .line 720
    iget v2, p0, Lcom/chartboost/sdk/impl/p;->r:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 733
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 726
    :pswitch_1
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/p;->O:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 730
    :pswitch_2
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->Q:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->R:Z

    return v0
.end method

.method public v()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 754
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p;->R:Z

    .line 755
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 756
    return-void
.end method
