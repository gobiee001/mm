.class public final Lcom/google/android/gms/internal/zzlt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzamr:Z

.field private final zzbdw:I

.field private final zzbdz:I

.field private final zzbea:Ljava/lang/String;

.field private final zzbec:Ljava/lang/String;

.field private final zzbee:Landroid/os/Bundle;

.field private final zzbeg:Ljava/lang/String;

.field private final zzbei:Z

.field private final zzbfs:Landroid/os/Bundle;

.field private final zzbft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfu:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzbfv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbfw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhh:Ljava/util/Date;

.field private final zzhj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhl:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlt;-><init>(Lcom/google/android/gms/internal/zzlu;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzlu;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzlu;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhh:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzb(Lcom/google/android/gms/internal/zzlu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbec:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzc(Lcom/google/android/gms/internal/zzlu;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbdw:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzd(Lcom/google/android/gms/internal/zzlu;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhj:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zze(Lcom/google/android/gms/internal/zzlu;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhl:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzf(Lcom/google/android/gms/internal/zzlu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlt;->zzamr:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzg(Lcom/google/android/gms/internal/zzlu;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfs:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzh(Lcom/google/android/gms/internal/zzlu;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbft:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzi(Lcom/google/android/gms/internal/zzlu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbea:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzj(Lcom/google/android/gms/internal/zzlu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbeg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlt;->zzbfu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzk(Lcom/google/android/gms/internal/zzlu;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbdz:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzl(Lcom/google/android/gms/internal/zzlu;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfv:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzm(Lcom/google/android/gms/internal/zzlu;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbee:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzn(Lcom/google/android/gms/internal/zzlu;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfw:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlu;->zzo(Lcom/google/android/gms/internal/zzlu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbei:Z

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhh:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbec:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfs:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbee:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbdw:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhj:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzhl:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlt;->zzamr:Z

    return v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbft:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfs:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbea:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesignedForFamilies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbei:Z

    return v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfv:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->zzia()Lcom/google/android/gms/internal/zzajr;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajr;->zzbc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzik()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbeg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzil()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzim()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbft:Ljava/util/Map;

    return-object v0
.end method

.method public final zzin()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfs:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzio()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbdz:I

    return v0
.end method

.method public final zzip()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlt;->zzbfw:Ljava/util/Set;

    return-object v0
.end method
