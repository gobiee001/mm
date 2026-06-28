.class final Lcom/google/android/gms/internal/zzank;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private synthetic zzdld:Lcom/google/android/gms/internal/zzafb;

.field private synthetic zzdlf:Lcom/google/android/gms/internal/zzani;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzani;Lcom/google/android/gms/internal/zzafb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzank;->zzdlf:Lcom/google/android/gms/internal/zzani;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzank;->zzdld:Lcom/google/android/gms/internal/zzafb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzank;->zzdlf:Lcom/google/android/gms/internal/zzani;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzank;->zzdld:Lcom/google/android/gms/internal/zzafb;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzani;->zza(Lcom/google/android/gms/internal/zzani;Landroid/view/View;Lcom/google/android/gms/internal/zzafb;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
