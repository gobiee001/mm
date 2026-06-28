.class public Lcom/inmobi/commons/core/d/c;
.super Ljava/lang/Object;
.source "TelemetryComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/d/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/commons/core/d/c;

.field private static d:Z

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/commons/core/d/e;

.field private static final o:Ljava/util/Random;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/inmobi/commons/core/d/c$a;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v0, Lcom/inmobi/commons/core/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->b:Ljava/lang/Object;

    .line 45
    sput-boolean v1, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->o:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/inmobi/commons/core/d/e;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/e;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 1041
    const-string v0, "telemetry"

    .line 83
    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 1171
    iget-object v1, v1, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 83
    invoke-static {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V

    .line 84
    new-instance v0, Lcom/inmobi/commons/core/d/c$1;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/core/d/c$1;-><init>(Lcom/inmobi/commons/core/d/c;)V

    .line 98
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 99
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/d/c;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 63
    if-nez v0, :cond_1

    .line 64
    sget-object v1, Lcom/inmobi/commons/core/d/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/inmobi/commons/core/d/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/c;-><init>()V

    .line 68
    sput-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 70
    :cond_0
    monitor-exit v1

    .line 73
    :cond_1
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 294
    invoke-static {}, Lcom/inmobi/commons/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_0

    .line 301
    if-lez p1, :cond_2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Begin reporting after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/d/c;)V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/d/c;Lcom/inmobi/commons/core/d/g;)V
    .locals 4

    .prologue
    .line 6174
    invoke-static {p1}, Lcom/inmobi/commons/core/d/c;->b(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;

    move-result-object v0

    .line 6175
    if-eqz v0, :cond_0

    .line 7070
    iget-boolean v1, v0, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 6175
    if-eqz v1, :cond_0

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 7106
    iget-object v1, v1, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 8070
    iget-boolean v1, v1, Lcom/inmobi/commons/core/d/d;->b:Z

    .line 6175
    if-nez v1, :cond_2

    .line 6176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Telemetry service is not enabled or registered for component: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9041
    iget-object v2, p1, Lcom/inmobi/commons/core/d/g;->c:Ljava/lang/String;

    .line 6177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|| type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9045
    iget-object v2, p1, Lcom/inmobi/commons/core/d/g;->b:Ljava/lang/String;

    .line 6177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Config :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12230
    :cond_1
    :goto_0
    return-void

    .line 6181
    :cond_2
    instance-of v0, p1, Lcom/inmobi/commons/core/d/b;

    if-eqz v0, :cond_3

    .line 6182
    invoke-static {}, Lcom/inmobi/commons/core/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9284
    :cond_3
    invoke-static {p1}, Lcom/inmobi/commons/core/d/c;->b(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;

    move-result-object v1

    .line 9285
    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 9193
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 10159
    iget-boolean v0, v0, Lcom/inmobi/commons/core/d/d$a;->c:Z

    .line 9194
    if-eqz v0, :cond_5

    .line 11041
    iget-object v0, p1, Lcom/inmobi/commons/core/d/g;->c:Ljava/lang/String;

    .line 11045
    iget-object v1, p1, Lcom/inmobi/commons/core/d/g;->b:Ljava/lang/String;

    .line 10349
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metric collected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@$#$@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10351
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 10352
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10353
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10354
    iget-object v3, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10358
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12225
    :cond_5
    instance-of v0, p1, Lcom/inmobi/commons/core/b/b;

    if-eqz v0, :cond_8

    .line 12228
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 12229
    invoke-static {p1}, Lcom/inmobi/commons/core/d/f;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 10045
    :cond_6
    iget-object v2, p1, Lcom/inmobi/commons/core/d/g;->b:Ljava/lang/String;

    .line 10082
    iget-object v0, v1, Lcom/inmobi/commons/core/d/d;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/d$a;

    .line 10083
    if-nez v0, :cond_4

    .line 10086
    new-instance v0, Lcom/inmobi/commons/core/d/d$a;

    .line 10095
    iget v3, v1, Lcom/inmobi/commons/core/d/d;->a:I

    .line 10099
    iget-boolean v1, v1, Lcom/inmobi/commons/core/d/d;->c:Z

    .line 10086
    invoke-direct {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/d$a;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 10356
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 10358
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 12233
    :cond_8
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 13146
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 12236
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 12237
    :try_start_2
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12238
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12240
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 12241
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->g()V

    .line 12243
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 12244
    invoke-static {}, Lcom/inmobi/commons/core/d/f;->b()I

    move-result v0

    .line 12245
    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 13162
    iget v1, v1, Lcom/inmobi/commons/core/d/e;->g:I

    .line 12246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current event count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Upper cap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12248
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1

    .line 13290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/c;->a(I)V

    goto/16 :goto_0

    .line 12238
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V
    .locals 4

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p1, :cond_2

    .line 119
    sget-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    new-instance v1, Lcom/inmobi/commons/core/d/d;

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 3171
    iget-object v3, v3, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 121
    invoke-direct {v1, p0, v2, v3}, Lcom/inmobi/commons/core/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/d/d;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    new-instance v3, Lcom/inmobi/commons/core/d/g;

    invoke-direct {v3, p0, p1}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 144
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 145
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error forming JSON payload for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 158
    :goto_2
    return-void

    .line 149
    :cond_1
    :try_start_3
    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4057
    :goto_3
    iput-object v1, v3, Lcom/inmobi/commons/core/d/g;->e:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 149
    :cond_2
    :try_start_4
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/inmobi/commons/core/d/d;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 2171
    iget-object v1, v1, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 107
    invoke-direct {v0, p0, p1, v1}, Lcom/inmobi/commons/core/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/d/d;)V

    .line 108
    invoke-static {p0, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V

    .line 109
    return-void
.end method

.method private static b(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;
    .locals 3

    .prologue
    .line 279
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    .line 5041
    iget-object v0, p0, Lcom/inmobi/commons/core/d/g;->c:Ljava/lang/String;

    .line 5130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5132
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5135
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/d;

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/d/c;)V
    .locals 7

    .prologue
    .line 40
    .line 13370
    iget-object v3, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    monitor-enter v3

    .line 13372
    :try_start_0
    new-instance v1, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v1}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 13373
    invoke-static {}, Lcom/inmobi/commons/core/d/f;->a()V

    .line 13374
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13375
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14366
    const-string v5, "\\@\\$\\#\\$\\@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 13377
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13378
    const-string v6, "count"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13379
    const/4 v1, 0x0

    aget-object v6, v5, v1

    const/4 v1, 0x1

    aget-object v5, v5, v1

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v6, v5, v1}, Lcom/inmobi/commons/core/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13383
    :catch_0
    move-exception v1

    goto :goto_0

    .line 13379
    :cond_0
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 13384
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 13385
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/inmobi/commons/core/d/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->g()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/commons/core/d/c;)V
    .locals 2

    .prologue
    .line 40
    .line 15333
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 15334
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 15336
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 15337
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 15338
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 15340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    .line 15341
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 15343
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/core/d/e;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Adding events "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "to persistence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 259
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 4162
    iget v0, v0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 260
    invoke-static {}, Lcom/inmobi/commons/core/d/f;->b()I

    move-result v2

    .line 261
    iget-object v3, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    .line 262
    if-gtz v3, :cond_1

    .line 263
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/inmobi/commons/core/d/f;->a(Ljava/util/List;)V

    .line 273
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    monitor-exit v1

    return-void

    .line 265
    :cond_1
    sub-int/2addr v0, v2

    .line 266
    if-lez v0, :cond_0

    .line 269
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/core/d/f;->a(Ljava/util/List;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Persistence will overflow, will add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " events to persistence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/inmobi/commons/core/d/e;

    sput-object p1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 104
    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/d/g;)V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/d/c$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    sget-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 316
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "telemetry"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 317
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance v0, Lcom/inmobi/commons/core/d/c$a;

    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/inmobi/commons/core/d/c$a;-><init>(Lcom/inmobi/commons/core/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    .line 320
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    .line 5290
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
