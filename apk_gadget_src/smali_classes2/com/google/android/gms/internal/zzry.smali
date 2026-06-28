.class final Lcom/google/android/gms/internal/zzry;
.super Lcom/google/android/gms/internal/zzalf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzalf",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbyu:Lcom/google/android/gms/internal/zzrx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzry;->zzbyu:Lcom/google/android/gms/internal/zzrx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzbyu:Lcom/google/android/gms/internal/zzrx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zza(Lcom/google/android/gms/internal/zzrx;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzalf;->cancel(Z)Z

    move-result v0

    return v0
.end method
