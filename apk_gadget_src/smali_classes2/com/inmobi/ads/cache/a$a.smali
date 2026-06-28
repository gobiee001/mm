.class public final Lcom/inmobi/ads/cache/a$a;
.super Ljava/lang/Object;
.source "AdAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/inmobi/ads/cache/a$a;->a:I

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/cache/a$a;->e:J

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/cache/a$a;->f:J

    .line 42
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE,dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 179
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 185
    :goto_0
    return-wide v0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 185
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IJ)Lcom/inmobi/ads/cache/a$a;
    .locals 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/ads/cache/a$a;->c:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/inmobi/ads/cache/a$a;->b:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/inmobi/ads/cache/a$a;->g:J

    .line 52
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/network/c;IJ)Lcom/inmobi/ads/cache/a$a;
    .locals 25

    .prologue
    .line 67
    .line 1070
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/inmobi/commons/core/network/c;->c:Ljava/util/Map;

    move-object/from16 v20, v0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 70
    const-wide/16 v4, 0x0

    .line 72
    const-wide/16 v14, 0x0

    .line 73
    const-wide/16 v18, 0x0

    .line 74
    const-wide/16 v16, 0x0

    .line 75
    const-wide/16 v10, 0x0

    .line 76
    const-wide/16 v8, 0x0

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v6, 0x0

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    const-string v2, "Date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 85
    const-string v2, "Date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    if-eqz v2, :cond_0

    .line 87
    invoke-static {v2}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 91
    :cond_0
    const-string v2, "Cache-Control"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 92
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 93
    const-string v2, "Cache-Control"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    if-eqz v2, :cond_c

    .line 95
    const/4 v12, 0x1

    .line 96
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 97
    const/4 v2, 0x0

    move v3, v6

    move-wide v6, v8

    move-wide v8, v10

    :goto_0
    array-length v10, v13

    if-ge v2, v10, :cond_5

    .line 98
    aget-object v10, v13, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 99
    const-string v11, "no-cache"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "no-store"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 102
    const-string v11, "max-age="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 104
    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 97
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v10

    .line 106
    invoke-static {}, Lcom/inmobi/ads/cache/a;->b()Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_2
    const-string v11, "stale-while-revalidate="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 110
    const/16 v11, 0x17

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    goto :goto_1

    .line 111
    :catch_1
    move-exception v10

    .line 112
    invoke-static {}, Lcom/inmobi/ads/cache/a;->b()Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_3
    const-string v11, "must-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "proxy-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 115
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move-wide v10, v8

    move-wide v8, v6

    move v6, v3

    move v3, v12

    .line 121
    :goto_2
    const-string v2, "Expires"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 122
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 123
    const-string v2, "Expires"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    if-eqz v2, :cond_b

    .line 125
    invoke-static {v2}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 129
    :goto_3
    const-string v2, "Last-Modified"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 130
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 131
    const-string v2, "Last-Modified"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    if-eqz v2, :cond_6

    .line 133
    invoke-static {v2}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;)J

    .line 137
    :cond_6
    const-string v2, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 138
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 139
    const-string v2, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    :cond_7
    if-eqz v3, :cond_9

    .line 145
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v10

    add-long v4, v22, v2

    .line 146
    if-eqz v6, :cond_8

    move-wide v2, v4

    .line 155
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inmobi/ads/cache/a$a;->c:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/inmobi/ads/cache/a$a;->d:Ljava/lang/String;

    .line 157
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inmobi/ads/cache/a$a;->b:I

    .line 158
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p5

    add-long v6, v6, v22

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/inmobi/ads/cache/a$a;->g:J

    .line 159
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/inmobi/ads/cache/a$a;->h:J

    .line 160
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/inmobi/ads/cache/a$a;->g:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/inmobi/ads/cache/a$a;->g:J

    .line 161
    return-object p0

    .line 146
    :cond_8
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    add-long/2addr v2, v4

    goto :goto_4

    .line 149
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_a

    cmp-long v2, v12, v4

    if-ltz v2, :cond_a

    .line 151
    sub-long v2, v12, v4

    add-long v2, v2, v22

    move-wide v4, v2

    .line 152
    goto :goto_4

    :cond_a
    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    goto :goto_4

    :cond_b
    move-wide v12, v14

    goto/16 :goto_3

    :cond_c
    move v3, v7

    goto/16 :goto_2
.end method

.method public final a()Lcom/inmobi/ads/cache/a;
    .locals 14

    .prologue
    .line 190
    new-instance v1, Lcom/inmobi/ads/cache/a;

    iget v2, p0, Lcom/inmobi/ads/cache/a$a;->a:I

    iget-object v3, p0, Lcom/inmobi/ads/cache/a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/ads/cache/a$a;->d:Ljava/lang/String;

    iget v5, p0, Lcom/inmobi/ads/cache/a$a;->b:I

    iget-wide v6, p0, Lcom/inmobi/ads/cache/a$a;->e:J

    iget-wide v8, p0, Lcom/inmobi/ads/cache/a$a;->f:J

    iget-wide v10, p0, Lcom/inmobi/ads/cache/a$a;->g:J

    iget-wide v12, p0, Lcom/inmobi/ads/cache/a$a;->h:J

    invoke-direct/range {v1 .. v13}, Lcom/inmobi/ads/cache/a;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    return-object v1
.end method
