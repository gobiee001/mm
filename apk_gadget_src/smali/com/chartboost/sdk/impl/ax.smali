.class public Lcom/chartboost/sdk/impl/ax;
.super Lcom/chartboost/sdk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ax$a;,
        Lcom/chartboost/sdk/impl/ax$b;
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:Z

.field H:I

.field private final I:Lcom/chartboost/sdk/Libraries/f;

.field private final J:Lcom/chartboost/sdk/impl/ab;

.field private K:Ljava/lang/String;

.field private L:F

.field private M:F

.field private N:Z

.field private O:I

.field final j:Lcom/chartboost/sdk/Tracking/a;

.field final k:Lcom/chartboost/sdk/d;

.field final l:Landroid/content/SharedPreferences;

.field public m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field protected o:I

.field p:J

.field q:J

.field r:Z

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    invoke-direct {p0, p1, p6, p7}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 58
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;

    .line 60
    iput-object v5, p0, Lcom/chartboost/sdk/impl/ax;->K:Ljava/lang/String;

    .line 61
    iput-object v5, p0, Lcom/chartboost/sdk/impl/ax;->n:Ljava/lang/String;

    .line 62
    iput v4, p0, Lcom/chartboost/sdk/impl/ax;->o:I

    .line 64
    iput v1, p0, Lcom/chartboost/sdk/impl/ax;->L:F

    .line 65
    iput v1, p0, Lcom/chartboost/sdk/impl/ax;->M:F

    .line 67
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ax;->N:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/ax;->p:J

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/ax;->q:J

    .line 70
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ax;->r:Z

    .line 73
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->s:I

    .line 74
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->t:I

    .line 75
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->u:I

    .line 76
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    .line 78
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->w:I

    .line 80
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    .line 81
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    .line 82
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->z:I

    .line 83
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->A:I

    .line 85
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->B:I

    .line 86
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->C:I

    .line 87
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->D:I

    .line 88
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->E:I

    .line 90
    iput v3, p0, Lcom/chartboost/sdk/impl/ax;->F:I

    .line 91
    iput-boolean v4, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    .line 92
    iput v3, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    .line 94
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->O:I

    .line 185
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ax;->I:Lcom/chartboost/sdk/Libraries/f;

    .line 186
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ax;->J:Lcom/chartboost/sdk/impl/ab;

    .line 187
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    .line 188
    iput-object p8, p0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/d;

    .line 189
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ax;->l:Landroid/content/SharedPreferences;

    .line 190
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window;)I
    .locals 1

    .prologue
    .line 439
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    packed-switch p1, :pswitch_data_0

    .line 343
    const-string v0, "error"

    :goto_0
    return-object v0

    .line 340
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 341
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "none"

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 593
    iput p1, p0, Lcom/chartboost/sdk/impl/ax;->M:F

    .line 594
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->I:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v1

    iget-object v1, v1, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 201
    if-nez v1, :cond_0

    .line 202
    const-string v1, "CBWebViewProtocol"

    const-string v2, "External Storage path is unavailable or media not mounted"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 220
    :goto_0
    return v0

    .line 207
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ax;->n:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Invalid adId being passed in the response"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->o:Ljava/lang/String;

    .line 214
    if-nez v1, :cond_2

    .line 215
    const-string v1, "CBWebViewProtocol"

    const-string v2, "No html data found in memory"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 219
    :cond_2
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ax;->K:Ljava/lang/String;

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/chartboost/sdk/impl/ax$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->K:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/ax$b;-><init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 597
    iput p1, p0, Lcom/chartboost/sdk/impl/ax;->L:F

    .line 598
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 584
    iput p1, p0, Lcom/chartboost/sdk/impl/ax;->O:I

    .line 585
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    new-instance v2, Lcom/chartboost/sdk/impl/x;

    const-string v3, "POST"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/chartboost/sdk/impl/x;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;)V

    .line 235
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ax;->J:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 237
    const-string v2, "CBWebViewProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Sending VAST Tracking Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 409
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/chartboost/sdk/impl/ax;->s:I

    .line 410
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->t:I

    .line 411
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 358
    const-string v0, "allowOrientationChange"

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    .line 359
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    .line 360
    const-string v0, "forceOrientation"

    iget v1, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    .line 362
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ax;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    .line 363
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->q()V

    .line 364
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_3

    .line 564
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "CBWebViewProtocol"

    const-string v2, "Destroying the webview object and cleaning up the references"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/aw;->destroy()V

    .line 567
    iput-object v3, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    .line 569
    :cond_0
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->d:Lcom/chartboost/sdk/impl/av;

    if-eqz v1, :cond_1

    .line 570
    iput-object v3, v0, Lcom/chartboost/sdk/impl/ax$b;->d:Lcom/chartboost/sdk/impl/av;

    .line 571
    :cond_1
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 572
    iput-object v3, v0, Lcom/chartboost/sdk/impl/ax$b;->e:Landroid/widget/RelativeLayout;

    .line 573
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 574
    iput-object v3, v0, Lcom/chartboost/sdk/impl/ax$b;->f:Landroid/widget/RelativeLayout;

    .line 576
    :cond_3
    invoke-super {p0}, Lcom/chartboost/sdk/e;->d()V

    .line 577
    return-void
