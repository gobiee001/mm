.class public Lcom/google/android/gms/internal/zzapz;
.super Ljava/lang/Object;


# instance fields
.field private final zzdta:Lcom/google/android/gms/internal/zzaqc;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    return-void
.end method

.method private final zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxh()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/zzarl;->zzdvy:Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarm;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzarv;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x5

    if-lt p1, v1, :cond_2

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzarv;->zzb(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzarl;->zzdvy:Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/internal/zzapz;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapz;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzapz;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzapz;->zzm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    const-string p0, "true"

    goto :goto_0

    :cond_2
    const-string p0, "false"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static zzpz()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzarl;->zzdvy:Lcom/google/android/gms/internal/zzarm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzarm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdu(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdv(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdw(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdx(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdy(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzapz;->zza(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzwr()Lcom/google/android/gms/internal/zzaqc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    return-object v0
.end method

.method protected final zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwt()Lcom/google/android/gms/internal/zzarv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwt()Lcom/google/android/gms/internal/zzarv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwu()Lcom/google/android/gms/internal/zzard;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwu()Lcom/google/android/gms/internal/zzard;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwv()Lcom/google/android/gms/analytics/zzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwv()Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    return-object v0
.end method

.method public final zzww()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxi()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwx()Lcom/google/android/gms/internal/zzapr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwx()Lcom/google/android/gms/internal/zzapr;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwy()Lcom/google/android/gms/internal/zzari;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwy()Lcom/google/android/gms/internal/zzari;

    move-result-object v0

    return-object v0
.end method

.method protected final zzwz()Lcom/google/android/gms/internal/zzasm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzwz()Lcom/google/android/gms/internal/zzasm;

    move-result-object v0

    return-object v0
.end method

.method protected final zzxa()Lcom/google/android/gms/internal/zzarz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxa()Lcom/google/android/gms/internal/zzarz;

    move-result-object v0

    return-object v0
.end method

.method protected final zzxb()Lcom/google/android/gms/internal/zzaqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxl()Lcom/google/android/gms/internal/zzaqu;

    move-result-object v0

    return-object v0
.end method

.method protected final zzxc()Lcom/google/android/gms/internal/zzapq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxk()Lcom/google/android/gms/internal/zzapq;

    move-result-object v0

    return-object v0
.end method

.method protected final zzxd()Lcom/google/android/gms/internal/zzaqn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxd()Lcom/google/android/gms/internal/zzaqn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzxe()Lcom/google/android/gms/internal/zzarh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz;->zzdta:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaqc;->zzxe()Lcom/google/android/gms/internal/zzarh;

    move-result-object v0

    return-object v0
.end method
