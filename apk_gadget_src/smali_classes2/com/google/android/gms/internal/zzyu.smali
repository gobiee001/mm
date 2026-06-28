.class final Lcom/google/android/gms/internal/zzyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzcli:Lorg/json/JSONObject;

.field final synthetic zzclj:Lcom/google/android/gms/internal/zzalf;

.field final synthetic zzclk:Lcom/google/android/gms/internal/zzyt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyu;->zzcli:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyu;->zzclj:Lcom/google/android/gms/internal/zzalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyt;->zznj()Lcom/google/android/gms/internal/zzanh;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->zzug()Lcom/google/android/gms/internal/zzapa;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzapa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzba;->zze(Lcom/google/android/gms/internal/zzanh;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzyt;->zzb(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzani;->zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->zzclk:Lcom/google/android/gms/internal/zzyt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;Lcom/google/android/gms/internal/zzanh;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzyv;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzyv;-><init>(Lcom/google/android/gms/internal/zzyu;Lcom/google/android/gms/internal/zzanh;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzann;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzyw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzyw;-><init>(Lcom/google/android/gms/internal/zzyu;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzanm;)V

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzboo:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzanh;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyu;->zzclj:Lcom/google/android/gms/internal/zzalf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalf;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
