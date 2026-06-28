.class public Lcom/inmobi/ads/c;
.super Ljava/lang/Object;
.source "AdDao.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/ads/c;

.field private static c:Ljava/lang/Object;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/c;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/c;->c:Ljava/lang/Object;

    .line 69
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ad_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video_track_duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "click_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "video_trackers"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "companion_ads"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "web_vast"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "preload_webView"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "asset_urls"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ad_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ad_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "placement_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "tp_key"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "insertion_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "expiry_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "imp_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "m10_context"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "client_request_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 96
    const-string v1, "ad"

    const-string v2, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, placement_id INTEGER NOT NULL, ad_content TEXT NOT NULL, ad_type TEXT NOT NULL, ad_size TEXT, asset_urls TEXT, video_url TEXT, video_track_duration TEXT, click_url TEXT, video_trackers TEXT, companion_ads TEXT, web_vast TEXT, preload_webView INTEGER DEFAULT 0, insertion_ts INTEGER NOT NULL, imp_id TEXT NOT NULL, m10_context TEXT NOT NULL, tp_key TEXT, expiry_duration INTEGER NOT NULL, client_request_id TEXT NOT NULL)"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 98
    return-void
.end method

.method static a(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v1

    .line 134
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ad"

    const-string v2, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    .line 137
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    .line 3028
    iget-object v4, p3, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 138
    aput-object v4, v3, v7

    aput-object p4, v3, v8

    .line 135
    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    :goto_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 145
    return v0

    .line 140
    :cond_0
    const-string v0, "ad"

    const-string v2, "placement_id=? AND m10_context=? AND tp_key=?"

    new-array v3, v8, [Ljava/lang/String;

    .line 142
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 4028
    iget-object v4, p3, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 142
    aput-object v4, v3, v6

    aput-object p4, v3, v7

    .line 140
    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/inmobi/ads/a;)I
    .locals 1

    .prologue
    .line 257
    .line 8477
    iget-object v0, p0, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    .line 257
    invoke-static {v0}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 262
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 263
    const-string v2, "ad"

    const-string v3, "imp_id = ?"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 265
    return v1
.end method

.method static a(Ljava/lang/String;J)I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 103
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "ad_type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 126
    :goto_0
    return v9

    .line 112
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v9

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 113
    invoke-static {v1}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/inmobi/ads/a;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1481
    iget-wide v4, v1, Lcom/inmobi/ads/a;->d:J

    .line 116
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 120
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 2477
    iget-object v1, v1, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    .line 2257
    invoke-static {v1}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 121
    add-int/2addr v1, v2

    :goto_3
    move v2, v1

    .line 123
    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/ads/a;->b()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_2

    .line 124
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Deleted "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " expired ads from cache of type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    move v9, v2

    .line 126
    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public static a()Lcom/inmobi/ads/c;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/inmobi/ads/c;->b:Lcom/inmobi/ads/c;

    .line 82
    if-nez v0, :cond_1

    .line 83
    sget-object v1, Lcom/inmobi/ads/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/c;->b:Lcom/inmobi/ads/c;

    .line 85
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    .line 87
    sput-object v0, Lcom/inmobi/ads/c;->b:Lcom/inmobi/ads/c;

    .line 89
    :cond_0
    monitor-exit v1

    .line 91
    :cond_1
    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/inmobi/ads/a;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 270
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 274
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "imp_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v9

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;

    move-result-object v5

    goto :goto_0
.end method

.method private declared-synchronized d(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 160
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 163
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 166
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    .line 5028
    iget-object v6, p4, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 167
    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const-string v8, "1"

    .line 164
    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 175
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v9

    .line 178
    :goto_1
    monitor-exit p0

    return-object v0

    .line 169
    :cond_0
    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "placement_id=? AND m10_context=? AND tp_key=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 171
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 6028
    iget-object v6, p4, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 171
    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const-string v8, "1"

    .line 169
    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 212
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "video_url=? AND ad_size=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 223
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 224
    invoke-static {v0}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_0
    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "video_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    monitor-exit p0

    return-object v9
.end method

.method public final declared-synchronized a(Ljava/util/List;JILjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;JI",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v2

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/a;

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 8489
    iput-wide v6, v3, Lcom/inmobi/ads/a;->d:J

    .line 312
    invoke-virtual {v3}, Lcom/inmobi/ads/a;->a()Landroid/content/ContentValues;

    move-result-object v3

    .line 313
    const-string v5, "tp_key"

    move-object/from16 v0, p7

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v5, "ad"

    invoke-virtual {v2, v5, v3}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 318
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {p2, p3, v3, v0, v1}, Lcom/inmobi/ads/c;->a(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)I

    move-result v3

    .line 319
    sub-int v10, v3, p4

    .line 321
    if-lez v10, :cond_4

    .line 322
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 323
    const-string v4, "type"

    move-object/from16 v0, p5

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v4, "count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v4, "ads"

    const-string v5, "DbSpaceOverflow"

    invoke-static {v4, v5, v3}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    const-string v3, "ad"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const-string v5, "placement_id=? AND m10_context=? AND tp_key=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 329
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 9028
    move-object/from16 v0, p6

    iget-object v8, v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 329
    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p7, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "insertion_ts ASC"

    .line 330
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 327
    invoke-virtual/range {v2 .. v10}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 332
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 334
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 335
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v7, "id"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    .line 334
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 338
    :cond_3
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    const-string v4, "["

    const-string v5, "("

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 340
    const-string v4, "]"

    const-string v5, ")"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 342
    const-string v4, "ad"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id IN "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    :cond_4
    invoke-virtual {v2}, Lcom/inmobi/commons/core/c/b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method final declared-synchronized b(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;
    .locals 7

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/ads/c;->d(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v1

    .line 153
    const-string v2, "ad"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 4453
    iget v6, v0, Lcom/inmobi/ads/a;->a:I

    .line 153
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 235
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "video_url=? AND ad_size=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 246
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 247
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 248
    const-string v4, "ad"

    const-string v5, "id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    invoke-static {v1}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_0
    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "video_url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_1
    monitor-exit p0

    return-object v9
.end method

.method public final declared-synchronized c(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 187
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "placement_id=? AND ad_size=? AND m10_context=? AND tp_key=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    .line 7028
    iget-object v6, p4, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 191
    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    .line 188
    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 201
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 202
    invoke-static {v0}, Lcom/inmobi/ads/a$a;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :cond_0
    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/inmobi/ads/c;->d:[Ljava/lang/String;

    const-string v3, "placement_id=? AND m10_context=? AND tp_key=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 197
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 8028
    iget-object v6, p4, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 197
    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "insertion_ts"

    const/4 v8, 0x0

    .line 194
    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_1
    monitor-exit p0

    return-object v9
.end method
