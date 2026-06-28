.class public final Lcom/google/android/gms/internal/zzdth;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdth$zza;,
        Lcom/google/android/gms/internal/zzdth$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu",
        "<",
        "Lcom/google/android/gms/internal/zzdth;",
        "Lcom/google/android/gms/internal/zzdth$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# static fields
.field private static volatile zzbbk:Lcom/google/android/gms/internal/zzfhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfhk",
            "<",
            "Lcom/google/android/gms/internal/zzdth;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlxb:Lcom/google/android/gms/internal/zzdth;


# instance fields
.field private zzlwy:I

.field private zzlwz:I

.field private zzlxa:Lcom/google/android/gms/internal/zzfgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgd",
            "<",
            "Lcom/google/android/gms/internal/zzdth$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdth;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdth;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzdth;->zzcxo()Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    return-void
.end method

.method public static zzaf([B)Lcom/google/android/gms/internal/zzdth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;[B)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdth;

    return-object v0
.end method

.method static synthetic zzbpf()Lcom/google/android/gms/internal/zzdth;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcom/google/android/gms/internal/zzdti;->zzbbi:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdth;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdth;-><init>()V

    :cond_0
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfgd;->zzbiy()V

    move-object p0, v0

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdth$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzdth$zza;-><init>(Lcom/google/android/gms/internal/zzdti;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzdth;

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    if-eqz v4, :cond_2

    :goto_2
    iget v2, p3, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfgd;Lcom/google/android/gms/internal/zzfgd;)Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    sget-object v0, Lcom/google/android/gms/internal/zzffu$zzf;->zzphb:Lcom/google/android/gms/internal/zzffu$zzf;

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwy:I

    iget v1, p3, Lcom/google/android/gms/internal/zzdth;->zzlwy:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwy:I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :sswitch_0
    move v2, v1

    :cond_3
    :goto_3
    if-nez v2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_3

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwc()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :sswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->zzcvi()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa

    :goto_4
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfgd;->zzly(I)Lcom/google/android/gms/internal/zzfgd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-static {}, Lcom/google/android/gms/internal/zzdth$zzb;->zzbpl()Lcom/google/android/gms/internal/zzdth$zzb;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdth$zzb;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzfgd;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdth;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_8

    const-class v1, Lcom/google/android/gms/internal/zzdth;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzdth;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzdth;->zzlxb:Lcom/google/android/gms/internal/zzdth;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdth;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    sget-object p0, Lcom/google/android/gms/internal/zzdth;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :pswitch_8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    move-object p0, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzab(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfgd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhe;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfhe;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void
.end method

.method public final zzbpc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    return v0
.end method

.method public final zzbpd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdth$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    return-object v0
.end method

.method public final zzbpe()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v0

    return v0
.end method

.method public final zzho()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzpgs:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzdth;->zzlwz:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzffg;->zzae(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfgd;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzlxa:Lcom/google/android/gms/internal/zzfgd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzfgd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhe;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfhe;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdth;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzdth;->zzpgs:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
