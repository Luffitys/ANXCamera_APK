.class public Lmiui/provider/MiProfile;
.super Ljava/lang/Object;
.source "MiProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/MiProfile$Video;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:Ljava/lang/String; = "com.miui.cloudservice.miprofile.action.DELETE"

.field public static final ACTION_MESSENGER:Ljava/lang/String; = "com.miui.cloudservice.miprofile.action.MESSENGER"

.field public static final ACTION_NEW_REQUEST:Ljava/lang/String; = "com.android.contacts.miprofile.action.NEWREQUEST"

.field public static final ACTION_REQUEST_AGREED:Ljava/lang/String; = "com.android.contacts.miprofile.action.REQUEST_AGREED"

.field public static final ERROR_CODE_MIPROFILE_ACCEPT_SELF:I = 0x7d68

.field public static final ERROR_CODE_MIPROFILE_NOT_FOUND:I = 0x2718

.field public static final ERROR_CODE_MIPROFILE_NOT_OPENED:I = 0x7d64

.field public static final ERROR_CODE_MIPROFILE_NOT_SET:I = 0x7d65

.field public static final ERROR_CODE_NONE:I = 0x0

.field public static final ERROR_CODE_NO_MIACCOUNT:I = -0x2

.field public static final ERROR_CODE_PDC_INVALID_SIZE:I = 0x2718

.field public static final ERROR_CODE_UNKNOWN:I = -0x1

.field public static final EXTRA_BOOLEAN_MIPROFILE:Ljava/lang/String; = "EXTRA_BOOLEAN_MIPROFILE"

.field public static final EXTRA_INT_MIPROFILE:Ljava/lang/String; = "EXTRA_INT_MIPROFILE"

.field public static final EXTRA_MIPROFILE_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_MIPROFILE_NICKNAME:Ljava/lang/String; = "nickName"

.field public static final EXTRA_NEW_REQUEST_COUNT:Ljava/lang/String; = "EXTRA_NEW_REQUEST_COUNT"

.field public static final EXTRA_NEW_REQUEST_NAME:Ljava/lang/String; = "EXTRA_NEW_REQUEST_NAME"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "phoneNumber"

.field public static final EXTRA_RELATED_CONTACTS:Ljava/lang/String; = "relatedContacts"

.field public static final EXTRA_REQUEST_AGREED_CONTACT_NAME:Ljava/lang/String; = "EXTRA_REQUEST_AGREED_CONTACT_NAME"

.field public static final EXTRA_REQUEST_AGREED_CONTACT_URI:Ljava/lang/String; = "EXTRA_REQUEST_AGREED_CONTACT_URI"

.field public static final EXTRA_SKIP_COMPRESS:Ljava/lang/String; = "EXTRA_SKIP_COMPRESS"

.field public static final EXTRA_STRING_MIPROFILE:Ljava/lang/String; = "EXTRA_STRING_MIPROFILE"

.field public static final EXTRA_URI_MIPROFILE:Ljava/lang/String; = "EXTRA_URI_MIPROFILE"

.field public static final MIPROFILE_ACCEPTTIME:Ljava/lang/String; = "acceptTime"

.field public static final MIPROFILE_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi.miprofile"

.field public static final MIPROFILE_CREATETIME:Ljava/lang/String; = "createTime"

.field public static final MIPROFILE_EXPIRETIME:Ljava/lang/String; = "expireTime"

.field public static final MIPROFILE_HASUPDATE:Ljava/lang/String; = "hasUpdate"

.field public static final MIPROFILE_ID:Ljava/lang/String; = "_id"

.field public static final MIPROFILE_IGNORE:Ljava/lang/String; = "ignore"

.field public static final MIPROFILE_INITIAL_SYNC:Ljava/lang/String; = "miprofile_initial_sync"

.field public static final MIPROFILE_JSON:Ljava/lang/String; = "json"

.field public static final MIPROFILE_NAME:Ljava/lang/String; = "name"

.field public static final MIPROFILE_NUMBER:Ljava/lang/String; = "number"

.field public static final MIPROFILE_NUMBERS_TABLE:Ljava/lang/String; = "miprofile_numbers"

.field public static final MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

.field public static final MIPROFILE_READ:Ljava/lang/String; = "read"

.field public static final MIPROFILE_RECOMMEND_STATUS_VERIFIED:Ljava/lang/String; = "verified"

