.class final Lcom/google/android/gms/internal/zzcmw;
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
.field private synthetic zzjod:Lcom/google/android/gms/internal/zzcqz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmv;Lcom/google/android/gms/internal/zzcqz;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmw;->zzjod:Lcom/google/android/gms/internal/zzcqz;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmw;->zzjod:Lcom/google/android/gms/internal/zzcqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcqz;->zzbbl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/ConnectionInfo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmw;->zzjod:Lcom/google/android/gms/internal/zzcqz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcqz;->zzbbm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmw;->zzjod:Lcom/google/android/gms/internal/zzcqz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcqz;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcmw;->zzjod:Lcom/google/android/gms/internal/zzcqz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcqz;->zzbbn()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/nearby/connection/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onConnectionInitiated(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionInfo;)V

    return-void
.end method
