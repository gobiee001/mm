.class public final Lcom/google/android/gms/internal/zzfx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhd;


# instance fields
.field private zzawp:Lcom/google/android/gms/internal/zzos;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfx;->zzawp:Lcom/google/android/gms/internal/zzos;

    return-void
.end method


# virtual methods
.method public final zzgd()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzawp:Lcom/google/android/gms/internal/zzos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzawp:Lcom/google/android/gms/internal/zzos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzos;->zzkj()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzge()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfx;->zzawp:Lcom/google/android/gms/internal/zzos;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgf()Lcom/google/android/gms/internal/zzhd;
    .locals 0

    return-object p0
.end method
