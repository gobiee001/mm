.class final Lcom/google/android/gms/internal/zzasf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdzb:Lcom/google/android/gms/internal/zzase;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzase;->zzdyw:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzase;->zzdza:Lcom/google/android/gms/internal/zzasd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasd;->zza(Lcom/google/android/gms/internal/zzasd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzase;->zzdyw:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzasg;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzase;->zzdyy:Lcom/google/android/gms/internal/zzarv;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzase;->zzdyy:Lcom/google/android/gms/internal/zzarv;

    const-string v1, "AnalyticsJobService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapz;->zzdu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzase;->zzdza:Lcom/google/android/gms/internal/zzasd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasd;->zza(Lcom/google/android/gms/internal/zzasd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzasg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasf;->zzdzb:Lcom/google/android/gms/internal/zzase;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzase;->zzdyz:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzasg;->zza(Landroid/app/job/JobParameters;Z)V

    goto :goto_0
.end method
