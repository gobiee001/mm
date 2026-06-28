.class public Lio/topvpn/vpn_api/db_helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "db_helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/db_helper$mobile_usage;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "topvpn.db"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    const-string v0, "topvpn.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "CREATE TABLE mobile_usage (_id INTEGER PRIMARY KEY,date INTEGER,app_bw INTEGER,device_bw_since_boot INTEGER,device_daily_bw INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
