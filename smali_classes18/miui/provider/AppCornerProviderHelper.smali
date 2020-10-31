.class public Lmiui/provider/AppCornerProviderHelper;
.super Ljava/lang/Object;
.source "AppCornerProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_6
    sget-object v1, Lmiui/provider/AppCornerProviderConstants;->URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v2, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_30

    :cond_26
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_37

    if-ne v0, v9, :cond_2d

    goto :goto_2e

    :cond_2d
    move v9, v10

    :goto_2e
    move v1, v9

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v1, 0x1

    :goto_31
    if-eqz v8, :cond_36

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_36
    return v1

    :catchall_37
    move-exception v0

    if-eqz v8, :cond_3d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0
.end method
