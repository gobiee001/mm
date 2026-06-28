.class final Lcom/inmobi/ads/ah$a;
.super Lcom/inmobi/ads/au$a;
.source "NativeCtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/au$a$a;Lcom/inmobi/ads/av;)V
    .locals 15

    .prologue
    .line 32
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

    move-object/from16 v14, p16

    invoke-direct/range {v1 .. v14}, Lcom/inmobi/ads/au$a;-><init>(IIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/av;)V

    .line 35
    move/from16 v0, p13

    iput v0, p0, Lcom/inmobi/ads/ah$a;->l:I

    .line 36
    const v1, 0x7fffffff

    iput v1, p0, Lcom/inmobi/ads/ah$a;->n:I

    .line 37
    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string p14, "#ff000000"

    :cond_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/inmobi/ads/ah$a;->m:Ljava/lang/String;

    .line 38
    move-object/from16 v0, p15

    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    new-array v2, v1, [Lcom/inmobi/ads/au$a$a;

    iput-object v2, p0, Lcom/inmobi/ads/ah$a;->o:[Lcom/inmobi/ads/au$a$a;

    .line 40
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/ads/ah$a;->o:[Lcom/inmobi/ads/au$a$a;

    const/4 v4, 0x0

    move-object/from16 v0, p15

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-void
.end method
