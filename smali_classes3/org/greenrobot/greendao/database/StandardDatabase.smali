.class public Lorg/greenrobot/greendao/database/StandardDatabase;
.super Ljava/lang/Object;
.source "StandardDatabase.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 1

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public endTransaction()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public inTransaction()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public setTransactionSuccessful()V
    .locals 0

    iget-object p0, p0, Lorg/greenrobot/greendao/database/StandardDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
