.class public Lmiui/app/RemoveDuplicateContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/RemoveDuplicateContacts$ContactsInfo;,
        Lmiui/app/RemoveDuplicateContacts$MergeContacts;,
        Lmiui/app/RemoveDuplicateContacts$GroupsData;,
        Lmiui/app/RemoveDuplicateContacts$RawContactData;,
        Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;
    }
.end annotation


# static fields
.field public static final CALLER_IS_REMOVE_DUPLICATE:Ljava/lang/String; = "caller_is_remove_duplicate"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = false

.field private static final NAME_SELECTION:Ljava/lang/String; = "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

.field public static final TAG:Ljava/lang/String; = "RemoveDuplicateContacts"

.field private static final sGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOtherMimeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/gender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/bloodType"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/constellation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/animalSign"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/emotionStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/interest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/hobby"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/degree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/schools"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/characteristic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/xiaomiId"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/lunarBirthday"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_47

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v0, :cond_3d

    goto :goto_24

    :cond_3d
    invoke-static {p1, v7, v6}, Lmiui/app/RemoveDuplicateContacts;->getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_46
    goto :goto_24

    :cond_47
    return-object v2
.end method

.method private static getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/EntityIterator;"
        }
    .end annotation

    sget-object v1, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2a

    const/4 v1, 0x0

    return-object v1

    :cond_2a
    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1

    return-object v1
.end method

.method private static getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lmiui/app/RemoveDuplicateContacts$GroupsData;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    const-string v0, "_id"

    const-string v2, "title"

    const-string v3, "sourceid"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x2

    const-string v11, "account_name = ? AND account_type = ? "

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v8, v12

    iget-object v4, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v4, v8, v13

    const-string v14, "title,sourceid DESC"

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "account_name = ? AND account_type = ? "

    const-string v9, "title,sourceid DESC"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_5e

    :goto_32
    :try_start_32
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_55

    new-instance v7, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-direct {v7}, Lmiui/app/RemoveDuplicateContacts$GroupsData;-><init>()V

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_59

    move-object v1, p0

    goto :goto_32

    :cond_55
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5e

    :catchall_59
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5e
    :goto_5e
    return-object v5
.end method

