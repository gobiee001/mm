.class abstract Lcom/moat/analytics/mobile/mpub/g;
.super Lcom/moat/analytics/mobile/mpub/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/moat/analytics/mobile/mpub/c",
        "<TPlayerOrIMAAd;>;"
    }
.end annotation


# instance fields
.field k:I

.field private l:Lcom/moat/analytics/mobile/mpub/g$a;

.field private m:I

.field private n:D

.field private o:I

.field private p:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/c;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->o:I

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->k:I

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/g;->n:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->p:I

    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->a:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    return-void
.end method

.method private k()V
    .locals 4

    new-instance v0, Lcom/moat/analytics/mobile/mpub/g$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/g$1;-><init>(Lcom/moat/analytics/mobile/mpub/g;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->g:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)Lorg/json/JSONObject;
    .locals 4

    const/high16 v3, -0x80000000

    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    :goto_0
    iget-object v1, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->d:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    if-lez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    :cond_1
    iget-object v1, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->d:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/moat/analytics/mobile/mpub/g;->k:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/moat/analytics/mobile/mpub/g;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/mpub/g;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->d:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->d:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/mpub/c;->a(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/g;->g()Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    iput-object v0, p1, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;->b:Ljava/lang/Integer;

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->e:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    goto :goto_1
.end method

.method public a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TPlayerOrIMAAd;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/g;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/mpub/c;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract g()Ljava/lang/Integer;
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()Ljava/lang/Integer;
.end method

.method j()Z
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/g;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    if-ltz v0, :cond_2

    if-ltz v4, :cond_0

    :cond_2
    iput v4, p0, Lcom/moat/analytics/mobile/mpub/g;->m:I

    if-nez v4, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/g;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/g;->h()Z

    move-result v5

    int-to-double v6, v0

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/p;->a()D

    move-result-wide v8

    const/4 v1, 0x0

    iget v10, p0, Lcom/moat/analytics/mobile/mpub/g;->o:I

    if-le v4, v10, :cond_4

    iput v4, p0, Lcom/moat/analytics/mobile/mpub/g;->o:I

    :cond_4
    iget v10, p0, Lcom/moat/analytics/mobile/mpub/g;->k:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_5

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->k:I

    :cond_5
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v5, Lcom/moat/analytics/mobile/mpub/g$a;->a:Lcom/moat/analytics/mobile/mpub/g$a;

    if-ne v0, v5, :cond_9

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->c:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    :cond_6
    :goto_1
    if-eqz v1, :cond_c

    move v0, v2

    :goto_2
    if-nez v0, :cond_7

    iget-wide v6, p0, Lcom/moat/analytics/mobile/mpub/g;->n:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v6, p0, Lcom/moat/analytics/mobile/mpub/g;->n:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v10

    if-lez v5, :cond_7

    sget-object v0, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    move-object v1, v0

    move v0, v2

    :cond_7
    if-eqz v0, :cond_8

    new-instance v0, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/mpub/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/mpub/g;->dispatchEvent(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)V

    :cond_8
    iput-wide v8, p0, Lcom/moat/analytics/mobile/mpub/g;->n:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/g;->p:I

    move v3, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v5, Lcom/moat/analytics/mobile/mpub/g$a;->b:Lcom/moat/analytics/mobile/mpub/g$a;

    if-ne v0, v5, :cond_a

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->c:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/g;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/mpub/g;->p:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    move v0, v2

    :goto_3
    move v3, v0

    goto/16 :goto_0

    :cond_a
    int-to-double v10, v4

    div-double v6, v10, v6

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, -0x1

    const/4 v5, -0x1

    if-le v0, v5, :cond_e

    const/4 v5, 0x3

    if-ge v0, v5, :cond_e

    sget-object v5, Lcom/moat/analytics/mobile/mpub/g;->e:[Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    aget-object v0, v5, v0

    iget-object v5, p0, Lcom/moat/analytics/mobile/mpub/g;->f:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/g;->f:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v1, v0

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;

    sget-object v5, Lcom/moat/analytics/mobile/mpub/g$a;->b:Lcom/moat/analytics/mobile/mpub/g$a;

    if-eq v0, v5, :cond_6

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    sget-object v0, Lcom/moat/analytics/mobile/mpub/g$a;->b:Lcom/moat/analytics/mobile/mpub/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/g;->l:Lcom/moat/analytics/mobile/mpub/g$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    move v0, v3

    goto/16 :goto_2

    :cond_d
    move v0, v3

    goto :goto_3

    :cond_e
    move-object v0, v1

    goto :goto_4
.end method

.method public stopTracking()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/mpub/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/mpub/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/mpub/g;->dispatchEvent(Lcom/moat/analytics/mobile/mpub/MoatAdEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
