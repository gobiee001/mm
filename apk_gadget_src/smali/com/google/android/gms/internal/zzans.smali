.class final synthetic Lcom/google/android/gms/internal/zzans;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# instance fields
.field private final zzdlh:Landroid/content/Context;

.field private final zzdli:Lcom/google/android/gms/internal/zzcv;

.field private final zzdlj:Lcom/google/android/gms/internal/zzakd;

.field private final zzdlk:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzdll:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzans;->zzdlh:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzans;->zzdli:Lcom/google/android/gms/internal/zzcv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzans;->zzdlj:Lcom/google/android/gms/internal/zzakd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzans;->zzdlk:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzans;->zzdll:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 13

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzans;->zzdlh:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzans;->zzdli:Lcom/google/android/gms/internal/zzcv;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzans;->zzdlj:Lcom/google/android/gms/internal/zzakd;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzans;->zzdlk:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v12, p0, Lcom/google/android/gms/internal/zzans;->zzdll:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzej()Lcom/google/android/gms/internal/zzanr;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->zzuf()Lcom/google/android/gms/internal/zzapa;

    move-result-object v2

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/internal/zzis;->zzhl()Lcom/google/android/gms/internal/zzis;

    move-result-object v11

    move v5, v4

    move-object v9, v8

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/zzanr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzapa;Ljava/lang/String;ZZLcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzis;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzale;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzale;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzant;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzant;-><init>(Lcom/google/android/gms/internal/zzale;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzanm;)V

    invoke-interface {v0, v12}, Lcom/google/android/gms/internal/zzanh;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
