.class public final Lcom/google/android/gms/internal/zzbrd;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbrd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgdm:I

.field private zzgqw:Lcom/google/android/gms/drive/events/ChangeEvent;

.field private zzgqx:Lcom/google/android/gms/drive/events/CompletionEvent;

.field private zzgqy:Lcom/google/android/gms/drive/events/zzl;

.field private zzgqz:Lcom/google/android/gms/drive/events/zzb;

.field private zzgra:Lcom/google/android/gms/drive/events/zzr;

.field private zzgrb:Lcom/google/android/gms/drive/events/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbre;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbrd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzl;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzr;Lcom/google/android/gms/drive/events/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbrd;->zzgdm:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqw:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqx:Lcom/google/android/gms/drive/events/CompletionEvent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqy:Lcom/google/android/gms/drive/events/zzl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqz:Lcom/google/android/gms/drive/events/zzb;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbrd;->zzgra:Lcom/google/android/gms/drive/events/zzr;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbrd;->zzgrb:Lcom/google/android/gms/drive/events/zzn;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgdm:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqw:Lcom/google/android/gms/drive/events/ChangeEvent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqx:Lcom/google/android/gms/drive/events/CompletionEvent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqy:Lcom/google/android/gms/drive/events/zzl;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqz:Lcom/google/android/gms/drive/events/zzb;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgra:Lcom/google/android/gms/drive/events/zzr;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbrd;->zzgrb:Lcom/google/android/gms/drive/events/zzn;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzapg()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgdm:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/zzbrd;->zzgdm:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected event type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqw:Lcom/google/android/gms/drive/events/ChangeEvent;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqx:Lcom/google/android/gms/drive/events/CompletionEvent;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqy:Lcom/google/android/gms/drive/events/zzl;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgqz:Lcom/google/android/gms/drive/events/zzb;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgra:Lcom/google/android/gms/drive/events/zzr;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrd;->zzgrb:Lcom/google/android/gms/drive/events/zzn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
