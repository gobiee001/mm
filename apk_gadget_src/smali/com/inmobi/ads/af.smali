.class public Lcom/inmobi/ads/af;
.super Ljava/lang/Object;
.source "NativeAssetStyle.java"


# instance fields
.field public a:Landroid/graphics/Point;

.field b:Landroid/graphics/Point;

.field c:Landroid/graphics/Point;

.field d:Landroid/graphics/Point;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:F

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/inmobi/ads/av;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 89
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->b:Landroid/graphics/Point;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->d:Landroid/graphics/Point;

    .line 91
    const-string v0, "none"

    iput-object v0, p0, Lcom/inmobi/ads/af;->e:Ljava/lang/String;

    .line 92
    const-string v0, "straight"

    iput-object v0, p0, Lcom/inmobi/ads/af;->f:Ljava/lang/String;

    .line 93
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/af;->h:F

    .line 94
    const-string v0, "#ff000000"

    iput-object v0, p0, Lcom/inmobi/ads/af;->i:Ljava/lang/String;

    .line 95
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/ads/af;->j:Ljava/lang/String;

    .line 96
    const-string v0, "fill"

    iput-object v0, p0, Lcom/inmobi/ads/af;->g:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/af;->k:Lcom/inmobi/ads/av;

    .line 98
    return-void
.end method

.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V
    .locals 15

    .prologue
    .line 108
    const-string v9, "fill"

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/inmobi/ads/af;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V

    .line 113
    return-void
.end method

.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->a:Landroid/graphics/Point;

    .line 124
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p7, p8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->b:Landroid/graphics/Point;

    .line 125
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->c:Landroid/graphics/Point;

    .line 126
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p5, p6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/af;->d:Landroid/graphics/Point;

    .line 127
    iput-object p10, p0, Lcom/inmobi/ads/af;->e:Ljava/lang/String;

    .line 128
    iput-object p11, p0, Lcom/inmobi/ads/af;->f:Ljava/lang/String;

    .line 129
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/af;->h:F

    .line 130
    iput-object p9, p0, Lcom/inmobi/ads/af;->g:Ljava/lang/String;

    .line 131
    invoke-virtual {p12}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p12, "#ff000000"

    :cond_0
    iput-object p12, p0, Lcom/inmobi/ads/af;->i:Ljava/lang/String;

    .line 132
    invoke-virtual {p13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p13, "#00000000"

    :cond_1
    iput-object p13, p0, Lcom/inmobi/ads/af;->j:Ljava/lang/String;

    .line 133
    iput-object p14, p0, Lcom/inmobi/ads/af;->k:Lcom/inmobi/ads/av;

    .line 134
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/inmobi/ads/af;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/af;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/inmobi/ads/af;->h:F

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/ads/af;->i:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/ads/af;->j:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/af;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/inmobi/ads/av;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/af;->k:Lcom/inmobi/ads/av;

    return-object v0
.end method
