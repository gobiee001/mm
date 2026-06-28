.class Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppsomniacsGooglePlayLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method private constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p2, "x1"    # Lcom/appsomniacs/da2/DA2Activity$1;

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :cond_0
    return-void
.end method

.method public applicationError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 538
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v1}, Lcom/appsomniacs/da2/DA2Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string v1, "Error Code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v1}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_0

    .line 548
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v1, v0}, Lcom/appsomniacs/da2/DA2Activity;->access$400(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dontAllow(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    :cond_0
    return-void
.end method
