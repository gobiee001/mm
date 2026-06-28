.class final Lcom/google/android/gms/internal/zzyz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic zzclk:Lcom/google/android/gms/internal/zzyt;

.field private synthetic zzclm:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyz;->zzclk:Lcom/google/android/gms/internal/zzyt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyz;->zzclm:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyz;->zzclk:Lcom/google/android/gms/internal/zzyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyz;->zzclm:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzyt;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
