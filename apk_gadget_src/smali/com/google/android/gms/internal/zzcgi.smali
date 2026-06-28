.class public final Lcom/google/android/gms/internal/zzcgi;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcgi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final zzifm:Ljava/lang/String;

.field public final zzixs:Ljava/lang/String;

.field public final zzixt:Ljava/lang/String;

.field public final zzixu:J

.field public final zzixv:J

.field public final zzixw:Ljava/lang/String;

.field public final zzixx:Z

.field public final zzixy:Z

.field public final zzixz:J

.field public final zziya:Ljava/lang/String;

.field public final zziyb:J

.field public final zziyc:J

.field public final zziyd:I

.field public final zziye:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcgj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcgj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcgi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    iput-object p11, p0, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    iput-wide p12, p0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    iput-object p9, p0, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
