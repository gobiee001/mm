.class public Lcom/google/android/gms/internal/zzbld;
.super Ljava/lang/Object;


# instance fields
.field public final title:Ljava/lang/String;

.field public final zzgkk:Lcom/google/android/gms/drive/DriveId;

.field public final zzgmn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field public final zzgmo:Ljava/lang/Integer;

.field public final zzgmp:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbld;->zzgmn:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbld;->zzgmo:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbld;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbld;->zzgkk:Lcom/google/android/gms/drive/DriveId;

    iput p5, p0, Lcom/google/android/gms/internal/zzbld;->zzgmp:I

    return-void
.end method
