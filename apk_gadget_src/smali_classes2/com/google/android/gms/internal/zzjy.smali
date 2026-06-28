.class final Lcom/google/android/gms/internal/zzjy;
.super Lcom/google/android/gms/internal/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjr$zza",
        "<",
        "Lcom/google/android/gms/internal/zzpz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbfc:Lcom/google/android/gms/internal/zzjr;

.field private synthetic zzbff:Landroid/view/View;

.field private synthetic zzbfg:Ljava/util/HashMap;

.field private synthetic zzbfh:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjr;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjy;->zzbfc:Lcom/google/android/gms/internal/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjy;->zzbff:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjy;->zzbfg:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjy;->zzbfh:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjr$zza;-><init>(Lcom/google/android/gms/internal/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzla;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzbff:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjy;->zzbfg:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjy;->zzbfh:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzla;->createNativeAdViewHolderDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/zzpz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzhw()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzbfc:Lcom/google/android/gms/internal/zzjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjr;->zzf(Lcom/google/android/gms/internal/zzjr;)Lcom/google/android/gms/internal/zzrj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjy;->zzbff:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjy;->zzbfg:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjy;->zzbfh:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzrj;->zzb(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/zzpz;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzbfc:Lcom/google/android/gms/internal/zzjr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjy;->zzbff:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "native_ad_view_holder_delegate"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzjr;->zza(Lcom/google/android/gms/internal/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmk;-><init>()V

    goto :goto_0
.end method
