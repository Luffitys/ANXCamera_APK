.class public final Lmiui/provider/Notes$Utils;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# static fields
.field public static final CLEAR_ACCOUNT_WIPE_ALL:I = 0x0

.field public static final CLEAR_ACCOUNT_WIPE_NONE:I = 0x2

.field public static final CLEAR_ACCOUNT_WIPE_SYNC:I = 0x1

.field private static final IMAGE_DIMENSION_MAX:I = 0x780

.field private static final KEY_DATA_BYTES:Ljava/lang/String; = "data_bytes"

.field private static final KEY_DATA_VALUES:Ljava/lang/String; = "data_values"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p0, p1}, Lmiui/provider/Notes$Utils;->removeSnippetIfHasDataContent(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data_values"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lmiui/provider/Notes$Utils;->marshall(Landroid/os/Bundle;)[B

    move-result-object v1

    const-string v2, "data_bytes"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1e
    return-void
.end method

.method public static clearAccount(Landroid/content/Context;I)Z
    .registers 10

    const-string v0, "Fail to clear account"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmiui/provider/Notes$Utils;->getAccountDeleteOP()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Notes"

    const/4 v5, 0x1

    if-eqz p1, :cond_4b

    if-eq p1, v5, :cond_2e

    if-eq p1, v3, :cond_35

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown wipeMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_2e
    invoke-static {v5}, Lmiui/provider/Notes$Utils;->getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    invoke-static {}, Lmiui/provider/Notes$Utils;->getTemporaryDeleteOP()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lmiui/provider/Notes$Utils;->getSyncClearOP()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lmiui/provider/Notes$Utils;->getDirtyUpdateOP()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_4b
    invoke-static {v2}, Lmiui/provider/Notes$Utils;->getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_53
    :try_start_53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notes"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    if-eq p1, v3, :cond_61

    invoke-static {p0}, Lmiui/provider/Notes$Utils;->updateAllWidgets(Landroid/content/Context;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_61} :catch_67
    .catch Landroid/content/OperationApplicationException; {:try_start_53 .. :try_end_61} :catch_62

    :cond_61
    return v5

    :catch_62
    move-exception v3

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c

    :catch_67
    move-exception v3

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_6c
    return v2
.end method

.method public static clearAccount(Landroid/content/Context;Z)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    invoke-static {p0, v0}, Lmiui/provider/Notes$Utils;->clearAccount(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p0, v0}, Lmiui/provider/Notes$Utils;->scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Notes"

    if-nez v1, :cond_14

    const-string v4, "Fail to createThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_14
    iget-object v4, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {p0, v1, v4}, Lmiui/provider/Notes$Utils;->rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_22

    const-string v4, "Fail to rotateBitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_22
    return-object v1
.end method

.method private static getAccountDeleteOP()Landroid/content/ContentProviderOperation;
    .registers 1

    sget-object v0, Lmiui/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private static getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "mime_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/text_note"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    goto :goto_4

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDirtyUpdateOP()Landroid/content/ContentProviderOperation;
    .registers 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dirty"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "file_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmiui/provider/Notes$Data;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private static getNoteDeleteOP(Z)Landroid/content/ContentProviderOperation;
    .registers 4

    const-string v0, "_id>0"

    if-eqz p0, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND sync_id>0 AND local_modified=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private static getSyncClearOP()Landroid/content/ContentProviderOperation;
    .registers 6

    const-string v0, "_id>0"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sync_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_tag"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "local_modified"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "origin_parent_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "account_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_data1"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_data2"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_data3"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_data4"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sync_data5"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sync_data6"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync_data7"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sync_data8"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method private static getTemporaryDeleteOP()Landroid/content/ContentProviderOperation;
    .registers 3

    const-string v0, "not (parent_id>=0 OR parent_id=-2 OR parent_id=-4)"

    sget-object v1, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalUnsyncedCount(Landroid/content/Context;)I
    .registers 6

    invoke-static {p0}, Lmiui/provider/Notes$Utils;->getUnsyncedCount(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_f

    aget v4, v0, v3

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    return v1
.end method

.method public static getUnsyncedCount(Landroid/content/Context;)[I
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "_id"

    const-string v3, "type"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lmiui/provider/Notes$Note;->CONTENT_URI_FOR_SYNC_ADAPTER:Landroid/net/Uri;

    const-string v7, "local_modified=1 AND _id>0 AND (sync_id>0 OR (sync_id<=0 AND snippet<>\'\'))"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    :goto_1d
    :try_start_1d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_35

    if-nez v5, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_2c
    if-ne v5, v4, :cond_30

    add-int/lit8 v1, v1, 0x1

    :cond_30
    :goto_30
    goto :goto_1d

    :cond_31
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_41

    :catchall_35
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3a
    const-string v5, "Notes"

    const-string v7, "getUnsyncedCount: cursor is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    aput v1, v5, v4

    return-object v5
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lmiui/provider/Notes$Utils;->insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static insertNoteAtomic(Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Z)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    invoke-static {p1, p2}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    if-eqz p3, :cond_b

    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static marshall(Landroid/os/Bundle;)[B
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method private static releaseCanvas(Landroid/graphics/Canvas;)V
    .registers 5

    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    nop

    goto :goto_1e

    :catch_16
    move-exception v0

    const-string v1, "Notes"

    const-string v2, "invoke Canvas.release failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method

.method public static removeDataValuesFromNoteValues(Landroid/content/ContentValues;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const-string v0, "data_bytes"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v1, :cond_2e

    invoke-static {v1}, Lmiui/provider/Notes$Utils;->unmarshall([B)Landroid/os/Bundle;

    move-result-object v0

    nop

    const-string v2, "data_values"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "snippet"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    invoke-static {v2}, Lmiui/provider/Notes$Utils;->getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-object v2

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static removeSnippetIfHasDataContent(Landroid/content/ContentValues;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const-string v0, "snippet"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p1}, Lmiui/provider/Notes$Utils;->getContentFromData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private static rotateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 14

    const-string v0, "Notes"

    const-string v1, "image/jpeg"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object p1

    :cond_b
    :try_start_b
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_93

    nop

    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1b

    return-object p1

    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v7, 0x3

    if-eq v2, v7, :cond_4e

    const/4 v7, 0x6

    if-eq v2, v7, :cond_41

    const/16 v7, 0x8

    if-eq v2, v7, :cond_34

    goto :goto_5a

    :cond_34
    const/high16 v7, 0x43870000    # 270.0f

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v5, 0x1

    goto :goto_5a

    :cond_41
    const/high16 v7, 0x42b40000    # 90.0f

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v5, 0x1

    goto :goto_5a

    :cond_4e
    const/high16 v7, 0x43340000    # 180.0f

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    nop

    :goto_5a
    if-eqz v5, :cond_5f

    move v7, v3

    move v3, v4

    move v4, v7

    :cond_5f
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_61
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v9

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_72
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_72} :catch_7c
    .catchall {:try_start_61 .. :try_end_72} :catchall_7a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    nop

    :goto_76
    invoke-static {v8}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto :goto_89

    :catchall_7a
    move-exception v0

    goto :goto_8a

    :catch_7c
    move-exception v9

    :try_start_7d
    const-string v10, "Fail to rotateBitmap"

    invoke-static {v0, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_7a

    nop

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v8, :cond_89

    goto :goto_76

    :cond_89
    :goto_89
    return-object v7

    :goto_8a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v8, :cond_92

    invoke-static {v8}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    :cond_92
    throw v0

    :catch_93
    move-exception v1

    const-string v2, "createThumbnail fail"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private static scaleBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static/range {p0 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v9, :cond_7d

    if-gtz v10, :cond_14

    goto/16 :goto_7d

    :cond_14
    const/4 v11, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x780

    if-gt v9, v2, :cond_22

    if-gt v10, v2, :cond_22

    :try_start_1c
    invoke-static {v7, v1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v11, v0

    goto :goto_64

    :cond_22
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float v12, v2, v3

    int-to-float v2, v9

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    int-to-float v2, v10

    div-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v14, v2

    float-to-int v2, v12

    const/4 v3, 0x1

    move v15, v2

    move/from16 v16, v3

    :goto_40
    if-le v15, v0, :cond_47

    shl-int/lit8 v16, v16, 0x1

    shr-int/lit8 v15, v15, 0x1

    goto :goto_40

    :cond_47
    mul-int v0, v9, v10

    mul-int v2, v16, v16

    div-int/2addr v0, v2

    const v2, 0x708000

    if-le v0, v2, :cond_5f

    move-object/from16 v1, p0

    move v2, v9

    move v3, v10

    move v4, v13

    move v5, v14

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lmiui/provider/Notes$Utils;->scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v11, v0

    goto :goto_64

    :cond_5f
    invoke-static {v7, v13, v14, v1}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_63} :catch_65

    move-object v11, v0

    :goto_64
    goto :goto_7c

    :catch_65
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notes"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    return-object v11

    :cond_7d
    :goto_7d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static scaleBitmapByRegion(Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v0, 0x0

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    shr-int/lit8 v10, v1, 0x1

    shr-int/lit8 v11, v2, 0x1

    shr-int/lit8 v12, v3, 0x1

    shr-int/lit8 v13, v4, 0x1

    :try_start_1a
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v9, v0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v5, p5

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v5, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v5, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6, v14, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    invoke-virtual {v14, v10, v5, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v12, v5, v3, v13}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6, v14, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v11, v10, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v5, v13, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6, v14, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v14, v10, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v15, v12, v13, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v6, v14, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v8, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_85} :catch_96
    .catchall {:try_start_1a .. :try_end_85} :catchall_94

    if-eqz v6, :cond_8a

    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_8a
    if-eqz v8, :cond_8f

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8f
    nop

    :goto_90
    invoke-static {v9}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto :goto_b2

    :catchall_94
    move-exception v0

    goto :goto_b3

    :catch_96
    move-exception v0

    :try_start_97
    const-string v5, "Notes"

    const-string v10, "Fail to scaleBitmapByRegion"

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v7, :cond_a5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a3
    .catchall {:try_start_97 .. :try_end_a3} :catchall_94

    const/4 v5, 0x0

    move-object v7, v5

    :cond_a5
    if-eqz v6, :cond_aa

    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_aa
    if-eqz v8, :cond_af

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_af
    if-eqz v9, :cond_b2

    goto :goto_90

    :cond_b2
    :goto_b2
    return-object v7

    :goto_b3
    if-eqz v6, :cond_b8

    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_b8
    if-eqz v8, :cond_bd

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_bd
    if-eqz v9, :cond_c2

    invoke-static {v9}, Lmiui/provider/Notes$Utils;->releaseCanvas(Landroid/graphics/Canvas;)V

    :cond_c2
    throw v0
.end method

.method private static unmarshall([B)Landroid/os/Bundle;
    .registers 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static updateAllAlarms(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.notes.action.REFRESH_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/provider/Notes$Utils;->updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static updateNoteAtomic(Landroid/content/Context;JLandroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    invoke-static {p3, p4}, Lmiui/provider/Notes$Utils;->addDataValuesToNoteValues(Landroid/content/ContentValues;Ljava/util/ArrayList;)V

    sget-object v0, Lmiui/provider/Notes$Note;->CONTENT_URI_ATOMIC:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz p7, :cond_f

    invoke-static {v0}, Lmiui/provider/Notes;->appendSyncAdapterFlag(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p5, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
