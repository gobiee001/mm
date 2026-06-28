.class final Lcom/google/android/gms/internal/zzaek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaox:Lcom/google/android/gms/internal/zzafo;

.field private synthetic zzcwa:Lcom/google/android/gms/internal/zzaei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaei;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaek;->zzcwa:Lcom/google/android/gms/internal/zzaei;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaek;->zzaox:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaek;->zzcwa:Lcom/google/android/gms/internal/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaei;->zza(Lcom/google/android/gms/internal/zzaei;)Lcom/google/android/gms/internal/zzade;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaek;->zzaox:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method
