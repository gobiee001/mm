.class public final Lcom/google/android/gms/drive/events/zzl;
.super Lcom/google/android/gms/drive/zzy;

# interfaces
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzfqt:Lcom/google/android/gms/common/data/DataHolder;

.field private zzglu:Z

.field private zzglv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/events/zzl;->zzfqt:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p2, p0, Lcom/google/android/gms/drive/events/zzl;->zzglu:Z

    iput p3, p0, Lcom/google/android/gms/drive/events/zzl;->zzglv:I

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final zzaj(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/events/zzl;->zzfqt:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/events/zzl;->zzglu:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/drive/events/zzl;->zzglv:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzaou()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/events/zzl;->zzfqt:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public final zzaov()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/events/zzl;->zzglu:Z

    return v0
.end method

.method public final zzaow()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/events/zzl;->zzglv:I

    return v0
.end method
