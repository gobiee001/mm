.class public Lcom/chartboost/sdk/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/c$a;
    }
.end annotation


# instance fields
.field private final A:J

.field private final B:[Ljava/lang/String;

.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lcom/chartboost/sdk/Libraries/f;

.field final c:Landroid/os/Handler;

.field final d:Lcom/chartboost/sdk/c;

.field final e:Lcom/chartboost/sdk/impl/a;

.field f:I

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/d;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Lcom/chartboost/sdk/impl/j;

.field private final l:Lcom/chartboost/sdk/impl/ab;

.field private final m:Lcom/chartboost/sdk/impl/ac;

.field private final n:Lcom/chartboost/sdk/impl/aj;

.field private final o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/content/SharedPreferences;

.field private final q:Lcom/chartboost/sdk/Libraries/i;

.field private final r:Lcom/chartboost/sdk/Tracking/a;

.field private final s:Lcom/chartboost/sdk/impl/ae;

.field private final t:Lcom/chartboost/sdk/d;

.field private final u:Lcom/chartboost/sdk/impl/af;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
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

.field private final z:J


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/aj;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/a;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/chartboost/sdk/impl/j;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ab;",
            "Lcom/chartboost/sdk/impl/ac;",
            "Lcom/chartboost/sdk/impl/aj;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Landroid/os/Handler;",
            "Lcom/chartboost/sdk/c;",
            "Lcom/chartboost/sdk/impl/ae;",
            "Lcom/chartboost/sdk/d;",
            "Lcom/chartboost/sdk/impl/af;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/chartboost/sdk/impl/c;->f:I

    .line 127
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/c;->z:J

    .line 130
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/c;->A:J

    .line 132
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ASKED_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ASKED_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "REQUESTING_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "REQUESTING_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "DOWNLOADING_TO_CACHE"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "DOWNLOADING_TO_SHOW"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "READY"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ASKING_UI_TO_SHOW_AD"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "DONE"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->B:[Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 161
    iput-object p3, p0, Lcom/chartboost/sdk/impl/c;->k:Lcom/chartboost/sdk/impl/j;

    .line 162
    iput-object p4, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 163
    iput-object p5, p0, Lcom/chartboost/sdk/impl/c;->l:Lcom/chartboost/sdk/impl/ab;

    .line 164
    iput-object p6, p0, Lcom/chartboost/sdk/impl/c;->m:Lcom/chartboost/sdk/impl/ac;

    .line 165
    iput-object p7, p0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    .line 166
    iput-object p8, p0, Lcom/chartboost/sdk/impl/c;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    iput-object p9, p0, Lcom/chartboost/sdk/impl/c;->p:Landroid/content/SharedPreferences;

    .line 168
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    .line 169
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    .line 170
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    .line 171
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Lcom/chartboost/sdk/c;

    .line 172
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->s:Lcom/chartboost/sdk/impl/ae;

    .line 173
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->t:Lcom/chartboost/sdk/d;

    .line 174
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->u:Lcom/chartboost/sdk/impl/af;

    .line 176
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    .line 178
    const/4 v2, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/c;->v:I

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    .line 182
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->i:Ljava/util/SortedSet;

    .line 183
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->h:Ljava/util/SortedSet;

    .line 185
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->x:Ljava/util/Map;

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/c;->y:Ljava/util/Map;

    .line 188
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/c;->w:Z

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/Libraries/i;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    return-object v0
.end method

.method private a(Lcom/chartboost/sdk/impl/d;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;
    .locals 18

    .prologue
    .line 735
    new-instance v2, Lcom/chartboost/sdk/Model/c;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    new-instance v4, Lcom/chartboost/sdk/impl/b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/chartboost/sdk/impl/b;-><init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chartboost/sdk/impl/c;->l:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/chartboost/sdk/impl/c;->p:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/chartboost/sdk/impl/c;->d:Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/chartboost/sdk/impl/c;->s:Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/chartboost/sdk/impl/c;->t:Lcom/chartboost/sdk/d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chartboost/sdk/impl/c;->u:Lcom/chartboost/sdk/impl/af;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, p2

    invoke-direct/range {v2 .. v17}, Lcom/chartboost/sdk/Model/c;-><init>(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/d;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/aj;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    if-nez v0, :cond_0

    .line 714
    const-string v0, "AdUnitManager"

    const-string v2, "AdUnit does not have a template body"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 730
    :goto_0
    return-object v0

    .line 718
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Model/b;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 719
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 721
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 722
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 727
    :cond_1
    :try_start_0
    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/l;->a(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "loadTemplateHtml"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 730
    goto :goto_0
.end method

.method private a(Lcom/chartboost/sdk/impl/d;ILjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 381
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget v1, v1, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v1, v10, :cond_0

    move v6, v8

    .line 382
    :goto_0
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v1, :cond_1

    if-nez v6, :cond_1

    move v7, v8

    .line 384
    :goto_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    .line 386
    new-instance v1, Lcom/chartboost/sdk/impl/c$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/impl/c$1;-><init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;JZZ)V

    .line 415
    iget v2, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ne v2, v10, :cond_2

    .line 416
    :goto_2
    if-eqz v6, :cond_3

    .line 417
    new-instance v2, Lcom/chartboost/sdk/impl/ad;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 419
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string v0, "raw"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;

    .line 442
    :goto_3
    const/4 v0, 0x1

    iput v0, v2, Lcom/chartboost/sdk/impl/ad;->j:I

    .line 444
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->l:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_4
    return-void

    :cond_0
    move v6, v9

    .line 381
    goto :goto_0

    :cond_1
    move v7, v9

    .line 382
    goto :goto_1

    :cond_2
    move v8, v9

    .line 415
    goto :goto_2

    .line 423
    :cond_3
    if-eqz v7, :cond_4

    .line 424
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/e;->F:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    new-instance v2, Lcom/chartboost/sdk/impl/ag;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ag;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    const-string v1, "cache_assets"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 428
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 429
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/ag;->l:Z

    .line 432
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 448
    :catch_0
    move-exception v0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendAdGetRequest"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 450
    new-instance v0, Lcom/chartboost/sdk/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v2, "error sending ad-get request"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_4

    .line 434
    :cond_4
    :try_start_1
    new-instance v2, Lcom/chartboost/sdk/impl/ad;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    move v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 435
    const-string v0, "local-videos"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/f;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 437
    const-string v0, "location"

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    const-string v0, "cache"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private a(Lcom/chartboost/sdk/Model/a;)Z
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v1, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 354
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    .line 355
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 356
    const-string v1, "AdUnitManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/SortedSet;IIILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/chartboost/sdk/impl/d;",
            ">;III",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/d;

    .line 271
    iget v2, v0, Lcom/chartboost/sdk/impl/d;->c:I

    if-ne v2, p2, :cond_1

    iget-object v2, v0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v2, :cond_2

    .line 272
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v2, v0, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/c;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v3, v0, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/a;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 280
    const/16 v2, 0x8

    iput v2, v0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 281
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 286
    :cond_3
    iput p3, v0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 288
    invoke-direct {p0, v0, p4, p5}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;ILjava/lang/String;)V

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    .line 771
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, p2}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v5, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 777
    :goto_1
    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ne v1, v6, :cond_3

    :cond_1
    const-string v2, "cache"

    .line 780
    :goto_2
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 782
    if-eqz v1, :cond_6

    .line 783
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    const-string v3, "native"

    .line 786
    :goto_4
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ltz v0, :cond_7

    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->B:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->B:[Ljava/lang/String;

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    aget-object v7, v0, v1

    .line 789
    :goto_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    .line 792
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    .line 789
    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    .line 776
    goto :goto_1

    .line 777
    :cond_3
    const-string v2, "show"

    goto :goto_2

    .line 780
    :cond_4
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 783
    :cond_5
    const-string v3, "web"

    goto :goto_4

    :cond_6
    move-object v3, v0

    goto :goto_4

    .line 786
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method private b(Lcom/chartboost/sdk/impl/d;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 799
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->p:Z

    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 805
    :goto_1
    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-eq v1, v10, :cond_1

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ne v1, v11, :cond_3

    :cond_1
    const-string v3, "cache"

    .line 811
    :goto_2
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v1, :cond_4

    .line 812
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget v1, v1, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 816
    :goto_3
    if-eqz v1, :cond_6

    .line 817
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    const-string v4, "native"

    .line 820
    :goto_4
    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ltz v1, :cond_7

    iget v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->B:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->B:[Ljava/lang/String;

    iget v2, p1, Lcom/chartboost/sdk/impl/d;->c:I

    aget-object v1, v1, v2

    .line 823
    :goto_5
    const/16 v2, 0xb

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v6, "adGetRequestSubmitToCallbackMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/d;->p:Ljava/lang/Integer;

    .line 824
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v8

    const/4 v6, 0x1

    const-string v7, "downloadRequestToCompletionMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/d;->n:Ljava/lang/Integer;

    .line 825
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v6, "downloadAccumulatedProcessingMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/d;->o:Ljava/lang/Integer;

    .line 826
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v10

    const/4 v6, 0x3

    const-string v7, "adGetRequestGetResponseCodeMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/d;->q:Ljava/lang/Integer;

    .line 827
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v6, "adGetRequestReadDataMs"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/d;->r:Ljava/lang/Integer;

    .line 828
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v11

    const/4 v6, 0x5

    const-string v7, "cacheRequestToReadyMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/d;->k:Ljava/lang/Integer;

    .line 829
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "showRequestToReadyMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/d;->l:Ljava/lang/Integer;

    .line 830
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "showRequestToShownMs"

    iget-object v9, p1, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    .line 831
    invoke-static {v7, v9}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "adId"

    .line 832
    invoke-static {v7, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    aput-object v0, v2, v6

    const/16 v0, 0x9

    const-string v6, "location"

    iget-object v7, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    .line 833
    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v2, v0

    const/16 v0, 0xa

    const-string v6, "state"

    .line 834
    invoke-static {v6, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v2, v0

    .line 823
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v7

    .line 837
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v2, v1, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    move-object v1, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v5

    .line 803
    goto/16 :goto_1

    .line 805
    :cond_3
    const-string v3, "show"

    goto/16 :goto_2

    .line 814
    :cond_4
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->e:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 817
    :cond_5
    const-string v4, "web"

    goto/16 :goto_4

    :cond_6
    move-object v4, v5

    goto/16 :goto_4

    .line 820
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/chartboost/sdk/impl/d;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5
.end method

.method private c()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 225
    .line 227
    iget v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    if-ne v0, v4, :cond_8

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v6

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v3

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    iget-object v9, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/d;

    .line 232
    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 237
    iget-wide v10, p0, Lcom/chartboost/sdk/impl/c;->z:J

    sub-long/2addr v0, v6

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 238
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v9, v0, v10

    if-gez v9, :cond_7

    .line 239
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 240
    goto :goto_0

    :cond_2
    move-object v6, v2

    .line 243
    :goto_2
    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5

    .line 244
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 245
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x5

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    cmp-long v0, v0, v8

    if-gtz v0, :cond_4

    move v0, v4

    .line 246
    :goto_3
    if-eqz v0, :cond_5

    .line 261
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v0, v5

    .line 245
    goto :goto_3

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 252
    iput-object v3, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 255
    :cond_6
    if-eqz v6, :cond_3

    .line 256
    iget-object v7, p0, Lcom/chartboost/sdk/impl/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/chartboost/sdk/impl/c$a;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c$a;-><init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 258
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    invoke-interface {v7, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_4

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    move-object v6, v3

    goto :goto_2
.end method

.method private c(Lcom/chartboost/sdk/impl/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x5

    .line 467
    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 472
    :goto_1
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->g:I

    if-le v0, v1, :cond_0

    .line 476
    new-instance v0, Lcom/chartboost/sdk/impl/c$2;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/c$2;-><init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;)V

    .line 488
    iput v1, p1, Lcom/chartboost/sdk/impl/d;->g:I

    .line 489
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->k:Lcom/chartboost/sdk/impl/j;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 493
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/f;

    .line 489
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/chartboost/sdk/impl/j;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/f;)V

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x2

    move v1, v0

    goto :goto_1
.end method

.method private d()V
    .locals 8

    .prologue
    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    :cond_1
    return-void
.end method

.method private d(Lcom/chartboost/sdk/impl/d;)V
    .locals 7

    .prologue
    .line 515
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 517
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    .line 518
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 519
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/chartboost/sdk/impl/d;->k:Ljava/lang/Integer;

    .line 520
    :cond_0
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 521
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/chartboost/sdk/impl/d;->l:Ljava/lang/Integer;

    .line 523
    :cond_1
    const-string v1, "ad-unit-cached"

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x6

    iput v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 527
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/d;->f:Z

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 533
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->h(Lcom/chartboost/sdk/impl/d;)V

    .line 535
    :cond_3
    return-void
.end method

.method private e(Lcom/chartboost/sdk/impl/d;)V
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 539
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->g(Lcom/chartboost/sdk/impl/d;)V

    .line 541
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 943
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget v2, v2, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v2, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v1

    .line 946
    :cond_1
    sget-boolean v2, Lcom/chartboost/sdk/i;->u:Z

    if-nez v2, :cond_0

    .line 949
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->p:Landroid/content/SharedPreferences;

    const-string v3, "cbPrefSessionCount"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 950
    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f(Lcom/chartboost/sdk/impl/d;)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const/16 v0, 0x8

    iput v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    .line 548
    return-void
.end method

.method private g(Lcom/chartboost/sdk/impl/d;)V
    .locals 6

    .prologue
    .line 566
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    .line 568
    iget-wide v2, v0, Lcom/chartboost/sdk/Model/e;->s:J

    .line 569
    iget v1, v0, Lcom/chartboost/sdk/Model/e;->t:I

    .line 571
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->y:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 572
    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->y:Ljava/util/Map;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-long/2addr v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 578
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->x:Ljava/util/Map;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void
.end method

.method private h(Lcom/chartboost/sdk/impl/d;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->m:Lcom/chartboost/sdk/impl/ac;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    :goto_0
    return-void

    .line 661
    :cond_0
    :try_start_0
    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    .line 662
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v0

    iget-object v4, v0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 664
    iget v0, v3, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v0, :cond_b

    .line 665
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/a;->g:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/chartboost/sdk/Model/a;->p:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 666
    :cond_1
    iget-object v0, v3, Lcom/chartboost/sdk/Model/a;->a:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/c;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_2

    .line 668
    const-string v1, "AdUnitManager"

    const-string v5, "Video media unavailable for the impression"

    invoke-static {v1, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 674
    iget-object v1, v3, Lcom/chartboost/sdk/Model/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/b;

    .line 675
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Model/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 676
    const-string v1, "AdUnitManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/chartboost/sdk/Model/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    :goto_3
    move-object v1, v0

    .line 679
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 682
    :cond_4
    if-nez v0, :cond_9

    .line 685
    iget v1, v3, Lcom/chartboost/sdk/Model/a;->b:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    .line 686
    invoke-direct {p0, v3, v4}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/Model/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 687
    if-nez v1, :cond_7

    .line 688
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 691
    :goto_4
    if-nez v1, :cond_6

    .line 692
    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Ljava/lang/String;)Lcom/chartboost/sdk/Model/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 700
    :goto_5
    if-nez v1, :cond_5

    .line 701
    const/4 v1, 0x7

    iput v1, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 702
    new-instance v1, Lcom/chartboost/sdk/c$c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->d:Lcom/chartboost/sdk/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 703
    iput-object v0, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 704
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->j:Ljava/lang/Long;

    .line 705
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "showReady"

    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 697
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-object v0, v2

    goto :goto_5

    .line 707
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :cond_8
    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    :cond_9
    move-object v1, v0

    move-object v0, v2

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private i(Lcom/chartboost/sdk/impl/d;)V
    .locals 6

    .prologue
    .line 887
    new-instance v5, Lcom/chartboost/sdk/impl/e;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-direct {v5, p0, v0}, Lcom/chartboost/sdk/impl/e;-><init>(Lcom/chartboost/sdk/impl/c;Ljava/lang/String;)V

    .line 889
    new-instance v0, Lcom/chartboost/sdk/impl/ad;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->n:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 890
    const/4 v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ad;->j:I

    .line 894
    const-string v1, "cached"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget-object v1, v1, Lcom/chartboost/sdk/Model/a;->f:Ljava/lang/String;

    .line 897
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 898
    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    :cond_0
    const-string v2, "location"

    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 900
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->l:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 901
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->r:Lcom/chartboost/sdk/Tracking/a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    iget v3, v3, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 3

    .prologue
    .line 908
    if-nez p1, :cond_0

    .line 909
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 935
    :goto_0
    return-object v0

    .line 912
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 914
    if-nez v1, :cond_1

    .line 916
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 919
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    .line 920
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 921
    if-eqz v0, :cond_2

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 923
    if-nez v0, :cond_3

    .line 925
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 921
    :cond_2
    const-string v0, "video-landscape"

    goto :goto_1

    .line 928
    :cond_3
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 931
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0

    .line 934
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/f;->d()Lcom/chartboost/sdk/Libraries/g;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/d;

    .line 296
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 299
    :cond_0
    iget-object v0, v0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    .line 195
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    .line 197
    :cond_0
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 850
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 851
    const/4 v0, 0x6

    iput v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 852
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->j:Ljava/lang/Long;

    .line 853
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    .line 854
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    .line 856
    :cond_0
    return-void
.end method

.method a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 756
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 757
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    if-ne p2, v0, :cond_1

    .line 758
    const/4 v0, 0x6

    iput v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 759
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->j:Ljava/lang/Long;

    .line 760
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    .line 761
    iput-object v2, p1, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->g(Lcom/chartboost/sdk/impl/d;)V

    .line 764
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    .line 765
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    goto :goto_0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 563
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    .line 557
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 558
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->g(Lcom/chartboost/sdk/impl/d;)V

    .line 562
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 456
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    .line 458
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    .line 459
    iput-object p2, p1, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    .line 461
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->c(Lcom/chartboost/sdk/impl/d;)V

    .line 463
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 458
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/chartboost/sdk/impl/d;ZII)V
    .locals 2

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 502
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->n:Ljava/lang/Integer;

    .line 503
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->o:Ljava/lang/Integer;

    .line 504
    if-eqz p2, :cond_2

    .line 505
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->d(Lcom/chartboost/sdk/impl/d;)V

    .line 511
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 507
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->e(Lcom/chartboost/sdk/impl/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 200
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/c;->w:Z

    if-nez v0, :cond_1

    .line 202
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/c;->w:Z

    .line 204
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/c;->d()V

    .line 206
    iget v0, p0, Lcom/chartboost/sdk/impl/c;->f:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->i:Ljava/util/SortedSet;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "show"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->h:Ljava/util/SortedSet;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "cache"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/c;->a(Ljava/util/SortedSet;IIILjava/lang/String;)Z

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iput-boolean v6, p0, Lcom/chartboost/sdk/impl/c;->w:Z

    .line 217
    :cond_1
    return-void

    .line 214
    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/chartboost/sdk/impl/c;->w:Z

    throw v0
.end method

.method b(Lcom/chartboost/sdk/impl/d;)V
    .locals 6

    .prologue
    .line 860
    iget v0, p1, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 863
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/d;->m:Ljava/lang/Integer;

    .line 865
    :cond_0
    const-string v0, "ad-unit-shown"

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->y:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/chartboost/sdk/impl/d;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->i(Lcom/chartboost/sdk/impl/d;)V

    .line 872
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    .line 873
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    .line 875
    :cond_1
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 306
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 308
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/c;->A:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/d;

    .line 316
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/Model/a;

    .line 317
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/Model/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 322
    :cond_1
    if-nez v0, :cond_2

    .line 323
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    iget v2, p0, Lcom/chartboost/sdk/impl/c;->v:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/c;->v:I

    invoke-direct {v0, v2, p1, v4}, Lcom/chartboost/sdk/impl/d;-><init>(ILjava/lang/String;I)V

    .line 324
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->h:Ljava/util/SortedSet;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/chartboost/sdk/impl/d;->f:Z

    .line 328
    iget-object v2, v0, Lcom/chartboost/sdk/impl/d;->h:Ljava/lang/Long;

    if-nez v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/chartboost/sdk/impl/d;->h:Ljava/lang/Long;

    .line 332
    :cond_3
    iget v0, v0, Lcom/chartboost/sdk/impl/d;->c:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 582
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 584
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/chartboost/sdk/impl/c;->A:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/d;

    .line 589
    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/chartboost/sdk/impl/d;

    iget v1, p0, Lcom/chartboost/sdk/impl/c;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/c;->v:I

    invoke-direct {v0, v1, p1, v4}, Lcom/chartboost/sdk/impl/d;-><init>(ILjava/lang/String;I)V

    .line 591
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->i:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_1
    iget-object v1, v0, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->q:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/d;->i:Ljava/lang/Long;

    .line 599
    :cond_2
    iget v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    packed-switch v1, :pswitch_data_0

    .line 634
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    goto :goto_0

    .line 601
    :pswitch_1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->h:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 602
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c;->i:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 603
    iput v4, v0, Lcom/chartboost/sdk/impl/d;->c:I

    goto :goto_1

    .line 610
    :pswitch_2
    const/4 v1, 0x3

    iput v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    goto :goto_1

    .line 617
    :pswitch_3
    const/4 v1, 0x5

    iput v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 618
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/c;->c(Lcom/chartboost/sdk/impl/d;)V

    goto :goto_1

    .line 625
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/c;->h(Lcom/chartboost/sdk/impl/d;)V

    goto :goto_1

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/d;

    .line 880
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/chartboost/sdk/impl/d;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 881
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/c;->f(Lcom/chartboost/sdk/impl/d;)V

    .line 882
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->b()V

    .line 884
    :cond_0
    return-void
.end method
