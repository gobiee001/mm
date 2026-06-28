.class public final Lcom/google/android/gms/internal/zzavx;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzaas()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzaas()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.auth.api.credentials.PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.credentials.hintRequestVersion"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.credentials.RequestType"

    const-string v3, "Hints"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.credentials.ClaimedCallingPackage"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.credentials.PasswordSpecification"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzbfr;->zza(Lcom/google/android/gms/internal/zzbfq;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.credentials.HintRequest"

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/zzbfr;->zza(Lcom/google/android/gms/internal/zzbfq;Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzeft:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    goto :goto_0
.end method
