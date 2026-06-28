.class public Lcom/inmobi/signals/n;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final g:Ljava/lang/String;

.field private static h:Lcom/inmobi/signals/n;

.field private static i:Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/signals/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/n;->g:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/n;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/inmobi/signals/n;->a:J

    .line 25
    iput-wide v0, p0, Lcom/inmobi/signals/n;->b:J

    .line 26
    iput-wide v0, p0, Lcom/inmobi/signals/n;->c:J

    .line 27
    iput-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    .line 28
    iput-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    .line 29
    iput-wide v0, p0, Lcom/inmobi/signals/n;->f:J

    .line 47
    return-void
.end method

.method public static a()Lcom/inmobi/signals/n;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/signals/n;->h:Lcom/inmobi/signals/n;

    .line 33
    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/inmobi/signals/n;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/n;->h:Lcom/inmobi/signals/n;

    .line 36
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/inmobi/signals/n;

    invoke-direct {v0}, Lcom/inmobi/signals/n;-><init>()V

    .line 38
    sput-object v0, Lcom/inmobi/signals/n;->h:Lcom/inmobi/signals/n;

    .line 40
    :cond_0
    monitor-exit v1

    .line 42
    :cond_1
    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b()Lcom/inmobi/commons/core/utilities/b/g;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 1081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 1167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 96
    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/g;->a()Lcom/inmobi/commons/core/utilities/b/g;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/b;->b()I

    move-result v0

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 2136
    :pswitch_0
    iget-wide v0, p0, Lcom/inmobi/signals/n;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->c:J

    goto :goto_0

    .line 3128
    :pswitch_1
    iget-wide v0, p0, Lcom/inmobi/signals/n;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->a:J

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/b;->b()I

    move-result v0

    .line 117
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 3140
    :pswitch_0
    iget-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    goto :goto_0

    .line 4132
    :pswitch_1
    iget-wide v0, p0, Lcom/inmobi/signals/n;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->b:J

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    .line 145
    return-void
.end method
