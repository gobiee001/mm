.class public final Lcom/google/android/gms/internal/zzasm;
.super Lcom/google/android/gms/internal/zzaqa;


# instance fields
.field private zzdox:Z

.field private zzdqz:Ljava/lang/String;

.field private zzdra:Ljava/lang/String;

.field private zzdvo:I

.field protected zzdxr:I

.field protected zzdzk:Z

.field private zzdzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqa;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    return-void
.end method


# virtual methods
.method public final zzaai()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaaj()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasm;->zzdzl:Z

    return v0
.end method

.method public final zzaak()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzasm;->zzdox:Z

    return v0
.end method

.method protected final zzvf()V
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x81

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapz;->zzdx(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v5, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzapz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v3, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/zzarn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz;->zzwr()Lcom/google/android/gms/internal/zzaqc;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/zzarn;-><init>(Lcom/google/android/gms/internal/zzaqc;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzarb;->zzav(I)Lcom/google/android/gms/internal/zzara;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarp;

    if-eqz v0, :cond_0

    const-string v3, "Loading global XML config values"

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdqz:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdqz:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzasm;->zzdqz:Ljava/lang/String;

    const-string v5, "XML config - app name"

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdra:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v3, v1

    :goto_3
    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdra:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzasm;->zzdra:Ljava/lang/String;

    const-string v5, "XML config - app version"

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdxq:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v3, v1

    :goto_4
    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdxq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "verbose"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v2

    :goto_5
    if-ltz v3, :cond_4

    iput v3, p0, Lcom/google/android/gms/internal/zzasm;->zzdvo:I

    const-string v5, "XML config - log level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/zzapz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdxr:I

    if-ltz v3, :cond_d

    move v3, v1

    :goto_6
    if-eqz v3, :cond_5

    iget v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdxr:I

    iput v3, p0, Lcom/google/android/gms/internal/zzasm;->zzdxr:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzasm;->zzdzk:Z

    const-string v5, "XML config - dispatch period (sec)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget v3, v0, Lcom/google/android/gms/internal/zzarp;->zzdxs:I

    if-eq v3, v4, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/zzarp;->zzdxs:I

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzasm;->zzdox:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzasm;->zzdzl:Z

    const-string v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzapz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    const-string v5, "info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v1

    goto :goto_5

    :cond_a
    const-string v5, "warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x2

    goto :goto_5

    :cond_b
    const-string v5, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    goto :goto_5

    :cond_c
    move v3, v4

    goto :goto_5

    :cond_d
    move v3, v2

    goto :goto_6

    :cond_e
    move v0, v2

    goto :goto_7
.end method

.method public final zzvi()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasm;->zzdqz:Ljava/lang/String;

    return-object v0
.end method

.method public final zzvj()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqa;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasm;->zzdra:Ljava/lang/String;

    return-object v0
.end method
