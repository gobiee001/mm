.class final Lcom/google/android/gms/internal/zzcmy;
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
.field private synthetic zzjof:Lcom/google/android/gms/internal/zzcrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmv;Lcom/google/android/gms/internal/zzcrh;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcmy;->zzjof:Lcom/google/android/gms/internal/zzcrh;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcnq;-><init>(Lcom/google/android/gms/internal/zzcmu;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmy;->zzjof:Lcom/google/android/gms/internal/zzcrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcrh;->zzbbl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method
