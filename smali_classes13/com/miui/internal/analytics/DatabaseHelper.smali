.class Lcom/miui/internal/analytics/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "create table analytics (_id integer primary key autoincrement,_time datetime,_status integer,package text,type integer,event_id text,param text,time text,value text)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "analytics.db"

.field private static final DELETE_EXPIRED_ITEMS:Ljava/lang/String; = "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

.field private static final DELETE_ITEMS:Ljava/lang/String; = "delete from analytics where _status = 1"

.field private static final INSERT_ITEM:Ljava/lang/String; = "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lcom/miui/internal/analytics/DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_ITEMS:Ljava/lang/String; = "select * from analytics where _status = 1"

.field private static final TABLE_NAME:Ljava/lang/String; = "analytics"

.field private static final TAG:Ljava/lang/String; = "AnalyticsDatabaseHelper"

.field private static final UPDATE_ALL_ITEMS_SATUS:Ljava/lang/String; = "update analytics set _status = 0"

.field private static final UPDATE_ITEMS_SATUS:Ljava/lang/String; = "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

.field private static final VERSION:I = 0x2


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/internal/analytics/DatabaseHelper$2;

    invoke-direct {v0}, Lcom/miui/internal/analytics/DatabaseHelper$2;-><init>()V

    sput-object v0, Lcom/miui/internal/analytics/DatabaseHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/miui/internal/analytics/DatabaseHelper$1;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "analytics.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/internal/analytics/DatabaseHelper$1;-><init>(Lcom/miui/internal/analytics/DatabaseHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v6, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/analytics/DatabaseHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/analytics/DatabaseHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/internal/analytics/DatabaseHelper;
    .registers 1

    sget-object v0, Lcom/miui/internal/analytics/DatabaseHelper;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/analytics/DatabaseHelper;

    return-object v0
.end method


# virtual methods
.method public deleteLastDispatchedEvents()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "delete from analytics where _status = 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_26

    :catch_e
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "can\'t delete from database:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnalyticsDatabaseHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_22

    const-string v3, "insert into analytics values (null, datetime(\'now\'), 0, ?, ?, ?, ?, ?, ?)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_22} :catch_23

    :cond_22
    goto :goto_39

    :catch_23
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "database:%s is not writable!"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsDatabaseHelper"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "delete from analytics where _time < datetime(\'now\', \'-7 days\')"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "update analytics set _status = 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\'))))"

    if-eqz p1, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update analytics set _status = 1 where (_time < datetime(date(datetime(\'now\')))) and ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :cond_31
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "select * from analytics where _status = 1"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_3f} :catch_47
    .catchall {:try_start_2 .. :try_end_3f} :catchall_45

    if-eqz v1, :cond_63

    :goto_41
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_63

    :catchall_45
    move-exception v2

    goto :goto_64

    :catch_47
    move-exception v2

    :try_start_48
    const-string v3, "AnalyticsDatabaseHelper"

    const-string v4, "can\'t read database:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/internal/analytics/DatabaseHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_45

    nop

    if-eqz v1, :cond_63

    goto :goto_41

    :cond_63
    :goto_63
    return-object v0

    :goto_64
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_69
    throw v2
.end method
