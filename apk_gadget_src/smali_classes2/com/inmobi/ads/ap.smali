.class public final Lcom/inmobi/ads/ap;
.super Landroid/media/MediaPlayer;
.source "NativeMediaPlayer.java"


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/inmobi/ads/ap;

.field private static f:I


# instance fields
.field a:I

.field b:I

.field private c:Lcom/inmobi/ads/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ap;->d:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/ads/ap;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 21
    iput v0, p0, Lcom/inmobi/ads/ap;->a:I

    .line 22
    iput v0, p0, Lcom/inmobi/ads/ap;->b:I

    return-void
.end method

.method public static a()Lcom/inmobi/ads/ap;
    .locals 3

    .prologue
    .line 33
    sget-object v1, Lcom/inmobi/ads/ap;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/ap;->e:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/inmobi/ads/ap;->e:Lcom/inmobi/ads/ap;

    .line 36
    iget-object v2, v0, Lcom/inmobi/ads/ap;->c:Lcom/inmobi/ads/ap;

    sput-object v2, Lcom/inmobi/ads/ap;->e:Lcom/inmobi/ads/ap;

    .line 37
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/inmobi/ads/ap;->c:Lcom/inmobi/ads/ap;

    .line 38
    sget v2, Lcom/inmobi/ads/ap;->f:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/inmobi/ads/ap;->f:I

    .line 39
    monitor-exit v1

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    new-instance v0, Lcom/inmobi/ads/ap;

    invoke-direct {v0}, Lcom/inmobi/ads/ap;-><init>()V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 62
    .line 1079
    const/4 v0, 0x3

    .line 2050
    iget v1, p0, Lcom/inmobi/ads/ap;->a:I

    .line 1079
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 2075
    :goto_1
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2069
    :cond_1
    sget-object v1, Lcom/inmobi/ads/ap;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 2070
    :try_start_0
    sget v0, Lcom/inmobi/ads/ap;->f:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 2071
    sget-object v0, Lcom/inmobi/ads/ap;->e:Lcom/inmobi/ads/ap;

    iput-object v0, p0, Lcom/inmobi/ads/ap;->c:Lcom/inmobi/ads/ap;

    .line 2072
    sput-object p0, Lcom/inmobi/ads/ap;->e:Lcom/inmobi/ads/ap;

    .line 2073
    sget v0, Lcom/inmobi/ads/ap;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/inmobi/ads/ap;->f:I

    .line 2075
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
