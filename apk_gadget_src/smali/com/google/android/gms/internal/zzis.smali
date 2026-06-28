.class public final Lcom/google/android/gms/internal/zzis;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbbf:Lcom/google/android/gms/internal/zzix;

.field private final zzbbg:Lcom/google/android/gms/internal/zzjc;

.field private final zzbbh:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbh:Z

    new-instance v0, Lcom/google/android/gms/internal/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzix;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbf:Lcom/google/android/gms/internal/zzix;

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzis;->zzhm()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzix;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzis;->zzbbf:Lcom/google/android/gms/internal/zzix;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzis;->zzbbh:Z

    new-instance v0, Lcom/google/android/gms/internal/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzis;->zzhm()V

    return-void
.end method

.method public static zzhl()Lcom/google/android/gms/internal/zzis;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzis;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized zzhm()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    new-instance v1, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzja;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->zzbcz:Lcom/google/android/gms/internal/zzja;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    new-instance v1, Lcom/google/android/gms/internal/zzjb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzjb;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->zzbcy:Lcom/google/android/gms/internal/zzjb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzhn()[J
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zznh;->zzix()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v6, "Experiment ID is not a number"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v2, v5, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    return-object v4
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/zzit;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzit;->zza(Lcom/google/android/gms/internal/zzjc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/zziu$zza$zzb;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    invoke-static {}, Lcom/google/android/gms/internal/zzis;->zzhn()[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzjc;->zzbcx:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbbf:Lcom/google/android/gms/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzis;->zzbbg:Lcom/google/android/gms/internal/zzjc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzix;->zzd([B)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzhq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zziz;->zzq(I)Lcom/google/android/gms/internal/zziz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziz;->zzbk()V

    const-string v1, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzhq()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
