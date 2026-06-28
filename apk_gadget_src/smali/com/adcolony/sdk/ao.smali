.class Lcom/adcolony/sdk/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J

.field final c:I

.field final d:I

.field final e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->a:J

    .line 16
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->b:J

    .line 17
    const/16 v0, 0x11

    iput v0, p0, Lcom/adcolony/sdk/ao;->c:I

    .line 18
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/adcolony/sdk/ao;->d:I

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adcolony/sdk/ao;->e:I

    .line 30
    iput-boolean v2, p0, Lcom/adcolony/sdk/ao;->n:Z

    .line 31
    iput-boolean v2, p0, Lcom/adcolony/sdk/ao;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ao;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/adcolony/sdk/ao;->u:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "SessionInfo.stopped"

    new-instance v1, Lcom/adcolony/sdk/ao$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ao$1;-><init>(Lcom/adcolony/sdk/ao;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 50
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 300
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->q:Z

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->r:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/l;->b(Z)V

    .line 169
    iput-boolean v1, p0, Lcom/adcolony/sdk/ao;->r:Z

    .line 171
    :cond_2
    iput-wide v4, p0, Lcom/adcolony/sdk/ao;->f:J

    .line 172
    iput-wide v4, p0, Lcom/adcolony/sdk/ao;->g:J

    .line 173
    iput-boolean v3, p0, Lcom/adcolony/sdk/ao;->q:Z

    .line 174
    iput-boolean v3, p0, Lcom/adcolony/sdk/ao;->n:Z

    .line 175
    iput-boolean v1, p0, Lcom/adcolony/sdk/ao;->u:Z

    .line 176
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    if-eqz p1, :cond_3

    .line 178
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    const-string v1, "id"

    invoke-static {}, Lcom/adcolony/sdk/az;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "SessionInfo.on_start"

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 184
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/adcolony/sdk/ao;->q:Z

    .line 195
    iput-boolean v0, p0, Lcom/adcolony/sdk/ao;->n:Z

    .line 198
    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    invoke-virtual {v0}, Lcom/adcolony/sdk/al;->a()V

    .line 202
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    const-string v1, "session_length"

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->f:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 204
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "SessionInfo.on_stop"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 207
    invoke-static {}, Lcom/adcolony/sdk/a;->f()V

    .line 210
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "SESSION STOP"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 213
    return-void
.end method

.method b(Z)V
    .locals 6

    .prologue
    .line 223
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->q()Lcom/adcolony/sdk/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    monitor-enter v1

    .line 225
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ai;

    .line 226
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 227
    const-string v4, "from_window_focus"

    invoke-static {v3, v4, p1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 228
    new-instance v4, Lcom/adcolony/sdk/af;

    const-string v5, "SessionInfo.on_pause"

    invoke-interface {v0}, Lcom/adcolony/sdk/ai;->a()I

    move-result v0

    invoke-direct {v4, v5, v0, v3}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adcolony/sdk/ao;->o:Z

    .line 232
    invoke-static {}, Lcom/adcolony/sdk/a;->f()V

    .line 233
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->b(Z)V

    .line 220
    return-void
.end method

.method c(Z)V
    .locals 6

    .prologue
    .line 243
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->q()Lcom/adcolony/sdk/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    monitor-enter v1

    .line 245
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ai;

    .line 246
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 247
    const-string v4, "from_window_focus"

    invoke-static {v3, v4, p1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 248
    new-instance v4, Lcom/adcolony/sdk/af;

    const-string v5, "SessionInfo.on_resume"

    invoke-interface {v0}, Lcom/adcolony/sdk/ai;->a()I

    move-result v0

    invoke-direct {v4, v5, v0, v3}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/ao;->o:Z

    .line 252
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ao;->c(Z)V

    .line 240
    return-void
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/adcolony/sdk/ao;->n:Z

    .line 261
    return-void
.end method

.method e(Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/adcolony/sdk/ao;->p:Z

    .line 270
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->n:Z

    return v0
.end method

.method f(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/adcolony/sdk/ao;->v:Z

    .line 274
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->q:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 59
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->s:Z

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->i:J

    .line 63
    invoke-static {}, Lcom/adcolony/sdk/a;->f()V

    .line 66
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->g:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 67
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Ending session due to excessive suspend time: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->g:J

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/aa;->b(D)Lcom/adcolony/sdk/aa;

    .line 134
    :cond_1
    :goto_1
    sget-object v0, Lcom/adcolony/sdk/aa;->c:Lcom/adcolony/sdk/aa;

    const-string v1, "AdColony session ending, releasing Activity reference."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 135
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/adcolony/sdk/l;->b(Z)V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 137
    iput-boolean v8, p0, Lcom/adcolony/sdk/ao;->r:Z

    .line 138
    iput-boolean v8, p0, Lcom/adcolony/sdk/ao;->v:Z

    .line 139
    invoke-virtual {p0}, Lcom/adcolony/sdk/ao;->b()V

    .line 145
    new-instance v0, Lcom/adcolony/sdk/az$a;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v2, v3}, Lcom/adcolony/sdk/az$a;-><init>(D)V

    .line 146
    :goto_2
    iget-boolean v1, p0, Lcom/adcolony/sdk/ao;->u:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/adcolony/sdk/az$a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    iget-boolean v1, p0, Lcom/adcolony/sdk/ao;->v:Z

    if-nez v1, :cond_b

    .line 153
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "SessionInfo.stopped message received, ending ADC.update_module() spam."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 154
    return-void

    .line 71
    :cond_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->n:Z

    if-nez v0, :cond_9

    .line 73
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->o:Z

    if-nez v0, :cond_4

    .line 74
    iput-boolean v9, p0, Lcom/adcolony/sdk/ao;->p:Z

    .line 75
    invoke-virtual {p0}, Lcom/adcolony/sdk/ao;->c()V

    .line 78
    :cond_4
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->t:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    iput-boolean v8, p0, Lcom/adcolony/sdk/ao;->t:Z

    .line 80
    iput-wide v10, p0, Lcom/adcolony/sdk/ao;->k:J

    .line 86
    :cond_5
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->t:Z

    if-eqz v0, :cond_6

    .line 87
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->k:J

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->k:J

    .line 88
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->k:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 89
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Ending session due to excessive time between an Activity finishing and an onResume() event."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_1

    .line 93
    :cond_6
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->g:J

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->g:J

    .line 104
    :goto_3
    const-wide/16 v0, 0x11

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->h:J

    .line 105
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->h:J

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/ao;->a(J)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->j:J

    .line 107
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->j:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->j:J

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 108
    iget-wide v0, p0, Lcom/adcolony/sdk/ao;->f:J

    iget-wide v2, p0, Lcom/adcolony/sdk/ao;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/ao;->f:J

    .line 112
    :cond_7
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 114
    iget-wide v4, p0, Lcom/adcolony/sdk/ao;->m:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->B()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 115
    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->k()Lcom/adcolony/sdk/ADCCrashReportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/ADCCrashReportManager;->g()V

    .line 116
    iput-wide v2, p0, Lcom/adcolony/sdk/ao;->m:J

    .line 118
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/adcolony/sdk/ao;->l:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 119
    iput-wide v2, p0, Lcom/adcolony/sdk/ao;->l:J

    .line 120
    iget-object v1, v0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    invoke-virtual {v1}, Lcom/adcolony/sdk/aj;->c()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/l;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    const-string v2, "network_type"

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "Network.on_status_change"

    invoke-direct {v0, v2, v8, v1}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_0

    .line 96
    :cond_9
    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->p:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/adcolony/sdk/ao;->o:Z

    if-eqz v0, :cond_a

    .line 97
    iput-boolean v9, p0, Lcom/adcolony/sdk/ao;->p:Z

    .line 98
    iput-boolean v9, p0, Lcom/adcolony/sdk/ao;->t:Z

    .line 99
    invoke-virtual {p0}, Lcom/adcolony/sdk/ao;->d()V

    .line 101
    :cond_a
    iput-wide v10, p0, Lcom/adcolony/sdk/ao;->g:J

    goto/16 :goto_3

    .line 150
    :cond_b
    invoke-static {}, Lcom/adcolony/sdk/a;->f()V

    .line 151
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/adcolony/sdk/ao;->a(J)V

    goto/16 :goto_2
.end method
