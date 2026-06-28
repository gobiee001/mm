.class public final Lcom/google/android/gms/internal/zzdsc;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdsc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu",
        "<",
        "Lcom/google/android/gms/internal/zzdsc;",
        "Lcom/google/android/gms/internal/zzdsc$zza;",
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
            "Lcom/google/android/gms/internal/zzdsc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzluq:Lcom/google/android/gms/internal/zzdsc;


# instance fields
.field private zzlup:Lcom/google/android/gms/internal/zzdtd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdsc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdsc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzffu;-><init>()V

    return-void
.end method

.method public static zzbnh()Lcom/google/android/gms/internal/zzdsc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    return-object v0
.end method

.method static synthetic zzbni()Lcom/google/android/gms/internal/zzdsc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdsd;->zzbbi:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdsc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdsc;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    goto :goto_0

    :pswitch_2
    move-object p0, v1

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdsc$zza;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzdsc$zza;-><init>(Lcom/google/android/gms/internal/zzdsd;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzdsc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfhe;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdtd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    goto :goto_0

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_0
    move v3, v4

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzdtd$zza;

    move-object v2, v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/zzdtd;->zzbot()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdtd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxs()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

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

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Lcom/google/android/gms/internal/zzfge;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzfge;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/zzfge;->zzi(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfge;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdsc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_4

    const-class v1, Lcom/google/android/gms/internal/zzdsc;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzdsc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzdsc;->zzluq:Lcom/google/android/gms/internal/zzdsc;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdsc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/zzdsc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_8
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    move-object p0, v1

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_2

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
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzdtd;->zzbot()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfhe;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    goto :goto_0
.end method

.method public final zzbng()Lcom/google/android/gms/internal/zzdtd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdtd;->zzbot()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    goto :goto_0
.end method

.method public final zzho()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzdtd;->zzbot()Lcom/google/android/gms/internal/zzdtd;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfhe;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdsc;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzpgs:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsc;->zzlup:Lcom/google/android/gms/internal/zzdtd;

    goto :goto_1
.end method
