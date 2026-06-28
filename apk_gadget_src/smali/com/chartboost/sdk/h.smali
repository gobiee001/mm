.class public Lcom/chartboost/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/h$a;
    }
.end annotation


# static fields
.field private static v:Lcom/chartboost/sdk/h;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field final b:Lcom/chartboost/sdk/impl/j;

.field public final c:Lcom/chartboost/sdk/Libraries/d;

.field public final d:Lcom/chartboost/sdk/impl/c;

.field public final e:Lcom/chartboost/sdk/impl/a;

.field final f:Lcom/chartboost/sdk/impl/c;

.field final g:Lcom/chartboost/sdk/impl/a;

.field public final h:Lcom/chartboost/sdk/impl/ab;

.field final i:Lcom/chartboost/sdk/impl/k;

.field public final j:Lcom/chartboost/sdk/impl/aj;

.field final k:Lcom/chartboost/sdk/impl/c;

.field final l:Lcom/chartboost/sdk/impl/a;

.field public final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/content/SharedPreferences;

.field public final o:Lcom/chartboost/sdk/Tracking/a;

.field public final p:Landroid/os/Handler;

.field public final q:Lcom/chartboost/sdk/c;

.field public final r:Lcom/chartboost/sdk/impl/ae;

.field s:Z

.field t:Z

.field u:Z

