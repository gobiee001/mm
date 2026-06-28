.class public final Lcom/google/android/gms/ads/internal/zzx;
.super Lcom/google/android/gms/ads/internal/zzi;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private zzamr:Z

.field private zzaos:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/zzux;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzaos:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcow:Z

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->zze(Lcom/google/android/gms/internal/zzafo;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Could not get mediation view"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzaq;->zzf(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->zzr(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzgp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Lcom/google/android/gms/internal/zzafe;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzbt;->zzatw:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgt;)V

    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    iget v1, v1, Lcom/google/android/gms/internal/zzjn;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    iget v1, v1, Lcom/google/android/gms/internal/zzjn;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->showNext()V

    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->destroy()V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfj()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzem()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v3, "BannerAdManager.swapViews"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/zzaft;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapa;->zzc(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzanh;->zza(Lcom/google/android/gms/internal/zzapa;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    iget v1, v1, Lcom/google/android/gms/internal/zzjn;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcxn:Lcom/google/android/gms/internal/zzjn;

    iget v1, v1, Lcom/google/android/gms/internal/zzjn;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    throw v0

    :cond_a
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/zzll;
    .locals 1

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsg()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzaud:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanv;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjn;->zzbeo:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaax;->zzbeo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzafb;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafp;->zzcxy:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaax;->zzcoz:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "[xX]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/zzjn;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjn;->zzht()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafo;Z)V
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->zzf(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Lcom/google/android/gms/ads/internal/zzab;

    invoke-direct {v6, p0}, Lcom/google/android/gms/ads/internal/zzab;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzaq;->zzf(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_2

    if-nez v1, :cond_0

    throw v2

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    :goto_0
    if-nez v5, :cond_3

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v5, v2

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzces:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzces:Lcom/google/android/gms/internal/zzuh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzuh;->zzcdf:Ljava/util/List;

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string v0, "No template ids present in mediation response"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error occurred while recording impression and registering for clicks"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move-object v4, v2

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v0

    move-object v3, v0

    :goto_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcet:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object v0

    :goto_4
    const-string v2, "2"

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    invoke-static {v5}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/zzvj;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzvj;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzvj;->recordImpression()V

    :cond_7
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/nativeExpressViewClicked"

    const/4 v2, 0x0

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/ads/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/ads/internal/gmsg/zzt;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    goto :goto_1

    :cond_8
    move-object v3, v2

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto :goto_4

    :cond_a
    const-string v2, "1"

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    invoke-static {v5}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzvm;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvm;->getOverrideImpressionRecording()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvm;->recordImpression()V

    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    const-string v2, "/nativeExpressViewClicked"

    const/4 v3, 0x0

    invoke-static {v3, v0, v6}, Lcom/google/android/gms/ads/internal/zzaq;->zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/ads/internal/gmsg/zzt;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzani;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "No matching template id and mapper"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->zzcu(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;Lcom/google/android/gms/internal/zzafo;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxw:Lcom/google/android/gms/internal/zzis;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxw:Lcom/google/android/gms/internal/zzis;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Lcom/google/android/gms/internal/zziu$zza$zzb;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcpo:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzd(Lcom/google/android/gms/internal/zzafo;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfc()Lcom/google/android/gms/internal/zzaln;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzaln;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfc()Lcom/google/android/gms/internal/zzaln;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzaln;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxk:Z

    if-nez v0, :cond_3

    new-instance v2, Lcom/google/android/gms/ads/internal/zzy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/zzy;-><init>(Lcom/google/android/gms/ads/internal/zzx;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v3, Lcom/google/android/gms/ads/internal/zzz;

    invoke-direct {v3, p0, p2, v2}, Lcom/google/android/gms/ads/internal/zzz;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzafo;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzanq;)V

    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsg()Lcom/google/android/gms/internal/zzaoa;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzani;->zztt()V

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaup:Lcom/google/android/gms/internal/zzmr;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzaup:Lcom/google/android/gms/internal/zzmr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzaoa;->zzb(Lcom/google/android/gms/internal/zzmr;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfk()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxj:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;)V

    :cond_6
    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-nez v0, :cond_a

    throw v1

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzfl()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zznh;->zzbok:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzif()Lcom/google/android/gms/internal/zznf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zznf;->zzd(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_9
    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    goto :goto_2

    :cond_a
    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/internal/zzgp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzgp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzfd()Lcom/google/android/gms/internal/zzaff;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaff;->zzr(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->zzcnd:Lcom/google/android/gms/internal/zzjj;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzx;->zza(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lcom/google/android/gms/internal/zzafe;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzatw:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzafe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgt;)V

    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzafo;->zzfv()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzgp;->zza(Lcom/google/android/gms/internal/zzgt;)V

    :goto_3
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzafo;->zzcow:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzi(Landroid/view/View;)V

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object v2, p2, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/zzaa;

    invoke-direct {v3, p0, v1, p2}, Lcom/google/android/gms/ads/internal/zzaa;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzafo;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzano;)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauy:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/google/android/gms/internal/zzafo;->zzcxj:Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzanq:Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzauy:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzjn;Lcom/google/android/gms/internal/zzafo;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzauy:Landroid/view/View;

    goto :goto_3

    :cond_f
    move-object v0, v1

    goto :goto_3
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjj;)Z
    .locals 22

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzjj;->zzbdk:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/internal/zzjj;)Z

    move-result v2

    return v2

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzjj;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/internal/zzjj;->versionCode:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzjj;->zzbdf:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzjj;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/zzjj;->zzbdg:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzjj;->zzbdh:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzjj;->zzbdi:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/zzjj;->zzbdj:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzjj;->zzbdk:Z

    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/zzx;->zzamr:Z

    if-eqz v11, :cond_2

    :cond_1
    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/zzjj;->zzbdl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/zzjj;->zzbdm:Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/zzjj;->zzbdn:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/zzjj;->zzbdo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbdp:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbdq:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbdr:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbds:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbdt:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzjj;->zzbdu:Z

    move/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzmn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p1, v2

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method protected final zzcf()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzahn;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzajr;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzahn;->zzag(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzauc:Lcom/google/android/gms/internal/zzjn;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzajr;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method final zzd(Lcom/google/android/gms/internal/zzafo;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcxk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzei()Lcom/google/android/gms/internal/zzahn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzair:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzahn;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzano:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzatz:Lcom/google/android/gms/ads/internal/zzbu;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/ads/internal/zzbu;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafo;->zzciy:Lcom/google/android/gms/internal/zzanh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzanh;->zzsz()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzanq;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafo;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzafo;->zzcxk:Z

    goto :goto_0
.end method
