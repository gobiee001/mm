.class final Lcom/google/android/gms/internal/zzdqu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpv;


# instance fields
.field private synthetic zzlte:Lcom/google/android/gms/internal/zzdqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdqu;->zzlte:Lcom/google/android/gms/internal/zzdqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdqu;->zzlte:Lcom/google/android/gms/internal/zzdqc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdqc;->zzblv()Lcom/google/android/gms/internal/zzdqd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdqd;->zzblx()[B

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqu;->zzlte:Lcom/google/android/gms/internal/zzdqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdqc;->zzblv()Lcom/google/android/gms/internal/zzdqd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdqd;->zzblw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdpv;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzdpv;->zzd([B[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdua;->zzc([[B)[B

    move-result-object v0

    return-object v0
.end method