.field private final w:Lcom/chartboost/sdk/impl/m;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/m;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 41

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 74
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->u:Z

    .line 97
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v40

    .line 99
    new-instance v2, Lcom/chartboost/sdk/impl/ac;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ac;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/sdk/impl/ac;

    .line 100
    new-instance v2, Lcom/chartboost/sdk/Libraries/i;

    invoke-direct {v2}, Lcom/chartboost/sdk/Libraries/i;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/Libraries/i;

    .line 102
    new-instance v2, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ai;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chartboost/sdk/impl/ai;

    .line 103
    new-instance v2, Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/ab;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/Libraries/i;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 111
    const-string v2, "cbPrefs"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 115
    :try_start_0
    const-string v2, "config"

    const-string/jumbo v3, "{}"

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    :goto_0
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-static {v12, v2, v13}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance v2, Lcom/chartboost/sdk/Model/e;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Model/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v12, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 128
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/impl/m;

    .line 129
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->a:Ljava/util/concurrent/Executor;

    .line 130
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    .line 132
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    .line 134
    new-instance v15, Lcom/chartboost/sdk/Libraries/f;

    move-object/from16 v0, p4

    invoke-direct {v15, v0, v8, v12}, Lcom/chartboost/sdk/Libraries/f;-><init>(Lcom/chartboost/sdk/impl/m;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 136
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Model/e;

    iget-boolean v2, v2, Lcom/chartboost/sdk/Model/e;->y:Z

    if-nez v2, :cond_1

    .line 137
    const-string v2, ""

    sput-object v2, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 142
    :goto_1
    new-instance v2, Lcom/chartboost/sdk/Libraries/d;

    invoke-direct {v2, v13}, Lcom/chartboost/sdk/Libraries/d;-><init>(Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    .line 143
    new-instance v7, Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v9, p2

    move-object v11, v5

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/chartboost/sdk/impl/aj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ac;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    .line 145
    new-instance v14, Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcom/chartboost/sdk/Tracking/a;-><init>(Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/aj;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    .line 147
    new-instance v16, Lcom/chartboost/sdk/impl/j;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v23, v0

    move-object/from16 v17, p5

    move-object/from16 v18, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v23}, Lcom/chartboost/sdk/impl/j;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Ljava/util/concurrent/atomic/AtomicReference;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/j;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    .line 149
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v2

    new-instance v3, Lcom/chartboost/sdk/impl/ao;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Lcom/chartboost/sdk/impl/ao;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ao;

    .line 151
    new-instance v3, Lcom/chartboost/sdk/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    move-object/from16 v0, p6

    invoke-direct {v3, v2, v4, v12, v0}, Lcom/chartboost/sdk/d;-><init>(Lcom/chartboost/sdk/impl/ao;Lcom/chartboost/sdk/impl/j;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Handler;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/chartboost/sdk/d;

    .line 153
    new-instance v2, Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v3, v5, v1}, Lcom/chartboost/sdk/impl/ae;-><init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Landroid/os/Handler;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ae;

    .line 155
    new-instance v16, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v20, v0

    move-object/from16 v17, p1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move-object/from16 v21, p6

    invoke-direct/range {v16 .. v22}, Lcom/chartboost/sdk/c;-><init>(Landroid/app/Activity;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    .line 157
    new-instance v2, Lcom/chartboost/sdk/impl/af;

    invoke-direct {v2, v15}, Lcom/chartboost/sdk/impl/af;-><init>(Lcom/chartboost/sdk/Libraries/f;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/chartboost/sdk/impl/af;

    .line 159
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->c()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/a;

    .line 160
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/impl/a;->b()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    .line 163
    new-instance v23, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->e:Lcom/chartboost/sdk/impl/a;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/c;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/aj;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->d:Lcom/chartboost/sdk/impl/c;

    .line 164
    new-instance v23, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->g:Lcom/chartboost/sdk/impl/a;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/c;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/aj;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->f:Lcom/chartboost/sdk/impl/c;

    .line 165
    new-instance v23, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->l:Lcom/chartboost/sdk/impl/a;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->r:Lcom/chartboost/sdk/impl/ae;

    move-object/from16 v37, v0

    move-object/from16 v25, p5

    move-object/from16 v27, v15

    move-object/from16 v29, v5

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v6

    move-object/from16 v35, p6

    move-object/from16 v38, v22

    invoke-direct/range {v23 .. v39}, Lcom/chartboost/sdk/impl/c;-><init>(Lcom/chartboost/sdk/impl/a;Ljava/util/concurrent/ScheduledExecutorService;Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/impl/aj;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/impl/ae;Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/impl/af;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->k:Lcom/chartboost/sdk/impl/c;

    .line 167
    new-instance v13, Lcom/chartboost/sdk/impl/k;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/sdk/impl/k;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/chartboost/sdk/h;->i:Lcom/chartboost/sdk/impl/k;

    .line 169
    sput-object v8, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 170
    sput-object p2, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    .line 171
    sput-object p3, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    .line 172
    sget-object v2, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v5, v2}, Lcom/chartboost/sdk/impl/ac;->a(Landroid/content/Context;)V

    .line 173
    return-void

    .line 117
    :catch_0
    move-exception v2

    .line 118
    const-string v3, "Sdk"

    const-string v4, "Unable to process config"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_0

    .line 139
    :cond_1
    const/4 v2, 0x0

    invoke-static {v8, v2, v13}, Lcom/chartboost/sdk/h;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V

    goto/16 :goto_1
.end method

.method public static a()Lcom/chartboost/sdk/h;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/h;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 424
    sget-object v0, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 426
    if-nez p1, :cond_1

    .line 427
    :try_start_0
    const-string v1, "user_agent"

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    sput-object v0, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    .line 446
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_agent"

    .line 447
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    return-void

    .line 431
    :cond_0
    :try_start_1
    const-string v1, "user_agent"

    sget-object v2, Lcom/chartboost/sdk/i;->w:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Lcom/chartboost/sdk/h;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lcom/chartboost/sdk/h;->v:Lcom/chartboost/sdk/h;

    .line 85
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    iget-object v0, v0, Lcom/chartboost/sdk/impl/m;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static f()Z
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/e;->c:Z

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chartboost Integration Warning: your account has been disabled for this session. This app has no active publishing campaigns, please create a publishing campaign in the Chartboost dashboard and wait at least 30 minutes to re-enable. If you need assistance, please visit http://chartboo.st/publishing ."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->a()V

    .line 270
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->u:Z

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/chartboost/sdk/h$a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/h;->w:Lcom/chartboost/sdk/impl/m;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p1}, Lcom/chartboost/sdk/b;->b(Landroid/app/Activity;)Z

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->u:Z

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j;->c()V

    .line 231
    :cond_1
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 176
    iput-boolean v4, p0, Lcom/chartboost/sdk/h;->s:Z

    .line 177
    new-instance v5, Lcom/chartboost/sdk/h$1;

    invoke-direct {v5, p0, p1}, Lcom/chartboost/sdk/h$1;-><init>(Lcom/chartboost/sdk/h;Ljava/lang/Runnable;)V

    .line 213
    new-instance v0, Lcom/chartboost/sdk/impl/ad;

    const-string v1, "/api/config"

    iget-object v2, p0, Lcom/chartboost/sdk/h;->j:Lcom/chartboost/sdk/impl/aj;

    iget-object v3, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 218
    iput-boolean v4, v0, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 219
    iget-object v1, p0, Lcom/chartboost/sdk/h;->h:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    .line 220
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "Sdk"

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/h;->g()V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/h;->p:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/h;->o:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 279
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_1

    .line 283
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 285
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/h;->t:Z

    .line 287
    :cond_1
    return-void
.end method
