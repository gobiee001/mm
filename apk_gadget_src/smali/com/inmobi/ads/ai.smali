.class public Lcom/inmobi/ads/ai;
.super Ljava/lang/Object;
.source "NativeDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ai$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field a:I

.field public b:Z

.field public c:Z

.field public d:Lcom/inmobi/ads/ag;

.field e:Lorg/json/JSONArray;

.field final f:Lcom/inmobi/ads/ai;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/NativeAsset$AssetType;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Lcom/inmobi/ads/ai$a;

.field j:Z

.field k:Lcom/inmobi/ads/ba;

.field private m:Lorg/json/JSONObject;

.field private n:Lorg/json/JSONObject;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/inmobi/ads/bp;

.field private r:Lcom/inmobi/ads/b$g;

.field private s:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ai;->l:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    .line 265
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V
    .locals 7

    .prologue
    .line 277
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;B)V

    .line 278
    return-void
.end method

.method private constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/inmobi/ads/ai;->s:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 286
    iput-object p3, p0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    .line 287
    if-nez p4, :cond_0

    new-instance p4, Lcom/inmobi/ads/b$g;

    invoke-direct {p4}, Lcom/inmobi/ads/b$g;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/inmobi/ads/ai;->r:Lcom/inmobi/ads/b$g;

    .line 288
    iput-object p2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    .line 289
    iput v0, p0, Lcom/inmobi/ads/ai;->a:I

    .line 290
    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->b:Z

    .line 291
    iput-object p5, p0, Lcom/inmobi/ads/ai;->q:Lcom/inmobi/ads/bp;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/Map;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    .line 295
    new-instance v0, Lcom/inmobi/ads/ai$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ai$a;-><init>(Lcom/inmobi/ads/ai;)V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 296
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->f()V

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V
    .locals 6

    .prologue
    .line 270
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 271
    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 784
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 786
    const/4 v0, 0x0

    .line 791
    :goto_1
    :pswitch_0
    return v0

    .line 784
    :sswitch_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "companion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 791
    goto :goto_1

    .line 784
    nop

    :sswitch_data_0
    .sparse-switch
        -0x54361cf4 -> :sswitch_2
        0x0 -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONObject;Z)I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v6, -0x1

    .line 1690
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/ads/ai;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1691
    if-eqz p1, :cond_0

    const-string v0, "delay"

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 1718
    :goto_1
    return v0

    .line 1691
    :cond_0
    const-string v0, "hideAfterDelay"

    goto :goto_0

    .line 1694
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "delay"

    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1695
    const/4 v0, 0x3

    invoke-static {p0}, Lcom/inmobi/ads/ai;->l(Lorg/json/JSONObject;)I

    move-result v1

    if-ne v0, v1, :cond_3

    move v0, v7

    .line 1696
    goto :goto_1

    .line 1694
    :cond_2
    const-string v0, "hideAfterDelay"

    goto :goto_2

    .line 1697
    :cond_3
    invoke-static {p0}, Lcom/inmobi/ads/ai;->l(Lorg/json/JSONObject;)I

    move-result v0

    if-ne v10, v0, :cond_6

    .line 1698
    if-lez v7, :cond_5

    const/16 v0, 0x64

    if-gt v7, v0, :cond_5

    .line 1699
    const/4 v0, 0x4

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 1701
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1702
    const/4 v4, 0x0

    move v5, v6

    :goto_3
    if-ge v4, v10, :cond_4

    .line 1703
    aget v0, v8, v4

    .line 1704
    sub-int v1, v7, v0

    sub-int v0, v7, v0

    mul-int/2addr v0, v1

    int-to-double v0, v0

    .line 1705
    cmpg-double v9, v0, v2

    if-gez v9, :cond_7

    move v2, v4

    .line 1702
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_3

    .line 1710
    :cond_4
    aget v0, v8, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    move v0, v6

    .line 1712
    goto :goto_1

    :cond_6
    move v0, v6

    .line 1714
    goto :goto_1

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v0, v6

    .line 1718
    goto :goto_1

    :cond_7
    move-wide v0, v2

    move v2, v5

    goto :goto_4

    .line 1699
    nop

    :array_0
    .array-data 4
        0x19
        0x32
        0x4b
        0x64
    .end array-data
.end method

