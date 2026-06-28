.class final Lcom/google/android/gms/tagmanager/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzdi",
        "<",
        "Lcom/google/android/gms/internal/zzdiy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzkee:Lcom/google/android/gms/tagmanager/zzy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzkee:Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/tagmanager/zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzad;-><init>(Lcom/google/android/gms/tagmanager/zzy;)V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/zzdiy;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdiy;->zzkto:Lcom/google/android/gms/internal/zzbr;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdiy;->zzkto:Lcom/google/android/gms/internal/zzbr;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzad;->zzkee:Lcom/google/android/gms/tagmanager/zzy;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzdiy;->zzktn:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;Lcom/google/android/gms/internal/zzbr;JZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzdiy;->zzyi:Lcom/google/android/gms/internal/zzbo;

    new-instance v0, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzyi:Lcom/google/android/gms/internal/zzbo;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzbr;->zzyh:[Lcom/google/android/gms/internal/zzbq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbo;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzyj:Ljava/lang/String;

    goto :goto_0
.end method

.method public final zzei(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzad;->zzkee:Lcom/google/android/gms/tagmanager/zzy;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzy;->zze(Lcom/google/android/gms/tagmanager/zzy;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzad;->zzkee:Lcom/google/android/gms/tagmanager/zzy;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzy;->zza(Lcom/google/android/gms/tagmanager/zzy;J)V

    :cond_0
    return-void
.end method
