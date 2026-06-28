.class public final Lcom/google/android/gms/internal/zzduo;
.super Ljava/lang/Object;


# instance fields
.field private final zzlza:Lcom/google/android/gms/internal/zzdve;

.field private final zzlzb:Lcom/google/android/gms/internal/zzdve;


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdve;->zzal([B)Lcom/google/android/gms/internal/zzdve;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlza:Lcom/google/android/gms/internal/zzdve;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdve;->zzal([B)Lcom/google/android/gms/internal/zzdve;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlzb:Lcom/google/android/gms/internal/zzdve;

    return-void
.end method


# virtual methods
.method public final zzbqk()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlza:Lcom/google/android/gms/internal/zzdve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlza:Lcom/google/android/gms/internal/zzdve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdve;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final zzbql()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlzb:Lcom/google/android/gms/internal/zzdve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzduo;->zzlzb:Lcom/google/android/gms/internal/zzdve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdve;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
