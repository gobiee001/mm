.class public final Lcom/google/android/gms/internal/zzbqv;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbqv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzgnz:Lcom/google/android/gms/drive/zzc;

.field final zzgqq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbqw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/zzc;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqv;->zzgnz:Lcom/google/android/gms/drive/zzc;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbqv;->zzgqq:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqv;->zzgnz:Lcom/google/android/gms/drive/zzc;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbqv;->zzgqq:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzapf()Lcom/google/android/gms/drive/zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqv;->zzgnz:Lcom/google/android/gms/drive/zzc;

    return-object v0
.end method
