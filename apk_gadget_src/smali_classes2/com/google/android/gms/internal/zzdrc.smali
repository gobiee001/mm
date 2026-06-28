.class public final Lcom/google/android/gms/internal/zzdrc;
.super Lcom/google/android/gms/internal/zzffu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdrc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu",
        "<",
        "Lcom/google/android/gms/internal/zzdrc;",
        "Lcom/google/android/gms/internal/zzdrc$zza;",
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
            "Lcom/google/android/gms/internal/zzdrc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzltq:Lcom/google/android/gms/internal/zzdrc;


# instance fields
.field private zzltn:I

.field private zzlto:Lcom/google/android/gms/internal/zzdrg;

.field private zzltp:Lcom/google/android/gms/internal/zzdss;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzdrc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdrc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

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

.method private final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdrc;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdrc;Lcom/google/android/gms/internal/zzdrg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->zza(Lcom/google/android/gms/internal/zzdrg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdrc;Lcom/google/android/gms/internal/zzdss;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdrc;->zza(Lcom/google/android/gms/internal/zzdss;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzdrg;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzdss;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    return-void
.end method

.method public static zzbmd()Lcom/google/android/gms/internal/zzdrc$zza;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzdrc$zza;

    return-object v0
.end method

.method static synthetic zzbme()Lcom/google/android/gms/internal/zzdrc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzfge;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrc;

    return-object v0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdrd;->zzbbi:[I

    add-int/lit8 v4, p1, -0x1

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/internal/zzdrc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdrc;-><init>()V

    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    goto :goto_0

    :pswitch_2
    move-object p0, v3

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/android/gms/internal/zzdrc$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzdrc$zza;-><init>(Lcom/google/android/gms/internal/zzdrd;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Lcom/google/android/gms/internal/zzffu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzdrc;

    iget v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    iget v4, p3, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    if-eqz v4, :cond_1

    :goto_2
    iget v2, p3, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    invoke-interface {p2, v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(ZIZI)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfhe;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfhe;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzffb;

    check-cast p3, Lcom/google/android/gms/internal/zzffm;

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    move v4, v2

    :cond_3
    :goto_3
    if-nez v4, :cond_4

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILcom/google/android/gms/internal/zzffb;)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v1

    goto :goto_3

    :sswitch_0
    move v4, v1

    goto :goto_3

    :sswitch_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzffb;->zzcwc()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzdrg$zza;

    move-object v2, v0

    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbml()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxs()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;
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

    :sswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzdss$zza;

    move-object v2, v0

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzbof()Lcom/google/android/gms/internal/zzdss;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/zzffb;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxs()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;
    :try_end_4
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_4
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_6

    const-class v1, Lcom/google/android/gms/internal/zzdrc;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzdrc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzdrc;->zzltq:Lcom/google/android/gms/internal/zzdrc;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzffu$zzb;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdrc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    :cond_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/zzdrc;->zzbbk:Lcom/google/android/gms/internal/zzfhk;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :pswitch_8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    move-object p0, v3

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    goto :goto_5

    :cond_8
    move-object v2, v3

    goto/16 :goto_4

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
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzab(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbml()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfhe;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzbof()Lcom/google/android/gms/internal/zzdss;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzffg;->zza(ILcom/google/android/gms/internal/zzfhe;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfio;->zza(Lcom/google/android/gms/internal/zzffg;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    goto :goto_1
.end method

.method public final zzbmb()Lcom/google/android/gms/internal/zzdrg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbml()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    goto :goto_0
.end method

.method public final zzbmc()Lcom/google/android/gms/internal/zzdss;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzbof()Lcom/google/android/gms/internal/zzdss;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    goto :goto_0
.end method

.method public final zzho()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzpgs:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltn:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffg;->zzae(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->zzbml()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfhe;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzbof()Lcom/google/android/gms/internal/zzdss;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzffg;->zzc(ILcom/google/android/gms/internal/zzfhe;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzho()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzdrc;->zzpgs:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzlto:Lcom/google/android/gms/internal/zzdrg;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdrc;->zzltp:Lcom/google/android/gms/internal/zzdss;

    goto :goto_2
.end method
