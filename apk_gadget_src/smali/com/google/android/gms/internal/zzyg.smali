.class public final Lcom/google/android/gms/internal/zzyg;
.super Lcom/google/android/gms/internal/zzxw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzanj:Lcom/google/android/gms/internal/zznu;

.field private zzanw:Lcom/google/android/gms/internal/zzux;

.field private final zzbyk:Lcom/google/android/gms/internal/zzanh;

.field private zzcef:Lcom/google/android/gms/internal/zzui;

.field private zzcjw:Lcom/google/android/gms/internal/zzug;

.field protected zzcjx:Lcom/google/android/gms/internal/zzuo;

.field private zzcjy:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzyb;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzanh;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzxw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzyb;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyg;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafp;->zzcxl:Lcom/google/android/gms/internal/zzui;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzyg;->zzanj:Lcom/google/android/gms/internal/zznu;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzyg;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyg;)Lcom/google/android/gms/internal/zzanh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzyg;->zzcjy:Z

    return p1
.end method

.method private static zzk(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzuo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, ""

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzuo;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzuh;->zzcct:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzuh;->zzcct:Ljava/lang/String;

    iget v1, v0, Lcom/google/android/gms/internal/zzuo;->zzcer:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x6

    :goto_2
    iget-wide v6, v0, Lcom/google/android/gms/internal/zzuo;->zzcex:J

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_2

    :pswitch_6
    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyg;->zzcjn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzxw;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzug;->cancel()V

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

.method protected final zze(J)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzxz;
        }
    .end annotation

    iget-object v14, p0, Lcom/google/android/gms/internal/zzyg;->zzcjn:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget v0, v0, Lcom/google/android/gms/internal/zzui;->zzcdt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzur;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyg;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/zzaax;->zzben:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/zzaax;->zzbep:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzaax;->zzcpq:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zznh;->zzbnj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-boolean v13, v8, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/zzur;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzui;ZZLjava/lang/String;JJIZ)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzui;->zzcdj:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->zzbdp:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "_skipMediation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzuh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuh;->zzccs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzuu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyg;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyg;->zzanw:Lcom/google/android/gms/internal/zzux;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/zzaax;->zzben:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/zzaax;->zzbep:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzaax;->zzcpq:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/zznh;->zzbnj:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/internal/zzyg;->zzanj:Lcom/google/android/gms/internal/zznu;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-boolean v13, v8, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/zzuu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzui;ZZLjava/lang/String;JJLcom/google/android/gms/internal/zznu;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzug;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/zzuo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget v0, v0, Lcom/google/android/gms/internal/zzuo;->zzcer:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzxz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget v1, v1, Lcom/google/android/gms/internal/zzuo;->zzcer:I

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzxz;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzxz;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzxz;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuh;->zzcdc:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->zzdaw:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzyh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzyh;-><init>(Lcom/google/android/gms/internal/zzyg;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyg;->zzcjn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzyg;->zzcjy:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzxz;

    const-string v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzxz;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzxz;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Interrupted while waiting for latch : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzxz;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyg;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzxz;

    const-string v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzxz;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzy(I)Lcom/google/android/gms/internal/zzafo;
    .locals 42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzafp;->zzcqv:Lcom/google/android/gms/internal/zzaat;

    new-instance v2, Lcom/google/android/gms/internal/zzafo;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzaat;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzyg;->zzbyk:Lcom/google/android/gms/internal/zzanh;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaax;->zzcdk:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzaax;->zzcdl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzaax;->zzcoy:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget v9, v9, Lcom/google/android/gms/internal/zzaax;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzaax;->zzcdq:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzaat;->zzcng:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzaax;->zzcow:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v14, v6, Lcom/google/android/gms/internal/zzuo;->zzces:Lcom/google/android/gms/internal/zzuh;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v15, v6, Lcom/google/android/gms/internal/zzuo;->zzcet:Lcom/google/android/gms/internal/zzva;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzuo;->zzceu:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjx:Lcom/google/android/gms/internal/zzuo;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzuo;->zzcev:Lcom/google/android/gms/internal/zzuk;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcox:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzauc:Lcom/google/android/gms/internal/zzjn;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcov:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxp:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpa:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpb:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxj:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpl:Lcom/google/android/gms/internal/zzaeq;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpm:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpn:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcef:Lcom/google/android/gms/internal/zzui;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzui;->zzcdv:Z

    move/from16 v34, v0

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcpp:Lcom/google/android/gms/internal/zzaaz;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjw:Lcom/google/android/gms/internal/zzug;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzug;->zzlu()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/zzyg;->zzk(Ljava/util/List;)Ljava/lang/String;

    move-result-object v36

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcdn:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaax;->zzcps:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxw:Lcom/google/android/gms/internal/zzis;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjl:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzaax;->zzaqv:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzyg;->zzcjk:Lcom/google/android/gms/internal/zzafp;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzafp;->zzcxx:Z

    move/from16 v41, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/internal/zzafo;-><init>(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzanh;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzva;Ljava/lang/String;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzuk;JLcom/google/android/gms/internal/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzou;Lcom/google/android/gms/internal/zzaeq;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaz;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzis;ZZ)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_4
    const/16 v34, 0x0

    goto :goto_4

    :cond_5
    const/16 v36, 0x0

    goto :goto_5
.end method
