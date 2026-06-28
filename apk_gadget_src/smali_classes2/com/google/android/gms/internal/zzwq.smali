.class final Lcom/google/android/gms/internal/zzwq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzcgj:Lcom/google/android/gms/internal/zzwo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwq;->zzcgj:Lcom/google/android/gms/internal/zzwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwq;->zzcgj:Lcom/google/android/gms/internal/zzwo;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzxb;->zzbm(Ljava/lang/String;)V

    return-void
.end method
