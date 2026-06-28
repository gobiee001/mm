.class final Lcom/google/android/gms/internal/zzcmz;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjog:Lcom/google/android/gms/internal/zzcqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmv;Lcom/google/android/gms/internal/zzcqx;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmz;->zzjog:Lcom/google/android/gms/internal/zzcqx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmz;->zzjog:Lcom/google/android/gms/internal/zzcqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcqx;->zzbbl()Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmz;->zzjog:Lcom/google/android/gms/internal/zzcqx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcqx;->getQuality()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/nearby/connection/zzd;-><init>(I)V

    return-void
.end method
