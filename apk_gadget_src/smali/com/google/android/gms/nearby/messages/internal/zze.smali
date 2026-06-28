.class public final Lcom/google/android/gms/nearby/messages/internal/zze;
.super Lcom/google/android/gms/internal/zzbfm;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/Distance;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accuracy:I

.field private zzeck:I

.field private zzjtl:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 3

    const/4 v2, 0x1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zze;-><init>(IID)V

    return-void
.end method

.method constructor <init>(IID)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzeck:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    iput-wide p3, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzjtl:D

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/Distance;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getAccuracy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    return v0
.end method

.method public final getMeters()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzjtl:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(%.1fm, %s)"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzjtl:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LOW"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzeck:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzjtl:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ID)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
