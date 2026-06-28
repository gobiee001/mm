.class final synthetic Lcom/google/android/gms/internal/zzsa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbyx:Lcom/google/android/gms/internal/zzrz;

.field private final zzbyy:Lcom/google/android/gms/internal/zzrq;

.field private final zzbyz:Lcom/google/android/gms/internal/zzalf;

.field private final zzbza:Lcom/google/android/gms/internal/zzrr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrz;Lcom/google/android/gms/internal/zzrq;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzrr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsa;->zzbyx:Lcom/google/android/gms/internal/zzrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsa;->zzbyy:Lcom/google/android/gms/internal/zzrq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsa;->zzbyz:Lcom/google/android/gms/internal/zzalf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsa;->zzbza:Lcom/google/android/gms/internal/zzrr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsa;->zzbyx:Lcom/google/android/gms/internal/zzrz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsa;->zzbyy:Lcom/google/android/gms/internal/zzrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsa;->zzbyz:Lcom/google/android/gms/internal/zzalf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsa;->zzbza:Lcom/google/android/gms/internal/zzrr;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->zzkt()Lcom/google/android/gms/internal/zzrv;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzrv;->zza(Lcom/google/android/gms/internal/zzrr;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Unable to obtain a cache service instance."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzagf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzalf;->setException(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzrz;->zzbyu:Lcom/google/android/gms/internal/zzrx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0
.end method
