.class final Lcom/google/android/gms/internal/zzcnd;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjoi:Lcom/google/android/gms/internal/zzcrb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnc;Lcom/google/android/gms/internal/zzcrb;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnd;->zzjoi:Lcom/google/android/gms/internal/zzcrb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnd;->zzjoi:Lcom/google/android/gms/internal/zzcrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrb;->zzbbl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnd;->zzjoi:Lcom/google/android/gms/internal/zzcrb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcrb;->zzbbm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcnd;->zzjoi:Lcom/google/android/gms/internal/zzcrb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcrb;->zzbbo()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
