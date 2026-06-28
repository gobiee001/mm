.class Lcom/chartboost/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field c:Lcom/chartboost/sdk/Chartboost$CBMediation;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

.field g:Lcom/chartboost/sdk/ChartboostDelegate;

.field h:Landroid/app/Activity;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field private final k:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/f;->a:Z

    .line 54
    iput-object v1, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 55
    iput-object v1, p0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 56
    iput-object v1, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 59
    iput-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 60
    iput-object v1, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    .line 61
    iput-object v1, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    .line 65
    iput p1, p0, Lcom/chartboost/sdk/f;->k:I

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/f;->k:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/f;->a:Z

    sput-boolean v0, Lcom/chartboost/sdk/i;->u:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-class v1, Lcom/chartboost/sdk/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chartboost/sdk/f;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 77
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->c:Lcom/chartboost/sdk/Chartboost$CBMediation;

    sput-object v0, Lcom/chartboost/sdk/i;->i:Lcom/chartboost/sdk/Chartboost$CBMediation;

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->j:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/chartboost/sdk/i;->i:Lcom/chartboost/sdk/Chartboost$CBMediation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->h:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_1

    .line 85
    const-string v0, "ChartboostCommand"

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    sput-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->e:Ljava/lang/String;

    .line 91
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/chartboost/sdk/f;->b:Lcom/chartboost/sdk/Chartboost$CBFramework;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->f:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/f;->e:Ljava/lang/String;

    sput-object v0, Lcom/chartboost/sdk/i;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 103
    :pswitch_6
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/f;->f:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    sput-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    goto/16 :goto_0

    .line 109
    :pswitch_7
    iget-object v0, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    sput-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 110
    const-string v0, "SdkSettings.assignDelegate"

    iget-object v1, p0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/ChartboostDelegate;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 114
    :pswitch_8
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    const-class v8, Lcom/chartboost/sdk/h;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :try_start_2
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 118
    const-string v0, "ChartboostCommand"

    const-string v1, "Activity object is null. Please pass a valid activity object"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    monitor-exit v8

    goto/16 :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 121
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    const-string v0, "ChartboostCommand"

    const-string v1, "Permissions not set correctly"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit v8

    goto/16 :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    const-string v0, "ChartboostCommand"

    const-string v2, "CBImpression Activity not added in your manifest.xml"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    :cond_5
    const-string v0, "ChartboostCommand"

    const-string v1, "AppId or AppSignature is null. Please pass a valid id\'s"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v8

    goto/16 :goto_0

    .line 132
    :cond_6
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v4

    .line 133
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    .line 134
    iget-object v6, v4, Lcom/chartboost/sdk/impl/m;->a:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    const/4 v2, 0x0

    .line 142
    :try_start_5
    invoke-static {}, Lcom/chartboost/sdk/impl/w;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    const/4 v3, 0x4

    :try_start_6
    invoke-static {v3}, Lcom/chartboost/sdk/impl/w;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ExecutorService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    :try_start_7
    new-instance v0, Lcom/chartboost/sdk/h;

    iget-object v1, p0, Lcom/chartboost/sdk/f;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/chartboost/sdk/f;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/f;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/chartboost/sdk/h;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/m;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 165
    invoke-static {v0}, Lcom/chartboost/sdk/h;->a(Lcom/chartboost/sdk/h;)V

    .line 167
    iget-object v1, v0, Lcom/chartboost/sdk/h;->c:Lcom/chartboost/sdk/Libraries/d;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/d;->a()V

    .line 168
    iget-object v1, v0, Lcom/chartboost/sdk/h;->b:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/j;->c()V

    .line 170
    new-instance v1, Lcom/chartboost/sdk/h$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/h$a;-><init>(Lcom/chartboost/sdk/h;I)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V

    .line 172
    :cond_7
    monitor-exit v8

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v0

    move-object v5, v1

    .line 146
    :goto_1
    if-eqz v5, :cond_8

    .line 147
    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 149
    :cond_8
    if-eqz v1, :cond_9

    .line 150
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 152
    :cond_9
    const-string v1, "ChartboostCommand"

    const-string v2, "Unable to start threads"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 144
    :catch_2
    move-exception v0

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
