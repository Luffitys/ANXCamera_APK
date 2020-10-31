.class public Landroid/provider/BlockedNumberContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract;,
        Landroid/provider/BlockedNumberContract$BlockStatus;,
        Landroid/provider/BlockedNumberContract$BlockedNumbers;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.blockednumber"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final EXTRA_CALL_PRESENTATION:Ljava/lang/String; = "extra_call_presentation"

.field public static final EXTRA_CONTACT_EXIST:Ljava/lang/String; = "extra_contact_exist"

.field public static final EXTRA_ENHANCED_SETTING_KEY:Ljava/lang/String; = "extra_enhanced_setting_key"

.field public static final EXTRA_ENHANCED_SETTING_VALUE:Ljava/lang/String; = "extra_enhanced_setting_value"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS:Ljava/lang/String; = "can_current_user_block_numbers"

.field public static final METHOD_IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final METHOD_UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final RES_BLOCK_STATUS:Ljava/lang/String; = "block_status"

.field public static final RES_CAN_BLOCK_NUMBERS:Ljava/lang/String; = "can_block"

.field public static final RES_ENHANCED_SETTING_IS_ENABLED:Ljava/lang/String; = "enhanced_setting_enabled"

.field public static final RES_NUMBER_IS_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final RES_NUM_ROWS_DELETED:Ljava/lang/String; = "num_deleted"

.field public static final RES_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final STATUS_BLOCKED_IN_LIST:I = 0x1

.field public static final STATUS_BLOCKED_NOT_IN_CONTACTS:I = 0x5

.field public static final STATUS_BLOCKED_PAYPHONE:I = 0x4

.field public static final STATUS_BLOCKED_RESTRICTED:I = 0x2

.field public static final STATUS_BLOCKED_UNKNOWN_NUMBER:I = 0x3

.field public static final STATUS_NOT_BLOCKED:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.blockednumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-class v0, Landroid/provider/BlockedNumberContract;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "can_current_user_block_numbers"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "can_block"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_16} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_16} :catch_1a

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    :catch_1a
    move-exception v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "canCurrentUserBlockNumbers: provider not ready."

    invoke-static {v0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "is_blocked"

    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    const-string v4, "blocked"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v3

    goto :goto_1c

    :cond_1b
    move v4, v1

    :goto_1c
    sget-object v5, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isBlocked: phoneNumber=%s, isBlocked=%b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_32} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_32} :catch_33

    return v4

    :catch_33
    move-exception v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "isBlocked: provider not ready."

    invoke-static {v0, v4, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static unblock(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "unblock: phoneNumber=%s"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "unblock"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, p1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "num_deleted"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method
