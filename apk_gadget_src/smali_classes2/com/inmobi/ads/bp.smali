.class public final Lcom/inmobi/ads/bp;
.super Ljava/lang/Object;
.source "VastResponse.java"

# interfaces
.implements Lcom/inmobi/ads/bq;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bo;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bm;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/inmobi/ads/bm;

.field private i:Lcom/inmobi/ads/b$g;

.field private j:Lcom/inmobi/ads/bo;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/b$g;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/bp;->j:Lcom/inmobi/ads/bo;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->d:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->e:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/inmobi/ads/bp;->i:Lcom/inmobi/ads/b$g;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/bp;->f:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/b$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bm;",
            ">;",
            "Lcom/inmobi/ads/b$g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p4, p6}, Lcom/inmobi/ads/bp;-><init>(Ljava/util/List;Lcom/inmobi/ads/b$g;)V

    .line 55
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->e:Ljava/util/List;

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    new-instance v1, Lcom/inmobi/ads/bo;

    invoke-direct {v1, p1}, Lcom/inmobi/ads/bo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object p2, p0, Lcom/inmobi/ads/bp;->b:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/inmobi/ads/bp;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/inmobi/ads/b$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;",
            "Lcom/inmobi/ads/b$g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/inmobi/ads/bp;-><init>(Lcom/inmobi/ads/b$g;)V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->d:Ljava/util/List;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inmobi/ads/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method final a(Lcom/inmobi/ads/NativeTracker;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/ads/bp;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public final a(Lcom/inmobi/ads/bm;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/inmobi/ads/bp;->h:Lcom/inmobi/ads/bm;

    .line 150
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v8, 0x100000

    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 77
    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/inmobi/ads/bp;->i:Lcom/inmobi/ads/b$g;

    .line 1799
    iget-wide v6, v1, Lcom/inmobi/ads/b$g;->b:J

    .line 77
    div-long/2addr v6, v8

    mul-long/2addr v2, v6

    long-to-double v6, v2

    .line 78
    iget-object v1, p0, Lcom/inmobi/ads/bp;->i:Lcom/inmobi/ads/b$g;

    .line 1803
    iget-wide v2, v1, Lcom/inmobi/ads/b$g;->c:J

    .line 78
    div-long/2addr v2, v8

    long-to-double v8, v2

    move-object v1, v0

    move-object v2, v0

    .line 79
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bo;

    .line 81
    iget-object v3, p0, Lcom/inmobi/ads/bp;->b:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 83
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/4 v10, 0x2

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v3, v4

    .line 88
    :goto_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 2034
    iget v4, v0, Lcom/inmobi/ads/bo;->b:I

    .line 88
    int-to-double v12, v4

    mul-double/2addr v10, v12

    int-to-double v12, v3

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x40c0000000000000L    # 8192.0

    div-double/2addr v10, v12

    .line 2038
    iput-wide v10, v0, Lcom/inmobi/ads/bo;->c:D

    .line 92
    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-lez v3, :cond_2

    cmpg-double v3, v10, v6

    if-gtz v3, :cond_2

    .line 93
    if-nez v2, :cond_1

    move-object v2, v0

    .line 94
    goto :goto_1

    .line 84
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v10

    new-instance v11, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v11, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    .line 2042
    :cond_1
    iget-wide v12, v2, Lcom/inmobi/ads/bo;->c:D

    .line 96
    cmpl-double v3, v10, v12

    if-lez v3, :cond_7

    move-object v2, v0

    .line 97
    goto :goto_1

    .line 100
    :cond_2
    cmpl-double v3, v10, v6

    if-lez v3, :cond_7

    cmpg-double v3, v10, v8

    if-gtz v3, :cond_7

    .line 101
    if-nez v1, :cond_3

    move-object v1, v0

    .line 102
    goto :goto_1

    .line 3042
    :cond_3
    iget-wide v12, v1, Lcom/inmobi/ads/bo;->c:D

    .line 104
    cmpg-double v3, v10, v12

    if-gez v3, :cond_7

    :goto_3
    move-object v1, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    if-eqz v2, :cond_6

    .line 111
    iput-object v2, p0, Lcom/inmobi/ads/bp;->j:Lcom/inmobi/ads/bo;

    .line 4022
    iget-object v0, v2, Lcom/inmobi/ads/bo;->a:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    .line 117
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 113
    :cond_6
    if-eqz v1, :cond_5

    .line 114
    iput-object v1, p0, Lcom/inmobi/ads/bp;->j:Lcom/inmobi/ads/bo;

    .line 5022
    iget-object v0, v1, Lcom/inmobi/ads/bo;->a:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/inmobi/ads/bp;->g:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/inmobi/ads/bp;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/bp;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/inmobi/ads/bp;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Lcom/inmobi/ads/bm;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/bp;->h:Lcom/inmobi/ads/bm;

    return-object v0
.end method
