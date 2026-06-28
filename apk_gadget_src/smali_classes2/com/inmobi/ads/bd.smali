.class public Lcom/inmobi/ads/bd;
.super Ljava/lang/Object;
.source "PlacementDao.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/inmobi/ads/bd;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/ads/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bd;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/bd;->d:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "placement_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tp_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_accessed_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ad_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m10_context"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/bd;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 59
    const-string v1, "placement"

    const-string v2, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, placement_id INTEGER NOT NULL,tp_key TEXT,last_accessed_ts INTEGER NOT NULL,ad_type TEXT NOT NULL,m10_context TEXT NOT NULL,UNIQUE(placement_id,m10_context,tp_key))"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 61
    return-void
.end method

.method public static a(JLjava/lang/String;)I
    .locals 8

    .prologue
    .line 64
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p0

    sub-long/2addr v2, v4

    .line 67
    const-string v1, "placement"

    const-string v4, "ad_type=? AND last_accessed_ts<?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expired pids from cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 70
    return v1
.end method

.method public static a()Lcom/inmobi/ads/bd;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/inmobi/ads/bd;->c:Lcom/inmobi/ads/bd;

    .line 44
    if-nez v0, :cond_1

    .line 45
    sget-object v1, Lcom/inmobi/ads/bd;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/bd;->c:Lcom/inmobi/ads/bd;

    .line 47
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/inmobi/ads/bd;

    invoke-direct {v0}, Lcom/inmobi/ads/bd;-><init>()V

    .line 49
    sput-object v0, Lcom/inmobi/ads/bd;->c:Lcom/inmobi/ads/bd;

    .line 51
    :cond_0
    monitor-exit v1

    .line 53
    :cond_1
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 115
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 117
    const-string v1, "placement"

    sget-object v2, Lcom/inmobi/ads/bd;->a:[Ljava/lang/String;

    const-string v3, "ad_type=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 120
    new-instance v2, Lcom/inmobi/ads/bc;

    invoke-direct {v2, v0}, Lcom/inmobi/ads/bc;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    return-object v9
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/List;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bc;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 111
    :goto_0
    monitor-exit p0

    return v0

    .line 83
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    move v2, v9

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 85
    const-string v3, "placement_id = ? AND m10_context = ? AND tp_key=?"

    .line 87
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bc;

    .line 88
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1057
    iget-wide v6, v1, Lcom/inmobi/ads/bc;->a:J

    .line 88
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1069
    iget-object v6, v1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 89
    invoke-virtual {v6}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 2061
    iget-object v6, v1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 89
    aput-object v6, v4, v5

    .line 90
    const-string v5, "placement"

    .line 2077
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2078
    const-string v7, "placement_id"

    iget-wide v10, v1, Lcom/inmobi/ads/bc;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2079
    const-string v7, "last_accessed_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2080
    const-string v7, "tp_key"

    iget-object v8, v1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    const-string v7, "ad_type"

    iget-object v8, v1, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const-string v7, "m10_context"

    iget-object v1, v1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 93
    :cond_1
    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 94
    sub-int v10, v1, p2

    .line 96
    if-lez v10, :cond_3

    .line 97
    const-string v1, "placement"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "last_accessed_ts ASC"

    .line 98
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 101
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 102
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v4, "id"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 101
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 105
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "["

    const-string v3, "("

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    const-string v3, ")"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v2, "placement"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id IN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v10

    .line 111
    goto/16 :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
