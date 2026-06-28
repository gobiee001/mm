.class public final Lcom/google/android/gms/internal/zzagd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static zzae(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzajv;->zzbj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzajv;->zzrc()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzage;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzagb;->zznd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzakv;

    const-string v1, "Updating ad debug logging enablement."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->zzct(Ljava/lang/String;)V

    const-string v1, "AdDebugLogUpdater.updateEnablement"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzakj;->zza(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    goto :goto_0
.end method