.end method

.method d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 415
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 419
    check-cast v0, Landroid/app/Activity;

    .line 420
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 421
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 422
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->a(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->w:I

    .line 425
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->s:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->t:I

    if-nez v0, :cond_3

    .line 426
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ax;->c(Landroid/content/Context;)V

    .line 429
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 430
    iget v1, p0, Lcom/chartboost/sdk/impl/ax;->t:I

    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->w:I

    sub-int/2addr v1, v2

    .line 432
    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->u:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    if-eq v1, v2, :cond_0

    .line 433
    :cond_4
    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->u:I

    .line 434
    iput v1, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 248
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "Unknown Webview error"

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview error occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 252
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->h()V

    .line 253
    return-void

    :cond_0
    move-object v4, p1

    .line 248
    goto :goto_0
.end method

.method public synthetic e()Lcom/chartboost/sdk/e$a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Unknown Webview warning message"

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "CBWebViewProtocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview warning occurred closing the webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 349
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    .line 351
    :cond_0
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Lcom/chartboost/sdk/e;->h()V

    .line 225
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->r()V

    .line 226
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->L:F

    return v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->M:F

    return v0
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 499
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v0, v2, :cond_0

    .line 507
    :goto_0
    return v2

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->d()V

    .line 506
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->h()V

    goto :goto_0
.end method

.method public m()V
    .locals 3

    .prologue
    .line 512
    invoke-super {p0}, Lcom/chartboost/sdk/e;->m()V

    .line 513
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/ax$1;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/ax$1;-><init>(Lcom/chartboost/sdk/impl/ax;Lcom/chartboost/sdk/impl/ax$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .prologue
    .line 535
    invoke-super {p0}, Lcom/chartboost/sdk/e;->n()V

    .line 536
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/chartboost/sdk/impl/ax$b;->c:Lcom/chartboost/sdk/impl/aw;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/ax$2;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/ax$2;-><init>(Lcom/chartboost/sdk/impl/ax;Lcom/chartboost/sdk/impl/ax$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/ax;->r:Z

    if-nez v1, :cond_1

    .line 300
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->B:I

    .line 301
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->C:I

    .line 302
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->z:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->D:I

    .line 303
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->A:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->E:I

    .line 327
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 309
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax$b;->getLocationOnScreen([I)V

    .line 310
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 311
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 312
    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->w:I

    sub-int/2addr v1, v3

    .line 313
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax$b;->getWidth()I

    move-result v3

    .line 314
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax$b;->getHeight()I

    move-result v0

    .line 316
    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    .line 317
    iput v1, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    .line 318
    add-int/2addr v2, v3

    iput v2, p0, Lcom/chartboost/sdk/impl/ax;->z:I

    .line 319
    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->A:I

    .line 322
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->B:I

    .line 323
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->C:I

    .line 324
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->z:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->D:I

    .line 325
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->A:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->E:I

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "allowOrientationChange"

    iget-boolean v3, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    .line 332
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "forceOrientation"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    .line 333
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/ax;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 331
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 335
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method q()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 368
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v3

    .line 369
    if-nez v3, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    if-ne v2, v0, :cond_2

    .line 389
    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 376
    :cond_2
    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    if-nez v2, :cond_3

    move v0, v1

    .line 377
    goto :goto_1

    .line 379
    :cond_3
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    if-eqz v2, :cond_4

    .line 380
    const/4 v0, -0x1

    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 383
    if-ne v2, v0, :cond_5

    move v2, v0

    .line 385
    :goto_2
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 383
    goto :goto_2
.end method

.method r()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->b:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/ax;->F:I

    if-eq v1, v2, :cond_1

    .line 400
    iget v1, p0, Lcom/chartboost/sdk/impl/ax;->F:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 403
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ax;->G:Z

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->H:I

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->u:I

    .line 447
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 446
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 449
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    .line 449
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 4

    .prologue
    .line 457
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->s:I

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->t:I

    .line 459
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 457
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 460
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    .line 460
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->o()V

    .line 471
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    .line 472
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    .line 473
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->z:I

    .line 474
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->A:I

    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 471
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 477
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->o()V

    .line 488
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->B:I

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->C:I

    .line 490
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->D:I

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    iget v3, p0, Lcom/chartboost/sdk/impl/ax;->E:I

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 488
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 494
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 553
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->o:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 555
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->o:I

    .line 557
    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public y()Lcom/chartboost/sdk/impl/ax$b;
    .locals 1

    .prologue
    .line 589
    invoke-super {p0}, Lcom/chartboost/sdk/e;->e()Lcom/chartboost/sdk/e$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ax$b;

    return-object v0
.end method

.method public z()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 610
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ax;->N:Z

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->j:Lcom/chartboost/sdk/Tracking/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->p()V

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ax;->N:Z

    .line 616
    :cond_0
    return-void
.end method