.method public static getMergeRawContacts([Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/app/RemoveDuplicateContacts$MergeContacts;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "_id"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_e
    if-ge v6, v4, :cond_1a3

    aget-object v7, v1, v6

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v9, v5

    iget-object v10, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    nop

    invoke-static {v2, v9}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v12

    if-nez v12, :cond_2f

    move-object/from16 v30, v0

    move/from16 v29, v4

    goto/16 :goto_196

    :cond_2f
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_37
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_190

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v8, :cond_51

    const/4 v5, 0x0

    goto :goto_37

    :cond_51
    invoke-static {v2, v15}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v5

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v16

    :goto_5c
    :try_start_5c
    invoke-interface {v5}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15b

    invoke-interface {v5}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    move-object/from16 v25, v16

    move-object/from16 v8, v25

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v16, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v18

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v18

    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-wide/from16 v27, v16

    :goto_94
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_98
    .catchall {:try_start_5c .. :try_end_98} :catchall_186

    if-eqz v16, :cond_121

    :try_start_9a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v17, v16

    move-object/from16 v11, v17

    iget-object v1, v11, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v29, v4

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b4
    .catchall {:try_start_9a .. :try_end_b4} :catchall_119

    if-eqz v4, :cond_d1

    :try_start_b6
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_c9

    move-object/from16 v30, v0

    move-wide/from16 v27, v16

    move-object/from16 v4, v25

    move-object/from16 v25, v7

    move-object/from16 v7, v26

    goto :goto_103

    :catchall_c9
    move-exception v0

    move-object/from16 v25, v7

    move-object v1, v15

    move-object/from16 v2, v23

    goto/16 :goto_18c

    :cond_d1
    :try_start_d1
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_119

    move-object/from16 v30, v0

    const-string v0, "data1"

    if-eqz v4, :cond_eb

    :try_start_dd
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_c9

    move-object/from16 v25, v7

    move-object/from16 v7, v26

    goto :goto_103

    :cond_eb
    move-object/from16 v4, v25

    move-object/from16 v25, v7

    :try_start_ef
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_101

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v26

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catchall {:try_start_ef .. :try_end_100} :catchall_113

    goto :goto_103

    :cond_101
    move-object/from16 v7, v26

    :goto_103
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v26, v7

    move-object/from16 v7, v25

    move-object/from16 v0, v30

    const/4 v11, 0x1

    move-object/from16 v25, v4

    move/from16 v4, v29

    goto :goto_94

    :catchall_113
    move-exception v0

    move-object v1, v15

    move-object/from16 v2, v23

    goto/16 :goto_18c

    :catchall_119
    move-exception v0

    move-object/from16 v25, v7

    move-object v1, v15

    move-object/from16 v2, v23

    goto/16 :goto_18c

    :cond_121
    move-object/from16 v30, v0

    move/from16 v29, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v7

    move-object/from16 v7, v26

    :try_start_12b
    new-instance v0, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;
    :try_end_12d
    .catchall {:try_start_12b .. :try_end_12d} :catchall_156

    move-object v1, v15

    move-object v15, v0

    move-wide/from16 v16, v27

    move-object/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    :try_start_137
    invoke-direct/range {v15 .. v22}, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_152

    move-object/from16 v2, v23

    :try_start_13c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_150

    move-object v15, v1

    move-object/from16 v23, v2

    move-object/from16 v7, v25

    move/from16 v4, v29

    move-object/from16 v0, v30

    const/4 v8, 0x2

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_5c

    :catchall_150
    move-exception v0

    goto :goto_18c

    :catchall_152
    move-exception v0

    move-object/from16 v2, v23

    goto :goto_18c

    :catchall_156
    move-exception v0

    move-object v1, v15

    move-object/from16 v2, v23

    goto :goto_18c

    :cond_15b
    move-object/from16 v30, v0

    move/from16 v29, v4

    move-object/from16 v25, v7

    move-object v1, v15

    move-object/from16 v2, v23

    invoke-interface {v5}, Landroid/content/EntityIterator;->close()V

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_177

    new-instance v0, Lmiui/app/RemoveDuplicateContacts$MergeContacts;

    invoke-direct {v0, v2, v14}, Lmiui/app/RemoveDuplicateContacts$MergeContacts;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_177
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v11, v4

    move-object/from16 v7, v25

    move/from16 v4, v29

    move-object/from16 v0, v30

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto/16 :goto_37

    :catchall_186
    move-exception v0

    move-object/from16 v25, v7

    move-object v1, v15

    move-object/from16 v2, v23

    :goto_18c
    invoke-interface {v5}, Landroid/content/EntityIterator;->close()V

    throw v0

    :cond_190
    move-object/from16 v30, v0

    move/from16 v29, v4

    move-object/from16 v25, v7

    :goto_196
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v29

    move-object/from16 v0, v30

    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_1a3
    return-object v3
.end method

.method private static getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "display_name"

    const-string v3, "_id"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1c

    const/4 v2, 0x0

    return-object v2

    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_45

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_52

    :goto_4c
    goto :goto_1c

    :cond_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    nop

    return-object v0

    :catchall_52
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "RemoveDuplicateContacts"

    const/4 v2, 0x0

    if-eqz p1, :cond_1b8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v10, p2

    goto/16 :goto_1ba

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v5

    if-nez v5, :cond_1c

    return-object v2

    :cond_1c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    :try_start_21
    invoke-interface {v5}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_110

    invoke-interface {v5}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    new-instance v8, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-direct {v8}, Lmiui/app/RemoveDuplicateContacts$RawContactData;-><init>()V

    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setRawContactId(J)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_41} :catch_11f
    .catchall {:try_start_21 .. :try_end_41} :catchall_118

    move-object/from16 v10, p2

    :try_start_43
    iput-object v10, v8, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    const-string v11, "sourceid"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_55
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_100

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity$NamedContentValues;

    iget-object v13, v12, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v14, "mimetype"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "vnd.android.cursor.item/photo"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8e

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_75} :catch_10e
    .catchall {:try_start_43 .. :try_end_75} :catchall_10c

    move-wide/from16 v16, v3

    :try_start_77
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v8, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    const-string v2, "data14"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    const/16 v2, 0x64

    goto :goto_8a

    :cond_88
    const/16 v2, 0xa

    :goto_8a
    iput v2, v8, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    goto/16 :goto_fb

    :cond_8e
    move-wide/from16 v16, v3

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_96} :catch_10a
    .catchall {:try_start_77 .. :try_end_96} :catchall_1b3

    const-string v3, "data1"

    if-eqz v2, :cond_b8

    :try_start_9a
    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_b3

    const-string v15, ""

    goto :goto_b4

    :cond_b3
    move-object v15, v4

    :goto_b4
    invoke-virtual {v8, v14, v15}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    :cond_b8
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v14, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    :cond_c8
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    :goto_d0
    goto :goto_fb

    :cond_d1
    sget-object v2, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-virtual {v8, v14, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    goto :goto_fb

    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore unknown mimetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fb
    move-wide/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_55

    :cond_100
    move-wide/from16 v16, v3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_105} :catch_10a
    .catchall {:try_start_9a .. :try_end_105} :catchall_1b3

    move-wide/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_21

    :catch_10a
    move-exception v0

    goto :goto_124

    :catchall_10c
    move-exception v0

    goto :goto_11b

    :catch_10e
    move-exception v0

    goto :goto_122

    :cond_110
    move-object/from16 v10, p2

    move-wide/from16 v16, v3

    :goto_114
    invoke-interface {v5}, Landroid/content/EntityIterator;->close()V

    goto :goto_140

    :catchall_118
    move-exception v0

    move-object/from16 v10, p2

    :goto_11b
    move-wide/from16 v16, v3

    goto/16 :goto_1b4

    :catch_11f
    move-exception v0

    move-object/from16 v10, p2

    :goto_122
    move-wide/from16 v16, v3

    :goto_124
    :try_start_124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNeedDeletedRawContacts(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13f
    .catchall {:try_start_124 .. :try_end_13f} :catchall_1b3

    goto :goto_114

    :goto_140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_14d

    const/4 v3, 0x0

    return-object v3

    :cond_14d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_153
    add-int/lit8 v7, v2, -0x1

    if-ge v4, v7, :cond_1ae

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-virtual {v7}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v8

    if-eqz v8, :cond_164

    goto :goto_1ab

    :cond_164
    add-int/lit8 v8, v4, 0x1

    :goto_166
    if-ge v8, v2, :cond_1ab

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-virtual {v9}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v11

    if-eqz v11, :cond_175

    goto :goto_1a8

    :cond_175
    invoke-virtual {v7, v9}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z

    move-result v11

    if-eqz v11, :cond_1a8

    iget-object v11, v9, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    const/4 v12, 0x1

    if-nez v11, :cond_187

    invoke-virtual {v9, v12}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a8

    :cond_187
    iget v11, v7, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    iget v13, v9, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    if-le v11, v13, :cond_194

    invoke-virtual {v9, v12}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a8

    :cond_194
    iget v11, v7, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    iget v13, v9, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    if-ge v11, v13, :cond_1a1

    invoke-virtual {v7, v12}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ab

    :cond_1a1
    invoke-virtual {v7, v12}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ab

    :cond_1a8
    :goto_1a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_166

    :cond_1ab
    :goto_1ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_153

    :cond_1ae
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    return-object v3

    :catchall_1b3
    move-exception v0

    :goto_1b4
    invoke-interface {v5}, Landroid/content/EntityIterator;->close()V

    throw v0

    :cond_1b8
    move-object/from16 v10, p2

    :goto_1ba
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized remove([Landroid/accounts/Account;Landroid/content/ContentResolver;Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;Z)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lmiui/app/RemoveDuplicateContacts;

    monitor-enter v3

    const/4 v4, 0x0

    if-eqz v0, :cond_f5

    if-nez v1, :cond_10

    goto/16 :goto_f5

    :cond_10
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1f

    invoke-interface {v2, v4}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    :cond_1f
    array-length v9, v0

    :goto_20
    if-ge v4, v9, :cond_5a

    aget-object v10, v0, v4

    sget-object v11, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    invoke-static {v10, v1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_31
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    sget-object v14, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    move-wide v15, v5

    iget-wide v5, v13, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v13, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    invoke-virtual {v14, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v5, v15

    goto :goto_31

    :cond_4d
    move-wide v15, v5

    invoke-static {v10, v1}, Lmiui/app/RemoveDuplicateContacts;->getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v15

    goto :goto_20

    :cond_5a
    move-wide v15, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e6

    new-instance v4, Lmiui/provider/BatchOperation;

    const-string v5, "com.android.contacts"

    invoke-direct {v4, v1, v5}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    if-eqz v2, :cond_71

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    :cond_71
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v6, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "caller_is_remove_duplicate"

    const-string v11, "true"

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v6, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    if-nez v11, :cond_b9

    nop

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, "caller_is_syncadapter"

    const-string v13, "true"

    invoke-virtual {v11, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object v10, v11

    goto :goto_c4

    :cond_b9
    if-nez p3, :cond_c4

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object v10, v11

    :cond_c4
    :goto_c4
    if-eqz v10, :cond_c9

    invoke-virtual {v4, v10}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    :cond_c9
    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->size()I

    move-result v11

    const/16 v12, 0x64

    if-le v11, v12, :cond_d4

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_d4
    if-eqz v2, :cond_d9

    invoke-interface {v2, v7}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onProgress(I)V

    :cond_d9
    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    :cond_dd
    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->size()I

    move-result v5

    if-lez v5, :cond_e6

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_e6
    if-eqz v2, :cond_ec

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onEnd(Z)V

    :cond_ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_f0
    .catchall {:try_start_10 .. :try_end_f0} :catchall_f2

    monitor-exit v3

    return v7

    :catchall_f2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_f5
    :goto_f5
    monitor-exit v3

    return v4
.end method

.method public static removeGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)V
    .registers 27

    move-object/from16 v7, p1

    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x1

    if-gt v1, v8, :cond_e

    return-void

    :cond_e
    const-string v9, "mimetype=? AND data1=?"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v10, v1

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v12, "vnd.android.cursor.item/group_membership"

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-ge v3, v1, :cond_e4

    if-nez v3, :cond_2b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v1, v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide v10, v1

    goto/16 :goto_df

    :cond_2b
    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v1, v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v2, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v4, v4, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v6, v6, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v12, v13, v14

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v13, v8

    move-object v12, v13

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "data1"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "mimetype=? AND data1=?"

    invoke-virtual {v7, v14, v13, v15, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update contacts group from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "RemoveDuplicateContacts"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    if-nez v6, :cond_af

    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    move-object/from16 v16, v1

    const-string v1, "caller_is_syncadapter"

    move-object/from16 v17, v2

    const-string v2, "true"

    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_b9

    :cond_af
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_b9
    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete group "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    :cond_d2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v1, v1, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide v10, v1

    :goto_df
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    goto/16 :goto_14

    :cond_e4
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v15, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    const-string v0, "_id"

    const-string v1, "raw_contact_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_104
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    new-array v5, v13, [Ljava/lang/String;

    aput-object v12, v5, v14

    iget-wide v1, v4, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const-string v19, "mimetype=? AND data1=?"

    move-object/from16 v1, p1

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object v13, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_169

    :goto_136
    :try_start_136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_15f

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_157

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15e

    :cond_157
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_136 .. :try_end_15e} :catchall_164

    :goto_15e
    goto :goto_136

    :cond_15f
    const/4 v2, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16a

    :catchall_164
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_169
    const/4 v2, 0x1

    :goto_16a
    move-object v6, v13

    const/4 v13, 0x2

    goto :goto_104

    :cond_16d
    move-object v13, v6

    new-instance v0, Lmiui/provider/BatchOperation;

    const-string v1, "com.android.contacts"

    invoke-direct {v0, v7, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_179
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1a5

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_1a5
    goto :goto_179

    :cond_1a6
    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v1

    if-lez v1, :cond_1af

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_1af
    return-void
.end method
