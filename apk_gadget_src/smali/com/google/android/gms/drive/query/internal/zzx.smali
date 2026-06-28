.class public final Lcom/google/android/gms/drive/query/internal/zzx;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzgvp:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvq:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvr:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvs:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvt:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvu:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvv:Lcom/google/android/gms/drive/query/internal/zzx;

.field private static zzgvw:Lcom/google/android/gms/drive/query/internal/zzx;

.field public static final zzgvx:Lcom/google/android/gms/drive/query/internal/zzx;


# instance fields
.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvp:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "<"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvq:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "<="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvr:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, ">"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvs:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, ">="

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvt:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvu:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "or"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvv:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "not"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvw:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzx;

    const-string v1, "contains"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/zzx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzx;->zzgvx:Lcom/google/android/gms/drive/query/internal/zzx;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/drive/query/internal/zzx;

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbfp;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzx;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbfp;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbfp;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
