.class final Lcom/appsomniacs/da2/DA2Activity$29;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->requestExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 4225
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->requestExit()V

    .line 4226
    return-void
.end method
