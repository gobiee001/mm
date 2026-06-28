.class final Lcom/google/android/gms/internal/zzcnt;
.super Lcom/google/android/gms/internal/zzcnq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcnq",
        "<",
        "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjor:Lcom/google/android/gms/internal/zzcrp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnr;Lcom/google/android/gms/internal/zzcrp;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcnt;->zzjor:Lcom/google/android/gms/internal/zzcrp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnt;->zzjor:Lcom/google/android/gms/internal/zzcrp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrp;->zzbbl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcnt;->zzjor:Lcom/google/android/gms/internal/zzcrp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcrp;->zzbbt()Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadTransferUpdate(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V

    return-void
.end method