.method private a(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1624
    const/4 v1, 0x0

    .line 1626
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1627
    const-string v0, "finalGeometry"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    :goto_0
    return-object p2

    .line 1629
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    :try_start_1
    const-string v1, "finalGeometry"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1631
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 32765
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v2

    .line 1631
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1632
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 33765
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v1

    .line 1632
    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object p2, v0

    .line 1636
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 760
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 761
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 778
    :goto_1
    return-object v0

    .line 763
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 764
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    .line 765
    if-nez v0, :cond_2

    .line 16326
    iget-object p0, p0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    goto :goto_0

    .line 769
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_1

    .line 771
    :cond_3
    array-length v1, v2

    if-ne v4, v1, :cond_4

    .line 772
    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeAsset;->e(I)V

    goto :goto_1

    .line 776
    :cond_4
    aget-object v1, v2, v4

    invoke-static {v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->e(I)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referenced asset ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    .locals 34
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 879
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 880
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->e(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    .line 881
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/ai;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 883
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeAsset$AssetType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 885
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Asset style JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 886
    const/4 v4, 0x0

    .line 1233
    :goto_0
    return-object v4

    .line 889
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/ai;->j(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v5

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 891
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/ai;->k(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v6

    .line 892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/ai;->b(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    .line 893
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v15

    .line 895
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->l(Lorg/json/JSONObject;)I

    move-result v29

    .line 896
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Z)I

    move-result v30

    .line 897
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Z)I

    move-result v31

    .line 898
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->m(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v32

    .line 900
    const/4 v11, 0x0

    .line 901
    const/4 v10, 0x0

    .line 902
    const-string v14, ""

    .line 904
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 18003
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    const/4 v4, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 18006
    const/4 v4, 0x0

    .line 905
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->o(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v16

    .line 906
    if-eqz v16, :cond_29

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-eqz v17, :cond_29

    .line 908
    const/16 v17, 0x0

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 909
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_28

    .line 910
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 911
    if-nez v4, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    if-eqz v10, :cond_2

    .line 912
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    invoke-virtual {v10, v14}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    :cond_2
    :goto_3
    move-object/from16 v26, v14

    move-object v10, v4

    .line 920
    :goto_4
    :try_start_2
    sget-object v4, Lcom/inmobi/ads/ai$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/ads/NativeAsset$AssetType;->ordinal()I

    move-result v14

    aget v4, v4, v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v4, :pswitch_data_1

    :cond_3
    :goto_5
    move-object v5, v11

    .line 1210
    :goto_6
    if-eqz v5, :cond_6

    .line 1211
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/inmobi/ads/NativeAsset;->f(I)V

    .line 1212
    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    .line 1213
    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/inmobi/ads/NativeAsset;->h(I)V

    .line 1214
    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/inmobi/ads/NativeAsset;->b(Ljava/lang/String;)V

    .line 1216
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->p:Ljava/util/Map;

    move-object/from16 v0, v32

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v4, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_7
    move-object v4, v5

    .line 1233
    goto/16 :goto_0

    .line 18003
    :sswitch_0
    const-string v17, "absolute"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v17, "reference"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 18008
    :pswitch_0
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 915
    :catch_0
    move-exception v4

    move-object/from16 v33, v14

    move-object v14, v10

    move-object/from16 v10, v33

    .line 916
    :goto_8
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v16

    new-instance v17, Lcom/inmobi/commons/core/d/b;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual/range {v16 .. v17}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move-object/from16 v26, v10

    move-object v10, v14

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v4, p0

    .line 922
    :try_start_3
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;

    move-result-object v7

    .line 924
    const/4 v4, 0x0

    .line 925
    const/4 v8, 0x0

    .line 926
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->p(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 927
    const/4 v8, 0x2

    .line 928
    const-string v5, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "openMode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 929
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {v4}, Lcom/inmobi/ads/ai;->c(Ljava/lang/String;)I

    move-result v8

    .line 931
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 18760
    const-string v5, "fallbackUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    .line 935
    :goto_9
    const/4 v10, 0x0

    .line 936
    const-string v4, "transitionEffect"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 937
    const-string v4, "transitionEffect"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18991
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_7
    :goto_a
    packed-switch v4, :pswitch_data_2

    .line 18994
    const/4 v4, 0x0

    :goto_b
    move v10, v4

    .line 940
    :cond_8
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d

    .line 941
    :cond_9
    new-instance v4, Lcom/inmobi/ads/ag;

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/ads/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;ILorg/json/JSONObject;I)V

    move-object v11, v4

    .line 949
    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/ag;->a(Ljava/lang/String;)V

    .line 950
    if-eqz v19, :cond_a

    .line 951
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/ag;->e(Ljava/lang/String;)V

    .line 953
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset;Lorg/json/JSONObject;)V

    .line 955
    const-string v4, "assetValue"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 956
    const/4 v4, 0x0

    move v5, v4

    :goto_d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_10

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".assetValue["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 959
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 961
    invoke-static {v8}, Lcom/inmobi/ads/ai;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 19865
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v4, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_2

    :cond_b
    :goto_e
    packed-switch v4, :pswitch_data_3

    .line 19868
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeAsset$AssetType;

    .line 960
    :goto_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4, v7}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v4

    .line 964
    if-nez v4, :cond_e

    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Cannot build asset from JSON: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 956
    :cond_c
    :goto_10
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_d

    .line 18991
    :sswitch_2
    const-string v6, "paged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_a

    :sswitch_3
    const-string v6, "free"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x2

    goto/16 :goto_a

    .line 18996
    :pswitch_2
    const/4 v4, 0x1

    goto/16 :goto_b

    .line 945
    :cond_d
    new-instance v11, Lcom/inmobi/ads/ag;

    move-object v14, v7

    move/from16 v16, v8

    move-object/from16 v17, p1

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/inmobi/ads/ag;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/util/List;ILorg/json/JSONObject;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_c

    .line 1205
    :catch_1
    move-exception v4

    .line 1206
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v5

    new-instance v6, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v6, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1207
    const/4 v11, 0x0

    move-object v5, v11

    goto/16 :goto_6

    .line 19865
    :sswitch_4
    :try_start_4
    const-string v10, "container"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x1

    goto :goto_e

    :sswitch_5
    const-string v10, "icon"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x2

    goto :goto_e

    :sswitch_6
    const-string v10, "image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x3

    goto :goto_e

    :sswitch_7
    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x4

    goto :goto_e

    :sswitch_8
    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x5

    goto/16 :goto_e

    :sswitch_9
    const-string v10, "cta"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x6

    goto/16 :goto_e

    :sswitch_a
    const-string v10, "rating"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v4, 0x7

    goto/16 :goto_e

    :sswitch_b
    const-string v10, "timer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v4, 0x8

    goto/16 :goto_e

    :sswitch_c
    const-string v10, "webview"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v4, 0x9

    goto/16 :goto_e

    :sswitch_d
    const-string v10, "gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v4, 0xa

    goto/16 :goto_e

    .line 19870
    :pswitch_3
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19872
    :pswitch_4
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19874
    :pswitch_5
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19876
    :pswitch_6
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19878
    :pswitch_7
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19880
    :pswitch_8
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19882
    :pswitch_9
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19884
    :pswitch_a
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 19886
    :pswitch_b
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_GIF:Lcom/inmobi/ads/NativeAsset$AssetType;

    goto/16 :goto_f

    .line 967
    :cond_e
    invoke-virtual {v4, v7}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v4, v11}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeAsset;)V

    .line 20080
    iget v7, v11, Lcom/inmobi/ads/ag;->C:I

    const/16 v8, 0x10

    if-ge v7, v8, :cond_c

    .line 20081
    iget v7, v11, Lcom/inmobi/ads/ag;->C:I

    iget-object v8, v11, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    array-length v8, v8

    if-ne v7, v8, :cond_f

    iget-object v7, v11, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    .line 20111
    new-array v7, v7, [Lcom/inmobi/ads/NativeAsset;

    .line 20112
    iget-object v8, v11, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v13, v11, Lcom/inmobi/ads/ag;->C:I

    invoke-static {v8, v9, v7, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20113
    iput-object v7, v11, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    .line 20082
    :cond_f
    iget-object v7, v11, Lcom/inmobi/ads/ag;->B:[Lcom/inmobi/ads/NativeAsset;

    iget v8, v11, Lcom/inmobi/ads/ag;->C:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v11, Lcom/inmobi/ads/ag;->C:I

    aput-object v4, v7, v8

    goto/16 :goto_10

    :cond_10
    move-object v5, v11

    .line 973
    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v4, p0

    .line 977
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/au$a;

    move-result-object v4

    .line 979
    new-instance v11, Lcom/inmobi/ads/au;

    move-object/from16 v0, v26

    invoke-direct {v11, v12, v13, v4, v0}, Lcom/inmobi/ads/au;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    move-object v5, v11

    .line 984
    goto/16 :goto_6

    :pswitch_d
    move-object/from16 v4, p0

    .line 988
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;

    move-result-object v4

    .line 990
    new-instance v11, Lcom/inmobi/ads/al;

    .line 991
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v12, v13, v4, v5}, Lcom/inmobi/ads/al;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    move-object v5, v11

    .line 994
    goto/16 :goto_6

    :pswitch_e
    move-object/from16 v4, p0

    .line 997
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;

    move-result-object v6

    .line 998
    const/4 v4, 0x0

    .line 999
    const-string v5, "startOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1000
    const-string v4, "startOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/inmobi/ads/ai;->q(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;

    move-result-object v4

    move-object v5, v4

    .line 1002
    :goto_11
    const/4 v4, 0x0

    .line 1003
    const-string v7, "timerDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1004
    const-string v4, "timerDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/inmobi/ads/ai;->q(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;

    move-result-object v4

    .line 1006
    :cond_11
    const-string v7, "displayTimer"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1007
    new-instance v8, Lcom/inmobi/ads/av;

    invoke-direct {v8, v5, v4}, Lcom/inmobi/ads/av;-><init>(Lcom/inmobi/ads/av$a;Lcom/inmobi/ads/av$a;)V

    .line 1008
    new-instance v11, Lcom/inmobi/ads/aw;

    invoke-direct {v11, v12, v13, v6, v8}, Lcom/inmobi/ads/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Lcom/inmobi/ads/av;)V

    .line 21021
    iput-boolean v7, v11, Lcom/inmobi/ads/aw;->z:Z

    .line 1011
    const-string v4, "assetOnFinish"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1012
    const-string v4, "assetOnFinish"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1013
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1014
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21855
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :cond_12
    :goto_12
    packed-switch v4, :pswitch_data_4

    .line 21858
    const/4 v4, 0x0

    .line 1015
    :goto_13
    invoke-virtual {v11, v4}, Lcom/inmobi/ads/aw;->d(I)V

    .line 1018
    :cond_13
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/aw;->a(Ljava/lang/String;)V

    move-object v5, v11

    .line 1020
    goto/16 :goto_6

    .line 21855
    :sswitch_e
    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v4, 0x1

    goto :goto_12

    :sswitch_f
    const-string v6, "EXIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v4, 0x2

    goto :goto_12

    .line 21860
    :pswitch_f
    const/4 v4, 0x1

    goto :goto_13

    .line 1024
    :pswitch_10
    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 1025
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;

    move-result-object v14

    .line 1026
    const/16 v16, 0x0

    .line 1027
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->p(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1028
    const/16 v16, 0x2

    .line 1029
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1030
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    invoke-static {v4}, Lcom/inmobi/ads/ai;->c(Ljava/lang/String;)I

    move-result v16

    .line 1032
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 22760
    const-string v5, "fallbackUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 1035
    :goto_14
    if-eqz v15, :cond_14

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_16

    .line 1036
    :cond_14
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_15

    .line 1037
    new-instance v11, Lcom/inmobi/ads/am;

    .line 1038
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/inmobi/ads/am;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 1053
    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset;Lorg/json/JSONObject;)V

    .line 1055
    if-eqz v18, :cond_3

    .line 1056
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->e(Ljava/lang/String;)V

    move-object v5, v11

    goto/16 :goto_6

    .line 1040
    :cond_15
    new-instance v11, Lcom/inmobi/ads/ak;

    .line 1041
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto :goto_15

    .line 1044
    :cond_16
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeAsset$AssetType;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_17

    .line 1045
    new-instance v4, Lcom/inmobi/ads/am;

    .line 1046
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/inmobi/ads/am;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V

    move-object v11, v4

    goto :goto_15

    .line 1048
    :cond_17
    new-instance v4, Lcom/inmobi/ads/ak;

    .line 1049
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V

    move-object v11, v4

    goto :goto_15

    :pswitch_11
    move-object/from16 v4, p0

    .line 1062
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;

    move-result-object v14

    .line 1065
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/ads/ba;->f(Ljava/lang/String;)Lcom/inmobi/ads/ba$a;

    move-result-object v4

    .line 1066
    new-instance v11, Lcom/inmobi/ads/ba;

    const-string v5, "isScrollable"

    .line 1067
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v15, v26

    invoke-direct/range {v11 .. v16}, Lcom/inmobi/ads/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Z)V

    .line 23032
    iput-object v4, v11, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 1069
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/ba;->a(Ljava/lang/String;)V

    .line 1072
    const-string v4, "preload"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1073
    if-eqz v4, :cond_3

    .line 23040
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/inmobi/ads/ba;->A:Z

    .line 1075
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/inmobi/ads/ai;->k:Lcom/inmobi/ads/ba;

    move-object v5, v11

    goto/16 :goto_6

    .line 1086
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    sget-object v11, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/inmobi/ads/ai;->s(Lorg/json/JSONObject;)Lcom/inmobi/ads/av;

    move-result-object v25

    .line 1092
    new-instance v16, Lcom/inmobi/ads/az$a;

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    invoke-direct/range {v16 .. v25}, Lcom/inmobi/ads/az$a;-><init>(IIIIIIIILcom/inmobi/ads/av;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inmobi/ads/ai;->q:Lcom/inmobi/ads/bp;

    if-nez v4, :cond_19

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v10}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/bq;

    move-result-object v21

    .line 1102
    :goto_16
    const/16 v22, 0x1

    .line 1103
    const/16 v23, 0x1

    .line 1104
    const/16 v24, 0x0

    .line 1105
    const/16 v26, 0x1

    .line 1106
    const/16 v25, 0x1

    .line 1107
    const v5, 0x7fffffff

    .line 1108
    const/4 v6, 0x0

    .line 1110
    sget-object v4, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inmobi/ads/ai;->s:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v4, v7, :cond_1b

    .line 1111
    if-eqz v10, :cond_1a

    .line 1113
    invoke-virtual {v10}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v4

    const-string v7, "didRequestFullScreen"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1114
    const-string v4, "loop"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1115
    const-string v4, "showProgress"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1116
    const-string v4, "soundOn"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1117
    const-string v4, "showMute"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1118
    const-string v4, "autoPlay"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1119
    move-object v0, v10

    check-cast v0, Lcom/inmobi/ads/az;

    move-object v4, v0

    .line 23210
    iget v5, v4, Lcom/inmobi/ads/az;->E:I

    .line 1120
    const-string v4, "pauseAfter"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-int v4, v6

    move v6, v4

    .line 1143
    :cond_18
    :goto_17
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1144
    const-string v4, "videoViewabilityConfig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1145
    const-string v4, "videoViewabilityConfig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1146
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 1147
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1148
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1149
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1150
    invoke-interface {v7, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 1099
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/ads/ai;->q:Lcom/inmobi/ads/bp;

    move-object/from16 v21, v0

    goto/16 :goto_16

    .line 1124
    :cond_1a
    const-string v4, "loop"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1125
    const-string v4, "showProgress"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1126
    const-string v4, "soundOn"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1127
    const-string v4, "showMute"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1128
    const-string v4, "autoPlay"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1129
    const-string v4, "completeAfter"

    const v5, 0x7fffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1130
    const-string v4, "pauseAfter"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-int v4, v6

    move v6, v4

    goto :goto_17

    .line 1134
    :cond_1b
    const-string v4, "loop"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1135
    const-string v4, "showProgress"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1136
    const-string v4, "soundOn"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1137
    const-string v4, "showMute"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1138
    const-string v4, "autoPlay"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1139
    const-string v4, "completeAfter"

    const v5, 0x7fffffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1140
    const-string v4, "pauseAfter"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-int v4, v6

    move v6, v4

    goto/16 :goto_17

    .line 1154
    :cond_1c
    new-instance v17, Lcom/inmobi/ads/az;

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v16

    move-object/from16 v27, v15

    move-object/from16 v28, p1

    invoke-direct/range {v17 .. v28}, Lcom/inmobi/ads/az;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Lcom/inmobi/ads/bq;ZZZZZLjava/util/List;Lorg/json/JSONObject;)V

    .line 1159
    move-object/from16 v0, v17

    check-cast v0, Lcom/inmobi/ads/az;

    move-object v4, v0

    .line 24166
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v8, v4, Lcom/inmobi/ads/az;->G:Ljava/util/Map;

    .line 1160
    move-object/from16 v0, v17

    check-cast v0, Lcom/inmobi/ads/az;

    move-object v4, v0

    if-gtz v5, :cond_1d

    const v5, 0x7fffffff

    .line 24214
    :cond_1d
    iput v5, v4, Lcom/inmobi/ads/az;->E:I

    .line 1162
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    .line 24271
    move-object/from16 v0, v17

    iput-object v10, v0, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 1164
    if-eqz v10, :cond_1e

    .line 25271
    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 1167
    :cond_1e
    if-eqz v6, :cond_1f

    move-object/from16 v0, v17

    check-cast v0, Lcom/inmobi/ads/az;

    move-object v4, v0

    .line 26218
    iput v6, v4, Lcom/inmobi/ads/az;->F:I

    :cond_1f
    move-object/from16 v5, v17

    .line 1169
    goto/16 :goto_6

    .line 1172
    :pswitch_13
    const/4 v11, 0x0

    move-object v5, v11

    .line 1173
    goto/16 :goto_6

    .line 1177
    :pswitch_14
    invoke-static/range {p1 .. p1}, Lcom/inmobi/ads/ai;->p(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1178
    :cond_20
    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 1180
    invoke-direct/range {v4 .. v9}, Lcom/inmobi/ads/ai;->c(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/au$a;

    move-result-object v14

    .line 1181
    const/16 v16, 0x2

    .line 1182
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1183
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "openMode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-static {v4}, Lcom/inmobi/ads/ai;->c(Ljava/lang/String;)I

    move-result v16

    .line 1185
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 26760
    const-string v5, "fallbackUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 1189
    :goto_19
    if-eqz v15, :cond_21

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_22

    .line 1190
    :cond_21
    new-instance v11, Lcom/inmobi/ads/ah;

    move-object/from16 v15, v26

    move-object/from16 v17, p1

    invoke-direct/range {v11 .. v17}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 1196
    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset;Lorg/json/JSONObject;)V

    .line 1198
    if-eqz v18, :cond_3

    .line 1199
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/inmobi/ads/NativeAsset;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1193
    :cond_22
    new-instance v4, Lcom/inmobi/ads/ah;

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, v26

    move-object v9, v15

    move/from16 v10, v16

    move-object/from16 v11, p1

    invoke-direct/range {v4 .. v11}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Ljava/util/List;ILorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v11, v4

    goto :goto_1a

    .line 1228
    :cond_23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 915
    :catch_2
    move-exception v10

    move-object/from16 v33, v10

    move-object v10, v14

    move-object v14, v4

    move-object/from16 v4, v33

    goto/16 :goto_8

    :cond_24
    move-object/from16 v18, v10

    goto :goto_19

    :cond_25
    move-object/from16 v18, v10

    goto/16 :goto_14

    :cond_26
    move-object v5, v4

    goto/16 :goto_11

    :cond_27
    move-object/from16 v19, v4

    goto/16 :goto_9

    :cond_28
    move-object v4, v10

    goto/16 :goto_3

    :cond_29
    move-object/from16 v26, v14

    goto/16 :goto_4

    .line 18003
    :sswitch_data_0
    .sparse-switch
        -0x3724c0b5 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 920
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 18991
    :sswitch_data_1
    .sparse-switch
        0x30166c -> :sswitch_3
        0x657efb5 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 19865
    :sswitch_data_2
    .sparse-switch
        -0x37ea4e63 -> :sswitch_a
        -0x187eb37f -> :sswitch_4
        0x18210 -> :sswitch_9
        0x18fc4 -> :sswitch_d
        0x313c79 -> :sswitch_5
        0x36452d -> :sswitch_8
        0x5faa95b -> :sswitch_6
        0x6940745 -> :sswitch_b
        0x6b0147b -> :sswitch_7
        0x48fb3bf9 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 21855
    :sswitch_data_3
    .sparse-switch
        0x20b11e -> :sswitch_f
        0x24a738 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method

.method private static a(ILcom/inmobi/ads/NativeTracker$TrackerEventType;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeTracker;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1372
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    .line 1373
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1374
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_VIDEO_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-ne v0, p1, :cond_9

    .line 1375
    const-string v0, "events"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1379
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez v4, :cond_3

    move-object v0, v2

    .line 1418
    :goto_1
    return-object v0

    .line 1372
    :cond_2
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1381
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    if-eqz v4, :cond_6

    .line 1384
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 1386
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/ads/NativeTracker;->a(Ljava/lang/String;)Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    move-result-object v5

    .line 1387
    sget-object v6, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CREATIVE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PLAY:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-ne v5, v6, :cond_5

    .line 1390
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1394
    :cond_6
    const-string v0, "referencedEvents"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1401
    :try_start_0
    const-string v0, "params"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1403
    const-string v0, "params"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1404
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1405
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1406
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1407
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1408
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1411
    :catch_0
    move-exception v0

    .line 1413
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1415
    :cond_8
    new-instance v0, Lcom/inmobi/ads/NativeTracker;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 27102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/inmobi/ads/NativeTracker;->d:Ljava/util/Map;

    goto :goto_1

    .line 1396
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/af;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2021
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2022
    const-string v12, "none"

    .line 2023
    const-string v2, "straight"

    .line 2024
    const-string v14, "#ff000000"

    move-object v13, v2

    .line 2048
    :goto_0
    const-string v2, "backgroundColor"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v15, "#00000000"

    .line 2052
    :goto_1
    const-string v11, "fill"

    .line 2053
    const-string v2, "contentMode"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2054
    const-string v2, "contentMode"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38961
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 38964
    const-string v2, "unspecified"

    :goto_3
    move-object v11, v2

    .line 2058
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ai;->s(Lorg/json/JSONObject;)Lcom/inmobi/ads/av;

    move-result-object v16

    .line 2060
    new-instance v2, Lcom/inmobi/ads/af;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-direct/range {v2 .. v16}, Lcom/inmobi/ads/af;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V

    return-object v2

    .line 2026
    :cond_2
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2027
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2028
    const-string v12, "none"

    .line 2029
    const-string v2, "straight"

    .line 2030
    const-string v14, "#ff000000"

    move-object v13, v2

    goto :goto_0

    .line 2032
    :cond_3
    const-string v2, "style"

    .line 2033
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2032
    invoke-static {v2}, Lcom/inmobi/ads/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2034
    const-string v2, "corner"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2035
    const-string v2, "straight"

    .line 2040
    :goto_4
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2041
    const-string v14, "#ff000000"

    move-object v13, v2

    goto/16 :goto_0

    .line 2037
    :cond_4
    const-string v2, "corner"

    .line 2038
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2037
    invoke-static {v2}, Lcom/inmobi/ads/ai;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2043
    :cond_5
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object v13, v2

    goto/16 :goto_0

    .line 2048
    :cond_6
    const-string v2, "backgroundColor"

    .line 2050
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 38961
    :sswitch_0
    const-string v4, "unspecified"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "fill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "aspectFill"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "aspectFit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    .line 38966
    :pswitch_0
    const-string v2, "fill"

    goto/16 :goto_3

    .line 38968
    :pswitch_1
    const-string v2, "aspectFill"

    goto/16 :goto_3

    .line 38970
    :pswitch_2
    const-string v2, "aspectFit"

    goto/16 :goto_3

    .line 38961
    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_0
        -0x512e7f67 -> :sswitch_3
        0x2ff583 -> :sswitch_1
        0x2b5e91fb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/ag;
    .locals 1

    .prologue
    .line 412
    instance-of v0, p0, Lcom/inmobi/ads/ag;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/inmobi/ads/ag;

    .line 413
    invoke-static {v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    check-cast p0, Lcom/inmobi/ads/ag;

    .line 424
    :cond_0
    :goto_0
    return-object p0

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeAsset;->u()Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    move-object p0, v0

    .line 418
    :goto_1
    if-eqz p0, :cond_2

    .line 419
    invoke-static {p0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/inmobi/ads/ag;->u()Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    move-object p0, v0

    goto :goto_1

    .line 424
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/bq;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1508
    invoke-static {p1}, Lcom/inmobi/ads/ai;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1510
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1524
    :goto_0
    return-object v0

    .line 1514
    :cond_1
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/inmobi/ads/az;

    if-eqz v0, :cond_2

    .line 1515
    invoke-virtual {p3}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    goto :goto_0

    .line 1517
    :cond_2
    new-instance v0, Lcom/inmobi/ads/bn;

    iget-object v2, p0, Lcom/inmobi/ads/ai;->r:Lcom/inmobi/ads/b$g;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/bn;-><init>(Lcom/inmobi/ads/b$g;)V

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/bn;->a(Ljava/lang/String;)Lcom/inmobi/ads/bp;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v0

    .line 1520
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    :cond_3
    move-object v0, v1

    .line 1524
    goto :goto_0
.end method

.method private static a(Lcom/inmobi/ads/bm;Lcom/inmobi/ads/ba;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 527
    sget-object v0, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    .line 6036
    iget-object v2, p1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 527
    if-ne v0, v2, :cond_3

    .line 528
    invoke-virtual {p0, v4}, Lcom/inmobi/ads/bm;->a(I)Ljava/util/List;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 530
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bm$a;

    iget-object v0, v0, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    .line 566
    :goto_0
    return-object v0

    .line 532
    :cond_0
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/bm;->a(I)Ljava/util/List;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 534
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bm$a;

    iget-object v0, v0, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    .line 535
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    sget-object v1, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    .line 7032
    iput-object v1, p1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    goto :goto_0

    .line 540
    :cond_1
    const-string v0, "MalformedURL"

    const-string v2, "Rich"

    sget-object v3, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    invoke-static {v0, v2, v3, v1, v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/ba$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 566
    goto :goto_0

    .line 545
    :cond_3
    sget-object v0, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    .line 7036
    iget-object v2, p1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 545
    if-ne v0, v2, :cond_2

    .line 546
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/bm;->a(I)Ljava/util/List;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 548
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bm$a;

    iget-object v0, v0, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    .line 549
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 550
    sget-object v1, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    .line 8032
    iput-object v1, p1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    goto :goto_0

    .line 554
    :cond_4
    const-string v0, "MalformedURL"

    const-string v2, "Rich"

    sget-object v3, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    invoke-static {v0, v2, v3, v1, v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/ba$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {p0, v4}, Lcom/inmobi/ads/bm;->a(I)Ljava/util/List;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 560
    sget-object v1, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    .line 9032
    iput-object v1, p1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 561
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bm$a;

    iget-object v0, v0, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1422
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1425
    :try_start_0
    const-string v0, "passThroughJson"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1427
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1428
    const-string v0, "macros"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1429
    const-string v0, "macros"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1430
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1431
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1433
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1434
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse IAS tracker : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1459
    :cond_0
    :goto_1
    return-object v2

    .line 1438
    :cond_1
    :try_start_1
    const-string v0, "urls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    const-string v0, "urls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1440
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v1

    .line 1441
    :goto_2
    if-ge v0, v5, :cond_2

    .line 1442
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1443
    new-instance v6, Lcom/inmobi/ads/NativeTracker;

    const/4 v7, 0x0

    sget-object v8, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {v6, v1, v7, v8, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1450
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    new-instance v0, Lcom/inmobi/ads/NativeTracker;

    const-string v1, ""

    const/4 v3, 0x0

    sget-object v5, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Lcom/inmobi/ads/NativeAsset;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1263
    const-string v3, ""

    .line 1264
    const-string v4, ""

    .line 1265
    const/4 v1, 0x0

    .line 1267
    invoke-static {p1}, Lcom/inmobi/ads/ai;->p(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    const-string v0, "assetOnclick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "itemUrl"

    .line 1269
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Missing itemUrl on asset "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move-object v1, v3

    .line 1278
    :goto_1
    const-string v3, "assetOnclick"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "action"

    .line 1279
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1280
    const-string v0, "assetOnclick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "action"

    .line 1281
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    :goto_2
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeAsset;->d(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeAsset;->c(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeAsset;->a(Z)V

    .line 1289
    return-void

    :cond_0
    move-object v0, p1

    .line 1271
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1273
    :cond_1
    const-string v0, "assetOnclick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "itemUrl"

    .line 1274
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 1275
    goto :goto_1

    :cond_2
    move v2, v0

    move-object v0, v4

    goto :goto_2

    :cond_3
    move v2, v1

    move-object v0, v4

    move-object v1, v3

    goto :goto_2
.end method

.method private static a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/bl;)V
    .locals 3

    .prologue
    .line 433
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/az;->b(I)V

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5079
    iget-boolean v1, p1, Lcom/inmobi/ads/bl;->a:Z

    .line 435
    if-nez v1, :cond_0

    .line 436
    const-string v1, "[ERRORCODE]"

    const-string v2, "604"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :goto_0
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 444
    return-void

    .line 439
    :cond_0
    const-string v1, "[ERRORCODE]"

    const-string v2, "601"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/ba$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 495
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v1, "dataType"

    invoke-virtual {p2}, Lcom/inmobi/ads/ba$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v1, "clientRequestId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v1, "impId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "EndCardCompanionFailure"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in sendTelemetryEventForCompanionFailure : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Lcom/inmobi/ads/ag;)Z
    .locals 2

    .prologue
    .line 428
    const-string v0, "card_scrollable"

    invoke-virtual {p0}, Lcom/inmobi/ads/ag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Lorg/json/JSONArray;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1361
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 1362
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1363
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1366
    :cond_0
    :goto_0
    return v0

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeAsset$AssetType;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1320
    const-string v2, "geometry"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return v0

    .line 1323
    :cond_1
    :try_start_0
    const-string v2, "geometry"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1324
    invoke-static {v2}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    sget-object v2, Lcom/inmobi/ads/ai$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset$AssetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1337
    goto :goto_0

    .line 1340
    :pswitch_2
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1344
    :try_start_1
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    double-to-int v2, v2

    .line 1350
    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1345
    :catch_0
    move-exception v1

    .line 1347
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1352
    :catch_1
    move-exception v1

    .line 1353
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1656
    const/4 v1, 0x0

    .line 1658
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1659
    const-string v0, "finalGeometry"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    :goto_0
    return-object p2

    .line 1661
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    :try_start_1
    const-string v1, "finalGeometry"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1663
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 36765
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v2

    .line 1663
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1664
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 37765
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v1

    .line 1664
    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object p2, v0

    .line 1668
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/au$a;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2095
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2096
    const-string v11, "none"

    .line 2097
    const-string v2, "straight"

    .line 2098
    const-string v13, "#ff000000"

    move-object v12, v2

    .line 2122
    :goto_0
    const-string v2, "backgroundColor"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v14, "#00000000"

    .line 2127
    :goto_1
    const-string v2, "text"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2132
    :try_start_0
    const-string v2, "size"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v15, v4

    .line 2141
    const-string v2, "length"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v17, 0x7fffffff

    .line 2144
    :goto_2
    const-string v2, "color"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v18, "#ff000000"

    .line 2148
    :goto_3
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2149
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    sget-object v4, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    aput-object v4, v19, v2

    .line 2165
    :cond_0
    :goto_4
    const/16 v16, 0x0

    .line 2166
    const-string v2, "align"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2167
    const-string v2, "align"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39923
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 39926
    const/4 v2, 0x0

    :goto_6
    move/from16 v16, v2

    .line 2170
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ai;->s(Lorg/json/JSONObject;)Lcom/inmobi/ads/av;

    move-result-object v20

    .line 2173
    new-instance v2, Lcom/inmobi/ads/au$a;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-direct/range {v2 .. v20}, Lcom/inmobi/ads/au$a;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[Lcom/inmobi/ads/au$a$a;Lcom/inmobi/ads/av;)V

    return-object v2

    .line 2100
    :cond_3
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2101
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2102
    const-string v11, "none"

    .line 2103
    const-string v2, "straight"

    .line 2104
    const-string v13, "#ff000000"

    move-object v12, v2

    goto/16 :goto_0

    .line 2106
    :cond_4
    const-string v2, "style"

    .line 2107
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2106
    invoke-static {v2}, Lcom/inmobi/ads/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2108
    const-string v2, "corner"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2109
    const-string v2, "straight"

    .line 2114
    :goto_7
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2115
    const-string v13, "#ff000000"

    move-object v12, v2

    goto/16 :goto_0

    .line 2111
    :cond_5
    const-string v2, "corner"

    .line 2112
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-static {v2}, Lcom/inmobi/ads/ai;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 2117
    :cond_6
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v12, v2

    goto/16 :goto_0

    .line 2122
    :cond_7
    const-string v2, "backgroundColor"

    .line 2124
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 2133
    :catch_0
    move-exception v2

    .line 2135
    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v3, v2}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2137
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 2138
    throw v3

    .line 2141
    :cond_8
    const-string v2, "length"

    .line 2143
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_2

    .line 2144
    :cond_9
    const-string v2, "color"

    .line 2146
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 2151
    :cond_a
    const-string v2, "style"

    .line 2152
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2153
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 2154
    if-nez v4, :cond_b

    .line 2155
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    sget-object v4, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    aput-object v4, v19, v2

    goto/16 :goto_4

    .line 2157
    :cond_b
    new-array v0, v4, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v19, v0

    .line 2158
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_0

    .line 2159
    const-string v5, "style"

    .line 2160
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2161
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2159
    invoke-static {v5}, Lcom/inmobi/ads/ai;->d(Ljava/lang/String;)Lcom/inmobi/ads/au$a$a;

    move-result-object v5

    aput-object v5, v19, v2

    .line 2158
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 39923
    :sswitch_0
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_2
    const-string v4, "centre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_5

    .line 39928
    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 39930
    :pswitch_1
    const/4 v2, 0x2

    goto/16 :goto_6

    .line 39923
    :sswitch_data_0
    .sparse-switch
        -0x514d3225 -> :sswitch_2
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1464
    const-string v0, "trackers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1501
    :cond_0
    :goto_0
    return-object v0

    .line 1465
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1467
    :try_start_0
    const-string v6, "trackers"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1468
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1469
    if-eqz v8, :cond_0

    move v6, v1

    .line 1471
    :goto_1
    if-ge v6, v8, :cond_0

    .line 1472
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 1474
    const-string v1, "trackerType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1475
    const-string v1, "trackerType"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27784
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_2
    move v1, v3

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 27786
    sget v1, Lcom/inmobi/ads/NativeTracker$a;->a:I

    .line 1478
    :goto_3
    sget v10, Lcom/inmobi/ads/NativeTracker$a;->b:I

    if-ne v10, v1, :cond_5

    .line 1480
    const-string v1, "eventId"

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 1482
    const-string v1, "uiEvent"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1483
    const-string v1, "uiEvent"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 27812
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :cond_3
    move v1, v3

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 28797
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    :cond_4
    move v1, v3

    :goto_5
    packed-switch v1, :pswitch_data_2

    .line 28799
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1485
    :goto_6
    sget-object v11, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-eq v11, v1, :cond_5

    .line 1487
    sget-object v11, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    if-eq v11, v1, :cond_6

    .line 1488
    invoke-static {v10, v1, v9}, Lcom/inmobi/ads/ai;->a(ILcom/inmobi/ads/NativeTracker$TrackerEventType;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeTracker;

    move-result-object v1

    .line 1490
    if-eqz v1, :cond_5

    .line 1491
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_5
    :goto_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    .line 27784
    :sswitch_0
    const-string v10, "URL_PING"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :sswitch_1
    const-string v10, "URL_WEBVIEW_PING"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :sswitch_2
    const-string v10, "HTML_SCRIPT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_2

    .line 27788
    :pswitch_0
    sget v1, Lcom/inmobi/ads/NativeTracker$a;->b:I

    goto :goto_3

    .line 27790
    :pswitch_1
    sget v1, Lcom/inmobi/ads/NativeTracker$a;->c:I

    goto :goto_3

    .line 27792
    :pswitch_2
    sget v1, Lcom/inmobi/ads/NativeTracker$a;->d:I

    goto/16 :goto_3

    .line 27812
    :sswitch_3
    const-string v12, "LOAD"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_4

    :sswitch_4
    const-string v12, "CLIENT_FILL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_4

    :sswitch_5
    const-string v12, "RENDER"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_4

    :sswitch_6
    const-string v12, "VIEW"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_7
    const-string v12, "CLICK"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto/16 :goto_4

    :sswitch_8
    const-string v12, "VIDEO_VIEWABILITY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto/16 :goto_4

    :sswitch_9
    const-string v12, "IAS_VIEWABILITY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto/16 :goto_4

    :sswitch_a
    const-string v12, "FALLBACK_URL_CLICK"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto/16 :goto_4

    .line 28797
    :sswitch_b
    const-string v11, "DOWNLOADER_INITIALIZED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto/16 :goto_5

    :sswitch_c
    const-string v11, "DOWNLOADER_DOWNLOADING"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto/16 :goto_5

    :sswitch_d
    const-string v11, "DOWNLOADER_DOWNLOADED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto/16 :goto_5

    :sswitch_e
    const-string v11, "DOWNLOADER_ERROR"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto/16 :goto_5

    .line 28801
    :pswitch_3
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_DOWNLOADER_INIT:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 28803
    :pswitch_4
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADING:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 28805
    :pswitch_5
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADED:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 28807
    :pswitch_6
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_DOWNLOADER_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27816
    :pswitch_7
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_LOAD:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27818
    :pswitch_8
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLIENT_FILL:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27820
    :pswitch_9
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27822
    :pswitch_a
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAGE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27824
    :pswitch_b
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27826
    :pswitch_c
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_VIDEO_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27828
    :pswitch_d
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 27830
    :pswitch_e
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_FALLBACK_URL:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_6

    .line 1494
    :cond_6
    invoke-static {v9}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 1499
    :catch_0
    move-exception v1

    .line 1500
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 27784
    :sswitch_data_0
    .sparse-switch
        -0x553d2421 -> :sswitch_2
        -0x96c9d9e -> :sswitch_0
        0x42376308 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 27812
    :sswitch_data_1
    .sparse-switch
        -0x7021ca6a -> :sswitch_5
        -0x31341ea5 -> :sswitch_a
        -0x2bc4d3f -> :sswitch_9
        0x23bce6 -> :sswitch_3
        0x2832a5 -> :sswitch_6
        0x3d3cd68 -> :sswitch_7
        0x750e84e1 -> :sswitch_8
        0x77b5e577 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 28797
    :sswitch_data_2
    .sparse-switch
        -0x6d77cd8f -> :sswitch_d
        -0x4181d3d0 -> :sswitch_c
        0x4f63005e -> :sswitch_e
        0x503c30aa -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1839
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1848
    :goto_1
    return v0

    .line 1839
    :sswitch_0
    const-string v6, "EXTERNAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v6, "INAPP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v6, "DEEPLINK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "DOWNLOAD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 1844
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 1846
    goto :goto_1

    :pswitch_2
    move v0, v3

    .line 1848
    goto :goto_1

    .line 1839
    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_3
        -0x3de0ac35 -> :sswitch_0
        0x42926bc -> :sswitch_1
        0x542746e6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/au$a;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2189
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2190
    const-string v11, "none"

    .line 2191
    const-string v2, "straight"

    .line 2192
    const-string v13, "#ff000000"

    move-object v12, v2

    .line 2216
    :goto_0
    const-string v2, "backgroundColor"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v14, "#00000000"

    .line 2221
    :goto_1
    const-string v2, "text"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2226
    :try_start_0
    const-string v2, "size"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v15, v4

    .line 2234
    const-string v2, "color"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v16, "#ff000000"

    .line 2239
    :goto_2
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2240
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    aput-object v3, v17, v2

    .line 2257
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ai;->s(Lorg/json/JSONObject;)Lcom/inmobi/ads/av;

    move-result-object v18

    .line 2259
    new-instance v2, Lcom/inmobi/ads/ah$a;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p4

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-direct/range {v2 .. v18}, Lcom/inmobi/ads/ah$a;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/au$a$a;Lcom/inmobi/ads/av;)V

    return-object v2

    .line 2194
    :cond_1
    const-string v2, "border"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2195
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2196
    const-string v11, "none"

    .line 2197
    const-string v2, "straight"

    .line 2198
    const-string v13, "#ff000000"

    move-object v12, v2

    goto :goto_0

    .line 2200
    :cond_2
    const-string v2, "style"

    .line 2201
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2200
    invoke-static {v2}, Lcom/inmobi/ads/ai;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2202
    const-string v2, "corner"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2203
    const-string v2, "straight"

    .line 2208
    :goto_4
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2209
    const-string v13, "#ff000000"

    move-object v12, v2

    goto/16 :goto_0

    .line 2205
    :cond_3
    const-string v2, "corner"

    .line 2206
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2205
    invoke-static {v2}, Lcom/inmobi/ads/ai;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2211
    :cond_4
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v12, v2

    goto/16 :goto_0

    .line 2216
    :cond_5
    const-string v2, "backgroundColor"

    .line 2218
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 2227
    :catch_0
    move-exception v2

    .line 2229
    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v3, v2}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2231
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 2232
    throw v3

    .line 2234
    :cond_6
    const-string v2, "color"

    .line 2236
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 2242
    :cond_7
    const-string v2, "style"

    .line 2243
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2244
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 2245
    if-nez v4, :cond_8

    .line 2246
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    aput-object v3, v17, v2

    goto/16 :goto_3

    .line 2248
    :cond_8
    new-array v0, v4, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v17, v0

    .line 2249
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_0

    .line 2250
    const-string v5, "style"

    .line 2251
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2252
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2250
    invoke-static {v5}, Lcom/inmobi/ads/ai;->d(Ljava/lang/String;)Lcom/inmobi/ads/au$a$a;

    move-result-object v5

    aput-object v5, v17, v2

    .line 2249
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1529
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/ads/ai;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    invoke-static {p0}, Lcom/inmobi/ads/ai;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    invoke-static {p0}, Lcom/inmobi/ads/ai;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "assetValue"

    .line 1532
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    const-string v0, "assetValue"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1538
    :goto_0
    return-object v0

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1538
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lcom/inmobi/ads/au$a$a;
    .locals 3

    .prologue
    .line 1905
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1908
    sget-object v0, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    .line 1916
    :goto_1
    return-object v0

    .line 1905
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "italic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "strike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "underline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1910
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/au$a$a;->b:Lcom/inmobi/ads/au$a$a;

    goto :goto_1

    .line 1912
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/au$a$a;->c:Lcom/inmobi/ads/au$a$a;

    goto :goto_1

    .line 1914
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/au$a$a;->d:Lcom/inmobi/ads/au$a$a;

    goto :goto_1

    .line 1916
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/au$a$a;->e:Lcom/inmobi/ads/au$a$a;

    goto :goto_1

    .line 1905
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_2
        -0x3d363934 -> :sswitch_4
        -0x352aa04e -> :sswitch_3
        0x2e3a85 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1543
    :try_start_0
    const-string v0, "assetId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1546
    :goto_0
    return-object v0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1546
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 450
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 452
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {p0, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v1

    .line 456
    if-nez v1, :cond_1

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find referenced asset for asset ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v2, v5, :cond_2

    .line 461
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_2
    sget-object v2, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v5

    if-ne v2, v5, :cond_0

    .line 463
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->m()I

    move-result v2

    if-eq v10, v2, :cond_0

    .line 465
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->m()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 466
    check-cast v1, Lcom/inmobi/ads/az;

    .line 467
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v5

    .line 468
    new-instance v6, Lcom/inmobi/ads/bl;

    invoke-direct {v6}, Lcom/inmobi/ads/bl;-><init>()V

    .line 469
    invoke-virtual {v6, v1, v0}, Lcom/inmobi/ads/bl;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/bm;

    move-result-object v7

    .line 470
    if-nez v7, :cond_4

    move-object v2, v3

    .line 472
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6

    .line 473
    :cond_3
    invoke-static {v1, v6}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/bl;)V

    .line 474
    if-nez v7, :cond_5

    const-string v0, "NoBestFitCompanion"

    :goto_2
    const-string v1, "Static"

    sget-object v2, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/ba$a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    :cond_4
    invoke-virtual {v7, v10}, Lcom/inmobi/ads/bm;->a(I)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 474
    :cond_5
    const-string v0, "NoValidResource"

    goto :goto_2

    .line 479
    :cond_6
    invoke-interface {v5, v7}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bm;)V

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "Setting asset value: "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bm$a;

    iget-object v1, v1, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bm$a;

    iget-object v1, v1, Lcom/inmobi/ads/bm$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 488
    :cond_7
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1937
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1940
    const-string v0, "none"

    .line 1942
    :goto_1
    return-object v0

    .line 1937
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1942
    :pswitch_0
    const-string v0, "line"

    goto :goto_1

    .line 1937
    nop

    :sswitch_data_0
    .sparse-switch
        0x32aff4 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1552
    :try_start_0
    const-string v0, "assetName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1555
    :goto_0
    return-object v0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1555
    const-string v0, ""

    goto :goto_0
.end method

.method private e()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 574
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    move-object v1, v0

    .line 576
    check-cast v1, Lcom/inmobi/ads/ba;

    .line 577
    sget-object v2, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    .line 9036
    iget-object v3, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 577
    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/inmobi/ads/ba$a;->a:Lcom/inmobi/ads/ba$a;

    .line 10036
    iget-object v3, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 578
    if-eq v2, v3, :cond_0

    .line 580
    invoke-static {p0, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v2

    .line 581
    if-nez v2, :cond_1

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find referenced asset for asset ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v6

    if-ne v3, v6, :cond_2

    .line 586
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_2
    sget-object v3, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v6

    if-ne v3, v6, :cond_0

    .line 588
    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->m()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 589
    check-cast v2, Lcom/inmobi/ads/az;

    .line 590
    invoke-virtual {v2}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v6

    .line 591
    new-instance v7, Lcom/inmobi/ads/bl;

    invoke-direct {v7}, Lcom/inmobi/ads/bl;-><init>()V

    .line 592
    invoke-virtual {v7, v2, v0}, Lcom/inmobi/ads/bl;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/bm;

    move-result-object v8

    .line 593
    if-nez v8, :cond_4

    move-object v3, v4

    .line 597
    :goto_1
    if-eqz v8, :cond_3

    if-nez v3, :cond_6

    .line 598
    :cond_3
    invoke-static {v2, v7}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/bl;)V

    .line 601
    if-nez v8, :cond_5

    const-string v0, "NoBestFitCompanion"

    :goto_2
    const-string v2, "Rich"

    .line 11036
    iget-object v3, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 601
    invoke-static {v0, v2, v3, v4, v4}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/ba$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/inmobi/ads/ba$a;->e:Lcom/inmobi/ads/ba$a;

    .line 12032
    iput-object v0, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    goto :goto_0

    .line 594
    :cond_4
    invoke-static {v8, v1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/bm;Lcom/inmobi/ads/ba;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 601
    :cond_5
    const-string v0, "NoValidResource"

    goto :goto_2

    .line 606
    :cond_6
    invoke-interface {v6, v8}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bm;)V

    .line 608
    invoke-virtual {v0, v3}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 615
    :cond_7
    return-void
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1949
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1952
    const-string v0, "straight"

    .line 1954
    :goto_1
    return-object v0

    .line 1949
    :sswitch_0
    const-string v2, "straight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "curved"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1954
    :pswitch_0
    const-string v0, "curved"

    goto :goto_1

    .line 1949
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069e2ab -> :sswitch_1
        0x6a8aaafa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1561
    :try_start_0
    const-string v0, "assetType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1564
    :goto_0
    return-object v0

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1564
    const-string v0, ""

    goto :goto_0
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 620
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v6, "styleRefs"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/inmobi/ads/ai;->n:Lorg/json/JSONObject;

    .line 621
    iget-object v4, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v6, "orientation"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    move-object v4, p0

    .line 624
    :goto_0
    iput v2, v4, Lcom/inmobi/ads/ai;->a:I

    .line 626
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "shouldAutoOpenLandingPage"

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->j:Z

    .line 627
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "disableBackButton"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->b:Z

    .line 628
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "rootContainer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeAsset$AssetType;

    const-string v6, "/rootContainer"

    invoke-direct {p0, v2, v4, v6}, Lcom/inmobi/ads/ai;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ag;

    iput-object v2, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13711
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "passThroughJson"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13712
    iget-object v2, p0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    iget-object v4, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v6, "passThroughJson"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 14153
    iput-object v4, v2, Lcom/inmobi/ads/ai$a;->a:Lorg/json/JSONObject;

    .line 13715
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "adContent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13716
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "adContent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 13717
    if-eqz v2, :cond_1

    .line 13718
    new-instance v4, Lcom/inmobi/ads/ai$a$a;

    iget-object v6, p0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6}, Lcom/inmobi/ads/ai$a$a;-><init>(Lcom/inmobi/ads/ai$a;)V

    .line 13719
    const-string v6, "title"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/inmobi/ads/ai$a$a;->a:Ljava/lang/String;

    .line 13720
    const-string v6, "description"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/inmobi/ads/ai$a$a;->b:Ljava/lang/String;

    .line 13721
    const-string v6, "ctaText"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/inmobi/ads/ai$a$a;->d:Ljava/lang/String;

    .line 13722
    const-string v6, "iconUrl"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/inmobi/ads/ai$a$a;->c:Ljava/lang/String;

    .line 13723
    const-string v6, "rating"

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-float v6, v6

    iput v6, v4, Lcom/inmobi/ads/ai$a$a;->e:F

    .line 13724
    const-string v6, "landingPageUrl"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/inmobi/ads/ai$a$a;->f:Ljava/lang/String;

    .line 13725
    const-string v6, "isApp"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v4, Lcom/inmobi/ads/ai$a$a;->g:Z

    .line 13726
    iget-object v2, p0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 14157
    iput-object v4, v2, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 13729
    :cond_1
    new-instance v7, Lcom/inmobi/ads/NativeAsset;

    invoke-direct {v7}, Lcom/inmobi/ads/NativeAsset;-><init>()V

    .line 13732
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "onClick"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13733
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v4, "onClick"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 14238
    :try_start_2
    const-string v2, ""

    .line 14239
    const-string v4, ""

    .line 14242
    const-string v6, "itemUrl"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 14245
    const-string v2, "itemUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move v2, v3

    .line 14249
    :goto_1
    const-string v9, "action"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 14250
    const-string v2, "action"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v10, v3

    move-object v3, v2

    move v2, v10

    .line 14254
    :goto_2
    invoke-virtual {v7, v6}, Lcom/inmobi/ads/NativeAsset;->d(Ljava/lang/String;)V

    .line 14255
    const-string v4, "fallbackUrl"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/inmobi/ads/NativeAsset;->e(Ljava/lang/String;)V

    .line 14256
    invoke-virtual {v7, v3}, Lcom/inmobi/ads/NativeAsset;->c(Ljava/lang/String;)V

    .line 14257
    invoke-virtual {v7, v2}, Lcom/inmobi/ads/NativeAsset;->a(Z)V

    .line 14258
    const-string v2, "appBundleId"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/inmobi/ads/NativeAsset;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 13739
    :goto_3
    :try_start_3
    const-string v2, "openMode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13740
    const-string v2, "openMode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13741
    invoke-static {v2}, Lcom/inmobi/ads/ai;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/inmobi/ads/NativeAsset;->a(I)V

    .line 14760
    const-string v2, "fallbackUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13742
    invoke-virtual {v7, v2}, Lcom/inmobi/ads/NativeAsset;->e(Ljava/lang/String;)V

    .line 13746
    :cond_2
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "trackers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13747
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/inmobi/ads/ai;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 13748
    invoke-virtual {v7, v2}, Lcom/inmobi/ads/NativeAsset;->a(Ljava/util/List;)V

    .line 13750
    :cond_3
    iget-object v2, p0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 15169
    iput-object v7, v2, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/NativeAsset;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 633
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "prefetchNextPage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->c:Z

    .line 639
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/inmobi/ads/ai;->g:Ljava/util/Map;

    .line 643
    :cond_4
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 644
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 645
    if-eqz v3, :cond_7

    .line 646
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 647
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 648
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 650
    iget-object v7, p0, Lcom/inmobi/ads/ai;->g:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 704
    :catch_0
    move-exception v2

    .line 705
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 707
    :goto_6
    return-void

    .line 624
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v6, "orientation"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12893
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_6
    :goto_7
    packed-switch v4, :pswitch_data_0

    move v2, v5

    move-object v4, p0

    .line 12896
    goto/16 :goto_0

    .line 12893
    :sswitch_0
    const-string v7, "unspecified"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v3

    goto :goto_7

    :sswitch_1
    const-string v7, "portrait"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v2

    goto :goto_7

    :sswitch_2
    const-string v7, "landscape"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x3

    goto :goto_7

    :pswitch_0
    move v2, v3

    move-object v4, p0

    .line 12898
    goto/16 :goto_0

    :pswitch_1
    move-object v4, p0

    .line 12900
    goto/16 :goto_0

    .line 13751
    :catch_1
    move-exception v2

    .line 13752
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_4

    .line 655
    :cond_7
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->d()V

    .line 656
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->e()V

    .line 658
    iget-object v2, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 660
    iget-object v4, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/NativeAsset;

    .line 661
    const/4 v4, 0x4

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->n()I

    move-result v7

    if-ne v4, v7, :cond_8

    .line 662
    iget-object v4, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/NativeAsset;

    .line 663
    sget-object v4, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v7

    if-ne v4, v7, :cond_8

    .line 664
    move-object v0, v3

    check-cast v0, Lcom/inmobi/ads/az;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v4

    check-cast v4, Lcom/inmobi/ads/bp;

    .line 15182
    iget-object v4, v4, Lcom/inmobi/ads/bp;->b:Ljava/lang/String;

    .line 666
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    .line 669
    const/4 v7, 0x1

    :try_start_6
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    const/4 v8, 0x2

    aget-object v4, v4, v8

    .line 670
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v4

    add-int/2addr v4, v7

    .line 675
    :goto_9
    if-nez v4, :cond_9

    .line 676
    :try_start_7
    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    .line 694
    :goto_a
    check-cast v3, Lcom/inmobi/ads/az;

    .line 16182
    iget-object v3, v3, Lcom/inmobi/ads/az;->z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 671
    :catch_2
    move-exception v4

    .line 673
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v7

    new-instance v8, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v8, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v4, v5

    goto :goto_9

    .line 678
    :cond_9
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeAsset;->o()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    .line 681
    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    goto :goto_a

    .line 684
    :sswitch_3
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    goto :goto_a

    .line 687
    :sswitch_4
    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    goto :goto_a

    .line 690
    :sswitch_5
    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeAsset;->g(I)V

    goto :goto_a

    .line 699
    :cond_a
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "pages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 700
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/inmobi/ads/ai;->e:Lorg/json/JSONArray;

    goto/16 :goto_6

    .line 702
    :cond_b
    iget-object v2, p0, Lcom/inmobi/ads/ai;->m:Lorg/json/JSONObject;

    const-string v3, "pages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/ai;->e:Lorg/json/JSONArray;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_6

    :catch_3
    move-exception v2

    goto/16 :goto_3

    :cond_c
    move-object v3, v4

    goto/16 :goto_2

    :cond_d
    move-object v6, v2

    move v2, v5

    goto/16 :goto_1

    .line 12893
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_0
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 678
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_3
        0x4b -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method private static g(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1570
    :try_start_0
    const-string v0, "valueType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1573
    :goto_0
    return-object v0

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1573
    const-string v0, ""

    goto :goto_0
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 829
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v0, v2

    .line 868
    :goto_0
    return v0

    .line 833
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 837
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 841
    check-cast v0, Lcom/inmobi/ads/az;

    .line 842
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v4

    .line 843
    if-nez v4, :cond_3

    move v0, v1

    .line 845
    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v4

    invoke-interface {v4}, Lcom/inmobi/ads/bq;->c()Ljava/util/List;

    move-result-object v4

    .line 848
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v0, v1

    .line 850
    goto :goto_0

    .line 852
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v4

    invoke-interface {v4}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v4

    .line 853
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 858
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 859
    const-string v3, "[ERRORCODE]"

    const-string v4, "403"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v3, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    move v0, v1

    .line 861
    goto :goto_0

    :cond_7
    move v0, v2

    .line 868
    goto :goto_0
.end method

.method private static h(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1579
    :try_start_0
    const-string v0, "dataType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1582
    :goto_0
    return-object v0

    .line 1580
    :catch_0
    move-exception v0

    .line 1581
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1582
    const-string v0, ""

    goto :goto_0
.end method

.method private i(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1589
    :try_start_0
    const-string v0, "assetStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1591
    :goto_0
    if-nez v0, :cond_0

    .line 1592
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1593
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1604
    :cond_0
    :goto_1
    return-object v0

    .line 1589
    :cond_1
    const-string v0, "assetStyle"

    .line 1590
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1595
    :cond_2
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/inmobi/ads/ai;->n:Lorg/json/JSONObject;

    .line 29361
    if-nez v1, :cond_3

    .line 1596
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1604
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 30361
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/ai;->n:Lorg/json/JSONObject;

    .line 1597
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private j(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1609
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1611
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1612
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    :goto_0
    return-object v0

    .line 1614
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1615
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 30765
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v2

    .line 1615
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1616
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 31765
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v1

    .line 1616
    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1617
    :catch_0
    move-exception v1

    .line 1618
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private k(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1640
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1642
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1643
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1651
    :goto_0
    return-object v0

    .line 1645
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1646
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 34765
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v2

    .line 1646
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1647
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 35765
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->a(I)I

    move-result v1

    .line 1647
    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1648
    :catch_0
    move-exception v1

    .line 1649
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static l(Lorg/json/JSONObject;)I
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 1677
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/ads/ai;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1678
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38753
    :goto_0
    return v0

    .line 1680
    :cond_0
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38748
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 38751
    goto :goto_0

    .line 38748
    :sswitch_0
    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "absolute"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v5, "percentage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :pswitch_0
    move v0, v2

    .line 38753
    goto :goto_0

    .line 38755
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v1

    .line 1682
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 38748
    nop

    :sswitch_data_0
    .sparse-switch
        -0x36f20d66 -> :sswitch_2
        -0x10fa53b6 -> :sswitch_0
        0x67010d77 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static m(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1724
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/ads/ai;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1725
    const-string v1, "reference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 1730
    :goto_0
    return-object v0

    .line 1727
    :cond_0
    const-string v1, "reference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1730
    const-string v0, ""

    goto :goto_0
.end method

.method private static n(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 1735
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1740
    :goto_0
    return-object v0

    .line 1737
    :cond_0
    :try_start_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1740
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private static o(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 1770
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1775
    :goto_0
    return-object v0

    .line 1771
    :catch_0
    move-exception v0

    .line 1772
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1775
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private static p(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 1779
    const-string v0, "assetOnclick"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;
    .locals 8

    .prologue
    .line 1975
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1976
    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1977
    const-string v0, "reference"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1978
    new-instance v1, Lcom/inmobi/ads/av$a;

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/ads/av$a;-><init>(JJLjava/lang/String;Lcom/inmobi/ads/ai;)V

    return-object v1
.end method

.method private r(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;
    .locals 8

    .prologue
    .line 1982
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1983
    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1984
    const-string v0, "reference"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1985
    new-instance v1, Lcom/inmobi/ads/av$a;

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/ads/av$a;-><init>(JJLjava/lang/String;Lcom/inmobi/ads/ai;)V

    return-object v1
.end method

.method private s(Lorg/json/JSONObject;)Lcom/inmobi/ads/av;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2073
    .line 2074
    const-string v0, "startOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2075
    const-string v0, "startOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->r(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;

    move-result-object v0

    .line 2078
    :goto_0
    const-string v2, "timerDuration"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2079
    const-string v1, "timerDuration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/ai;->r(Lorg/json/JSONObject;)Lcom/inmobi/ads/av$a;

    move-result-object v1

    .line 2081
    :cond_0
    new-instance v2, Lcom/inmobi/ads/av;

    invoke-direct {v2, v0, v1}, Lcom/inmobi/ads/av;-><init>(Lcom/inmobi/ads/av$a;Lcom/inmobi/ads/av$a;)V

    .line 2082
    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(I)Lcom/inmobi/ads/ag;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 393
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 394
    check-cast v1, Lcom/inmobi/ads/ag;

    .line 4099
    iget v1, v1, Lcom/inmobi/ads/ag;->C:I

    .line 394
    if-lt p1, v1, :cond_1

    move-object v0, v2

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_1
    check-cast v0, Lcom/inmobi/ads/ag;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ag;->i(I)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 398
    goto :goto_0
.end method

.method final a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeAsset$AssetType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/inmobi/ads/ai;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1315
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->e:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    if-nez v0, :cond_0

    move v0, v1

    .line 386
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 381
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    check-cast v0, Lcom/inmobi/ads/ag;

    .line 3099
    iget v0, v0, Lcom/inmobi/ads/ag;->C:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-object v0

    .line 1296
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1297
    iget-object v0, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    goto :goto_0

    .line 1299
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    if-eqz v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    iget-object v0, v0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    goto :goto_0
.end method

.method final c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 17305
    if-nez v0, :cond_0

    move v0, v1

    .line 820
    :goto_0
    return v0

    .line 17367
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 17368
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17369
    check-cast v0, Lcom/inmobi/ads/ag;

    .line 811
    :goto_1
    if-nez v0, :cond_3

    .line 814
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->g()Z

    move-result v0

    goto :goto_0

    .line 17373
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 816
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->b()I

    move-result v0

    if-gtz v0, :cond_4

    move v0, v1

    .line 818
    goto :goto_0

    .line 820
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->g()Z

    move-result v0

    goto :goto_0
.end method
