.class final Lcom/google/android/gms/internal/zzatq;
.super Lcom/google/android/gms/internal/zzatp$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzatp$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzeaz:[Lcom/google/android/gms/internal/zzate;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatp;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzate;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzatq;->zzeaz:[Lcom/google/android/gms/internal/zzate;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzatp$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzati;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzatp$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzatp$zzd;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatq;->zzeaz:[Lcom/google/android/gms/internal/zzate;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzati;->zza(Lcom/google/android/gms/internal/zzatk;Ljava/lang/String;[Lcom/google/android/gms/internal/zzate;)V

    return-void
.end method
