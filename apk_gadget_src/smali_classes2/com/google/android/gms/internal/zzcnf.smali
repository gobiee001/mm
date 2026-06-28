.class final Lcom/google/android/gms/internal/zzcnf;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjok:Lcom/google/android/gms/internal/zzcrd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcne;Lcom/google/android/gms/internal/zzcrd;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnf;->zzjok:Lcom/google/android/gms/internal/zzcrd;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnf;->zzjok:Lcom/google/android/gms/internal/zzcrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrd;->zzbbl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnf;->zzjok:Lcom/google/android/gms/internal/zzcrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcrd;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcmt;->zzec(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcnf;->zzjok:Lcom/google/android/gms/internal/zzcrd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcrd;->zzbbo()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method
