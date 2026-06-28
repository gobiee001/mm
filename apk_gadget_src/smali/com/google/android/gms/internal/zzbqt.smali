.class public final Lcom/google/android/gms/internal/zzbqt;
.super Lcom/google/android/gms/drive/zzy;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbqt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgqm:Lcom/google/android/gms/common/data/DataHolder;

.field private zzgqn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field private zzgqo:Lcom/google/android/gms/drive/zza;

.field private zzgqp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbqu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/List;Lcom/google/android/gms/drive/zza;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;",
            "Lcom/google/android/gms/drive/zza;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqm:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqn:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqo:Lcom/google/android/gms/drive/zza;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqp:Z

    return-void
.end method


# virtual methods
.method protected final zzaj(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    or-int/lit8 v0, p2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqm:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqn:Ljava/util/List;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqo:Lcom/google/android/gms/drive/zza;

    invoke-static {p1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbqt;->zzgqp:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
