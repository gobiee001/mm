.class public Lcom/inmobi/signals/activityrecognition/b;
.super Ljava/lang/Object;
.source "ActivityRecognitionSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/activityrecognition/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lcom/inmobi/signals/activityrecognition/b;

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/activityrecognition/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/os/Handler;

.field private f:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/signals/activityrecognition/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->e:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ActivityRecognitionSampler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/inmobi/signals/activityrecognition/b$a;

    iget-object v1, p0, Lcom/inmobi/signals/activityrecognition/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/signals/activityrecognition/b$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->a:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method public static a()Lcom/inmobi/signals/activityrecognition/b;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Lcom/inmobi/signals/activityrecognition/b;

    .line 34
    if-nez v0, :cond_1

    .line 35
    sget-object v1, Lcom/inmobi/signals/activityrecognition/b;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Lcom/inmobi/signals/activityrecognition/b;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/inmobi/signals/activityrecognition/b;

    invoke-direct {v0}, Lcom/inmobi/signals/activityrecognition/b;-><init>()V

    .line 39
    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->d:Lcom/inmobi/signals/activityrecognition/b;

    .line 41
    :cond_0
    monitor-exit v1

    .line 43
    :cond_1
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/activityrecognition/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/signals/activityrecognition/b;->e:Ljava/util/List;

    .line 82
    return-void
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "signals"

    const-string v2, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 127
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const/high16 v3, 0x10000

    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 139
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/List;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/signals/activityrecognition/b;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/activityrecognition/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b()V

    .line 72
    iget-object v0, p0, Lcom/inmobi/signals/activityrecognition/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
