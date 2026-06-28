.class public interface abstract Landroid/support/v4/widget/AutoSizeableTextView;
.super Ljava/lang/Object;
.source "AutoSizeableTextView.java"


# static fields
.field public static final PLATFORM_SUPPORTS_AUTOSIZE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastOMR1()Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    return-void
.end method
