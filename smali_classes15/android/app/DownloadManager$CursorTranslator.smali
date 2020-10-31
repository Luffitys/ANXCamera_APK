.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccessFilename:Z

.field private final mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    return-void
.end method

.method private getErrorCode(I)J
    .registers 4

    const/16 v0, 0x1e8

    const/16 v1, 0x190

    if-gt v1, p1, :cond_8

    if-lt p1, v0, :cond_10

    :cond_8
    const/16 v1, 0x1f4

    if-gt v1, p1, :cond_12

    const/16 v1, 0x258

    if-ge p1, v1, :cond_12

    :cond_10
    int-to-long v0, p1

    return-wide v0

    :cond_12
    const/16 v1, 0xc6

    if-eq p1, v1, :cond_3f

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_3c

    if-eq p1, v0, :cond_39

    const/16 v0, 0x1e9

    if-eq p1, v0, :cond_36

    const/16 v0, 0x1f1

    if-eq p1, v0, :cond_33

    packed-switch p1, :pswitch_data_42

    const-wide/16 v0, 0x3e8

    return-wide v0

    :pswitch_2a
    const-wide/16 v0, 0x3ec

    return-wide v0

    :pswitch_2d
    const-wide/16 v0, 0x3ea

    return-wide v0

    :pswitch_30
    const-wide/16 v0, 0x3e9

    return-wide v0

    :cond_33
    const-wide/16 v0, 0x3ed

    return-wide v0

    :cond_36
    const-wide/16 v0, 0x3f0

    return-wide v0

    :cond_39
    const-wide/16 v0, 0x3f1

    return-wide v0

    :cond_3c
    const-wide/16 v0, 0x3ef

    return-wide v0

    :cond_3f
    const-wide/16 v0, 0x3ee

    return-wide v0

    :pswitch_data_42
    .packed-switch 0x1ec
        :pswitch_30
        :pswitch_2d
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 6

    const-string v0, "destination"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    const-wide/16 v2, 0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    goto :goto_32

    :cond_1d
    const-string v2, "_id"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_32
    :goto_32
    const-string v2, "local_filename"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    const/4 v3, 0x0

    return-object v3

    :cond_40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPausedReason(I)J
    .registers 4

    packed-switch p1, :pswitch_data_16

    :pswitch_3
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x6

    return-wide v0

    :pswitch_9
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_c
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_f
    const-wide/16 v0, 0x1

    return-wide v0

    :pswitch_12
    const-wide/16 v0, 0x5

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0xc1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4

    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    const/16 v1, 0x10

    if-eq v0, v1, :cond_e

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_e
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    :cond_13
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static translateStatus(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    :pswitch_3
    goto :goto_d

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x2

    return v0

    :pswitch_b
    const/4 v0, 0x1

    return v0

    :goto_d
    const/16 v0, 0x10

    return v0

    :pswitch_data_10
    .packed-switch 0xbe
        :pswitch_b
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0, v1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_35
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x47d0d968

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1e

    const v2, 0x150cc5b

    if-eq v1, v2, :cond_14

    :cond_13
    goto :goto_28

    :cond_14
    const-string v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v3

    goto :goto_29

    :cond_1e
    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_29

    :goto_28
    const/4 v1, -0x1

    :goto_29
    if-eqz v1, :cond_43

    if-eq v1, v3, :cond_32

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_32
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v1, :cond_3b

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
