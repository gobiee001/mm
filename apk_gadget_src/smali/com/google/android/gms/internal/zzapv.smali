.class final Lcom/google/android/gms/internal/zzapv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdsu:Lcom/google/android/gms/internal/zzapr;

.field private synthetic zzdsy:Lcom/google/android/gms/internal/zzarq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapr;Lcom/google/android/gms/internal/zzarq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapv;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapv;->zzdsy:Lcom/google/android/gms/internal/zzarq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapv;->zzdsu:Lcom/google/android/gms/internal/zzapr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapr;->zza(Lcom/google/android/gms/internal/zzapr;)Lcom/google/android/gms/internal/zzaqo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapv;->zzdsy:Lcom/google/android/gms/internal/zzarq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqo;->zza(Lcom/google/android/gms/internal/zzarq;)V

    return-void
.end method
