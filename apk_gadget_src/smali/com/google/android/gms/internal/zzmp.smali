.class public final Lcom/google/android/gms/internal/zzmp;
.super Lcom/google/android/gms/internal/zzjn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjn;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjn;->zzbek:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/zzjn;->height:I

    iget v3, p1, Lcom/google/android/gms/internal/zzjn;->heightPixels:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/zzjn;->zzbel:Z

    iget v5, p1, Lcom/google/android/gms/internal/zzjn;->width:I

    iget v6, p1, Lcom/google/android/gms/internal/zzjn;->widthPixels:I

    iget-object v7, p1, Lcom/google/android/gms/internal/zzjn;->zzbem:[Lcom/google/android/gms/internal/zzjn;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzjn;->zzben:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzjn;->zzbeo:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/zzjn;->zzbep:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzjn;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/zzjn;ZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmp;->zzbek:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzmp;->height:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzmp;->width:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
