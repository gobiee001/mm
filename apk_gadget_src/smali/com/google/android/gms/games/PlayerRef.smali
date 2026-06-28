.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final zzhlz:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzhmr:Lcom/google/android/gms/games/internal/player/zze;

.field private final zzhms:Lcom/google/android/gms/games/internal/player/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/zze;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/internal/player/zze;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    new-instance v0, Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhms:Lcom/google/android/gms/games/internal/player/zzd;

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getInteger(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/zze;->zzhve:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/zze;->zzhvf:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq v1, v8, :cond_2

    new-instance v2, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/zze;->zzhvf:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/zze;->zzhvh:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v7, v2

    :goto_1
    new-instance v1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/zze;->zzhvc:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/zze;->zzhvi:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->zzhlz:Lcom/google/android/gms/games/PlayerLevelInfo;

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhlz:Lcom/google/android/gms/games/PlayerLevelInfo;

    goto :goto_2

    :cond_2
    move-object v7, v0

    goto :goto_1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public final getBannerImageLandscapeUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImageLandscapeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getBannerImagePortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuu:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/data/zzc;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final getHiResImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhux:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getHiResImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastPlayedWithTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzga(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhlz:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhut:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRetrievedTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhuz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle(Landroid/database/CharArrayBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/data/zzc;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final hasHiResImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIconImage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public final isMuted()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzarj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzark()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzarl()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhva:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final zzarm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzarn()Lcom/google/android/gms/games/internal/player/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->zzgc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhms:Lcom/google/android/gms/games/internal/player/zzd;

    goto :goto_0
.end method

.method public final zzaro()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final zzarp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->zzhmr:Lcom/google/android/gms/games/internal/player/zze;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/zze;->zzhvy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
