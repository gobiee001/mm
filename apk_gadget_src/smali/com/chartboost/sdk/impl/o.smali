.class public Lcom/chartboost/sdk/impl/o;
.super Lcom/chartboost/sdk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/o$a;
    }
.end annotation


# instance fields
.field j:Lcom/chartboost/sdk/Libraries/h;

.field k:Lcom/chartboost/sdk/Libraries/h;

.field l:Lcom/chartboost/sdk/Libraries/h;

.field m:Lcom/chartboost/sdk/Libraries/h;

.field n:Lcom/chartboost/sdk/Libraries/h;

.field o:Lcom/chartboost/sdk/Libraries/h;

.field protected p:F

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 32
    const-string v0, "ImageViewProtocol"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->q:Ljava/lang/String;

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/o;->p:F

    .line 226
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 227
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 228
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 229
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 230
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 231
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 232
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V
    .locals 2

    .prologue
    .line 279
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/chartboost/sdk/e;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return v0

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    :cond_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o;->h:Z

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    :cond_3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o;->i:Z

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "ad-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o;->h:Z

    .line 251
    :cond_5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const-string v2, "ad-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/o;->i:Z

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "frame-portrait"

    .line 255
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "close-landscape"

    .line 256
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "close-portrait"

    .line 257
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "ad-landscape"

    .line 258
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "ad-portrait"

    .line 259
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 260
    :cond_7
    const-string v1, "ImageViewProtocol"

    const-string v2, "Error while downloading the assets"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/o;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0

    .line 264
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->d:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    const-string v3, "offset"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_0

    .line 270
    new-instance v0, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lcom/chartboost/sdk/impl/o$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/o$a;-><init>(Lcom/chartboost/sdk/impl/o;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-super {p0}, Lcom/chartboost/sdk/e;->d()V

    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 294
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 295
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 296
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 297
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 298
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 299
    iput-object v1, p0, Lcom/chartboost/sdk/impl/o;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 300
    return-void
.end method
