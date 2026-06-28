.class final Lcom/google/android/gms/internal/zzww;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzchd:Lcom/google/android/gms/internal/zzwu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzww;->zzchd:Lcom/google/android/gms/internal/zzwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzww;->zzchd:Lcom/google/android/gms/internal/zzwu;

    const-string v1, "User canceled the download."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxb;->zzbm(Ljava/lang/String;)V

    return-void
.end method
