.class final Lcom/google/android/gms/internal/zzaiz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzx;


# instance fields
.field private synthetic zzcml:Ljava/lang/String;

.field private synthetic zzdcn:Lcom/google/android/gms/internal/zzajc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaiv;Ljava/lang/String;Lcom/google/android/gms/internal/zzajc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaiz;->zzcml:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaiz;->zzdcn:Lcom/google/android/gms/internal/zzajc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/zzad;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiz;->zzcml:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to load URL: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiz;->zzdcn:Lcom/google/android/gms/internal/zzajc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajc;->zzb(Ljava/lang/Object;)V

    return-void
.end method
