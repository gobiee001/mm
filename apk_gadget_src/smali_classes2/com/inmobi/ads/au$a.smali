.class Lcom/inmobi/ads/au$a;
.super Lcom/inmobi/ads/af;
.source "NativeTextAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/au$a$a;
    }
.end annotation


# instance fields
.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:[Lcom/inmobi/ads/au$a$a;

.field p:I


# direct methods
.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[Lcom/inmobi/ads/au$a$a;Lcom/inmobi/ads/av;)V
    .locals 15

    .prologue
    .line 105
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p18

    invoke-direct/range {v1 .. v14}, Lcom/inmobi/ads/af;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V

    .line 108
    move/from16 v0, p13

    iput v0, p0, Lcom/inmobi/ads/au$a;->l:I

    .line 109
    invoke-virtual/range {p16 .. p16}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string p16, "#ff000000"

    :cond_0
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/inmobi/ads/au$a;->m:Ljava/lang/String;

    .line 110
    move/from16 v0, p15

    iput v0, p0, Lcom/inmobi/ads/au$a;->n:I

    .line 111
    move-object/from16 v0, p17

    array-length v1, v0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 112
    new-array v2, v1, [Lcom/inmobi/ads/au$a$a;

    iput-object v2, p0, Lcom/inmobi/ads/au$a;->o:[Lcom/inmobi/ads/au$a$a;

    .line 113
    move/from16 v0, p14

    iput v0, p0, Lcom/inmobi/ads/au$a;->p:I

    .line 114
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/ads/au$a;->o:[Lcom/inmobi/ads/au$a$a;

    const/4 v4, 0x0

    move-object/from16 v0, p17

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V
    .locals 20

    .prologue
    .line 87
    const/16 v14, 0xc

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const-string v17, "#ff000000"

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/inmobi/ads/au$a$a;

    move-object/from16 v18, v0

    const/4 v1, 0x0

    sget-object v2, Lcom/inmobi/ads/au$a$a;->a:Lcom/inmobi/ads/au$a$a;

    aput-object v2, v18, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v19, p13

    invoke-direct/range {v1 .. v19}, Lcom/inmobi/ads/au$a;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[Lcom/inmobi/ads/au$a$a;Lcom/inmobi/ads/av;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/au$a;->j:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/inmobi/ads/au$a;->l:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/au$a;->m:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()[Lcom/inmobi/ads/au$a$a;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/au$a;->o:[Lcom/inmobi/ads/au$a$a;

    return-object v0
.end method
