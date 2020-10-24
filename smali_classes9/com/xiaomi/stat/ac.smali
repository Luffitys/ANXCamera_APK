.class Lcom/xiaomi/stat/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/ab;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/stat/ac;->a:Lcom/xiaomi/stat/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 8

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/stat/ac;->a:Lcom/xiaomi/stat/ab;

    invoke-static {p0}, Lcom/xiaomi/stat/ab;->a(Lcom/xiaomi/stat/ab;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pref"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/stat/ac;->a()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
