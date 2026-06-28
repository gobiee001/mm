.class final Lcom/google/android/gms/internal/zzamy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdjy:Lcom/google/android/gms/internal/zzamx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamy;->zzdjy:Lcom/google/android/gms/internal/zzamx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfb()Lcom/google/android/gms/internal/zzamz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamy;->zzdjy:Lcom/google/android/gms/internal/zzamx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamz;->zzb(Lcom/google/android/gms/internal/zzamx;)V

    return-void
.end method
