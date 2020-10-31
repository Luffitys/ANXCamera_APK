.class public Lmiui/provider/ExtraContacts$Calls;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final BACKUP_PARAM:Ljava/lang/String; = "backup"

.field public static final BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final CLOUD_ANTISPAM_TYPE:Ljava/lang/String; = "cloud_antispam_type"

.field public static final CLOUD_ANTISPAM_TYPE_CUSTOM:I = 0x3

.field public static final CLOUD_ANTISPAM_TYPE_MAKRED:I = 0x2

.field public static final CLOUD_ANTISPAM_TYPE_NONE:I = 0x0

.field public static final CLOUD_ANTISPAM_TYPE_SP:I = 0x1

.field public static final CLOUD_ANTISPAM_TYPE_TAG:Ljava/lang/String; = "cloud_antispam_type_tag"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_CONVERSATION_URI:Landroid/net/Uri;

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_NONE:I = 0x0

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final FORWARDED_CALL:Ljava/lang/String; = "forwarded_call"

.field public static final INCOMING_FORWARDING_CALL:I = 0x1

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final MARK_DELETED:Ljava/lang/String; = "mark_deleted"

.field public static final MISSED_COUNT:Ljava/lang/String; = "missed_count"

.field public static final MY_NUMBER:Ljava/lang/String; = "my_number"

.field public static final NEWCONTACT_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NUMBER_TYPE:Ljava/lang/String; = "number_type"

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_YELLOWPAGE:I = 0x1

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final PHONE_CALL_TYPE:Ljava/lang/String; = "phone_call_type"

.field public static final PHONE_CALL_TYPE_CALLBACK:I = 0x2

.field public static final PHONE_CALL_TYPE_CONFERENCE:I = 0x3

.field public static final PHONE_CALL_TYPE_NONE:I = 0x0

.field public static final PHONE_CALL_TYPE_VOIP:I = 0x1

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SHADOW_AUTHORITY:Ljava/lang/String; = "call_log_shadow"

.field public static final SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SOURCE_ID:Ljava/lang/String; = "source_id"

.field public static final SYNC1:Ljava/lang/String; = "sync_1"

.field public static final SYNC2:Ljava/lang/String; = "sync_2"

.field public static final SYNC3:Ljava/lang/String; = "sync_3"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    nop

    const-string v0, "content://call_log/calls_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    nop

    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    nop

    const-string v0, "content://call_log/calls_conversation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "backup"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$Calls;->CONTENT_URI_WITH_BACKUP:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIII)Landroid/net/Uri;
    .registers 27

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    int-to-long v11, v0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v16}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJ)Landroid/net/Uri;
    .registers 28

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v15}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJ)Landroid/net/Uri;
    .registers 30

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-static/range {v0 .. v15}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJ)Landroid/net/Uri;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v0 .. v19}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZ)Landroid/net/Uri;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v0 .. v19}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v0 .. v23}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;
    .registers 44

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v0, 0x1

    sget v6, Lmiui/provider/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v2, v6, :cond_16

    const/4 v0, 0x2

    move v13, v0

    goto :goto_2c

    :cond_16
    sget v6, Lmiui/provider/PhoneConstants;->PRESENTATION_PAYPHONE:I

    if-ne v2, v6, :cond_1d

    const/4 v0, 0x4

    move v13, v0

    goto :goto_2c

    :cond_1d
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    sget v6, Lmiui/provider/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-ne v2, v6, :cond_28

    goto :goto_2a

    :cond_28
    move v13, v0

    goto :goto_2c

    :cond_2a
    :goto_2a
    const/4 v0, 0x3

    move v13, v0

    :goto_2c
    const/4 v0, 0x1

    if-eq v13, v0, :cond_3a

    const-string v6, ""

    if-eqz v1, :cond_38

    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/telecom/CallerInfo;->setName(Ljava/lang/String;)V

    :cond_38
    move-object v14, v6

    goto :goto_3c

    :cond_3a
    move-object/from16 v14, p2

    :goto_3c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v6

    const-string v6, "number"

    invoke-virtual {v15, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "presentation"

    invoke-virtual {v15, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v15, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "date"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move/from16 v11, p7

    int-to-long v8, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "duration"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "new"

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const/4 v10, 0x3

    if-eq v3, v10, :cond_80

    move/from16 v9, p8

    if-lt v9, v10, :cond_8b

    goto :goto_82

    :cond_80
    move/from16 v9, p8

    :goto_82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "is_read"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8b
    if-eqz v1, :cond_a8

    invoke-virtual/range {p0 .. p0}, Landroid/telecom/CallerInfo;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "name"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v1, Landroid/telecom/CallerInfo;->numberType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "numbertype"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, v1, Landroid/telecom/CallerInfo;->numberLabel:Ljava/lang/String;

    const-string v8, "numberlabel"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "firewalltype"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "forwarded_call"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "simid"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "phone_call_type"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "features"

    invoke-virtual {v15, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "subscription_component_name"

    move-object/from16 v8, p18

    invoke-virtual {v15, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "subscription_id"

    move-object/from16 v10, p19

    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "phone_account_address"

    move-object/from16 v10, p20

    invoke-virtual {v15, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt v6, v0, :cond_10a

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "block_reason"

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    # invokes: Lmiui/provider/ExtraContacts;->charSequenceToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static/range {p22 .. p22}, Lmiui/provider/ExtraContacts;->access$000(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "call_screening_app_name"

    invoke-virtual {v15, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call_screening_component_name"

    move-object/from16 v6, p23

    invoke-virtual {v15, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10c

    :cond_10a
    move-object/from16 v6, p23

    :goto_10c
    const/4 v0, 0x3

    if-ne v3, v0, :cond_169

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHONE_NUMBERS_EQUAL(number,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "date DESC"

    move-object v6, v12

    move-object v7, v0

    move-object/from16 v8, v17

    move-object v9, v1

    const/4 v0, 0x3

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_160

    :goto_145
    :try_start_145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_157

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_150
    .catchall {:try_start_145 .. :try_end_150} :catchall_15b

    if-ne v10, v0, :cond_157

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    goto :goto_145

    :cond_157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_160

    :catchall_15b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_160
    :goto_160
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "missed_count"

    invoke-virtual {v15, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_169
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v1, p1

    move/from16 v6, p16

    move-object/from16 v7, p17

    invoke-static {v1, v0, v15, v6, v7}, Lmiui/provider/ExtraContacts;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add call "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v8, v4

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T9"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v0 .. v23}, Lmiui/provider/ExtraContacts$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