.field public static final MIPROFILE_RECOMMEND_STATUS_VERIFYING:Ljava/lang/String; = "verifying"

.field public static final MIPROFILE_SID:Ljava/lang/String; = "sid"

.field public static final MIPROFILE_SOURCEID:Ljava/lang/String; = "default"

.field public static final MIPROFILE_STATUS:Ljava/lang/String; = "status"

.field public static final MIPROFILE_TABLE:Ljava/lang/String; = "miprofile"

.field public static final MIPROFILE_TYPE:Ljava/lang/String; = "type"

.field public static final MIPROFILE_TYPE_RECOMMEND:Ljava/lang/String; = "Recommend"

.field public static final MIPROFILE_TYPE_REQUEST:Ljava/lang/String; = "Request"

.field public static final MIPROFILE_TYPE_SEND:Ljava/lang/String; = "SendCard"

.field public static final MIPROFILE_TYPE_SNAPSHOT:Ljava/lang/String; = "Snapshot"

.field public static final MIPROFILE_URI:Landroid/net/Uri;

.field public static final MSG_REQUEST_ACCEPT_MIPROFILE:I = 0x9

.field public static final MSG_REQUEST_BATCH_REQUEST:I = 0x14

.field public static final MSG_REQUEST_BINDED_NUMBER:I = 0x10

.field public static final MSG_REQUEST_CHECK_MIPROFILE:I = 0x5

.field public static final MSG_REQUEST_DELETE_MIPROFILE:I = 0xb

.field public static final MSG_REQUEST_INIT_RECOMMEND:I = 0x13

.field public static final MSG_REQUEST_READ_MIPROFILE:I = 0xf

.field public static final MSG_REQUEST_REQUEST_MIPROFILE:I = 0x7

.field public static final MSG_REQUEST_SAVE_MIPROFILE:I = 0x1

.field public static final MSG_REQUEST_SHARE_MIPROFILE:I = 0xd

.field public static final MSG_REQUEST_SWITCH_MIPROFILE:I = 0x3

.field public static final MSG_REQUEST_UPDATE_NICKNAME:I = 0x12

.field public static final MSG_RESPONSE_ACCEPT_MIPROFILE:I = 0xa

.field public static final MSG_RESPONSE_BATCH_REQUEST:I = 0x15

.field public static final MSG_RESPONSE_BINDED_NUMBER:I = 0x11

.field public static final MSG_RESPONSE_CHECK_MIPROFILE:I = 0x6

.field public static final MSG_RESPONSE_DELETE_MIPROFILE:I = 0xc

.field public static final MSG_RESPONSE_REQUEST_MIPROFILE:I = 0x8

.field public static final MSG_RESPONSE_SAVE_MIPROFILE:I = 0x2

.field public static final MSG_RESPONSE_SHARE_MIPROFILE:I = 0xe

.field public static final MSG_RESPONSE_SWITCH_MIPROFILE:I = 0x4

.field public static final PACKAGE_SCOPE_CLOUDSERVICE:Ljava/lang/String; = "com.miui.cloudservice"

.field public static final PHOTO_TYPE_BIG:Ljava/lang/String; = "photo"

.field public static final PHOTO_TYPE_SMALL:Ljava/lang/String; = "thumbnail"

.field public static final SETTINGS_MIPROFILE_BADGE_NOTICE:Ljava/lang/String; = "miprofile.settings.miprofile_badge_notice"

.field public static final SETTINGS_MIPROFILE_ON:Ljava/lang/String; = "miprofile.settings.miprofile_on"

.field public static final SETTINGS_MIPROFILE_RECOMMEND_INITED:Ljava/lang/String; = "miprofile.settings.miprofile_recommend_inited"

.field public static final SETTINGS_MIPROFILE_SET:Ljava/lang/String; = "miprofile.settings.miprofile_set"

.field public static final SETTINGS_MIPROFILE_USER_NOTICE:Ljava/lang/String; = "miprofile.settings.miprofile_user_notice"

.field public static final SETTINGS_MIPROFILE_VISIBLE:Ljava/lang/String; = "miprofile.settings.miprofile_visible"

.field public static final TAG:Ljava/lang/String; = "MiProfile"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "miprofile"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/MiProfile;->MIPROFILE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "miprofile_numbers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/MiProfile;->MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .registers 2

    invoke-static {}, Lmiui/provider/MiProfile;->isPad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_15

    const-string v0, "IN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private static isPad()Z
    .registers 2

    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
