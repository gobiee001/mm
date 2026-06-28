.class public final Lcom/google/android/gms/internal/zzdss$zza;
.super Lcom/google/android/gms/internal/zzffu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu$zza",
        "<",
        "Lcom/google/android/gms/internal/zzdss;",
        "Lcom/google/android/gms/internal/zzdss$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->zzbog()Lcom/google/android/gms/internal/zzdss;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzffu$zza;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdst;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdss$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaf(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdss$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdss$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdss;->zza(Lcom/google/android/gms/internal/zzdss;Lcom/google/android/gms/internal/zzfes;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzdsw;)Lcom/google/android/gms/internal/zzdss$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdss$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdss;->zza(Lcom/google/android/gms/internal/zzdss;Lcom/google/android/gms/internal/zzdsw;)V

    return-object p0
.end method

.method public final zzfs(I)Lcom/google/android/gms/internal/zzdss$zza;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdss$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdss;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdss;->zza(Lcom/google/android/gms/internal/zzdss;I)V

    return-object p0
.end method
