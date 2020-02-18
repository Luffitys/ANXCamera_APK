.class public Lcom/ss/android/ugc/effectmanager/common/EffectConstants;
.super Ljava/lang/Object;
.source "EffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/common/EffectConstants$HTTP_METHOD;,
        Lcom/ss/android/ugc/effectmanager/common/EffectConstants$INTERCEPTION_NAME;,
        Lcom/ss/android/ugc/effectmanager/common/EffectConstants$TASK_TYPE;
    }
.end annotation


# static fields
.field public static final CHANNEL_LOCAL_TEST:Ljava/lang/String; = "local_test"

.field public static final CHANNEL_ONLINE:Ljava/lang/String; = "online"

.field public static final CHANNEL_TEST:Ljava/lang/String; = "test"

.field public static final COMPRESSED_FILE_SUFFIX:Ljava/lang/String; = ".zip"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final EFFECT_CANCEL:I = 0x16

.field public static final EFFECT_CHANNEL_CANCEL:I = 0x19

.field public static final EFFECT_CHANNEL_DOWNLOAD:I = 0x17

.field public static final EFFECT_CHANNEL_DOWNLOADING:I = 0x18

.field public static final EFFECT_CHANNEL_DOWNLOAD_FAILED:I = 0x1b

.field public static final EFFECT_DOWNLOADED:I = 0x14

.field public static final EFFECT_DOWNLOADING:I = 0x15

.field public static final EFFECT_DOWNLOAD_FAILED:I = 0x1a

.field public static final EFFECT_TYPE_COLLECT:I = 0x1

.field public static final EFFECT_TYPE_NORMAL:I = 0x0

.field public static final EFFECT_TYPE_SCHEME:I = 0x2

.field public static final FINAL_SPEED_MEASURE:I = 0x1f

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final GIF_FILE_SUFFIX:Ljava/lang/String; = ".gif"

.field public static final KEY_CATEGORY_VERSION:Ljava/lang/String; = "category_version"

.field public static final KEY_EFFECT_CHANNEL:Ljava/lang/String; = "effectchannel"

.field public static final KEY_EFFECT_UPDATE_TIME:Ljava/lang/String; = "updatetime"

.field public static final KEY_EFFECT_VERSION:Ljava/lang/String; = "effect_version"

.field public static final LINK_SELECTOR:Ljava/lang/String; = "LINK_SELECTOR"

.field public static final MSG_CATEGORY_EFFECT_LIST:I = 0x15

.field public static final MSG_CHECK_UPDATE:I = 0xd

.field public static final MSG_DOWNLOAD_EFFECT:I = 0xf

.field public static final MSG_DOWNLOAD_EFFECT_LIST:I = 0x11

.field public static final MSG_DOWNLOAD_PROVIDER_EFFECT:I = 0x13

.field public static final MSG_DOWNLOAD_PROVIDER_EFFECT_LIST:I = 0x14

.field public static final MSG_EFFECT_LIST:I = 0xe

.field public static final MSG_EFFECT_START:I = 0x2a

.field public static final MSG_EXIST_EFFECT:I = 0x10

.field public static final MSG_FAVORITE:I = 0x28

.field public static final MSG_FAVORITE_LIST:I = 0x29

.field public static final MSG_PANEL_INFO:I = 0x16

.field public static final MSG_PROVIDER_EFFECT_LIST:I = 0x12

.field public static final MSG_READ_TAG:I = 0x34

.field public static final MSG_SIGNGLE_URL_SPEED_MEASURE:I = 0x1e

.field public static final MSG_WRITE_TAG:I = 0x33

.field public static final NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final PATCH:Ljava/lang/String; = "PATCH"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final ROUTE_CATEGORY_CHECK_UPDATE:Ljava/lang/String; = "/category/check"

.field public static final ROUTE_CATEGORY_EFFECT:Ljava/lang/String; = "/category/effects"

.field public static final ROUTE_CHECK_UPDATE:Ljava/lang/String; = "/checkUpdate"

.field public static final ROUTE_CHECK_UPDATE_PAGE:Ljava/lang/String; = "/panel/check"

.field public static final ROUTE_EFFECT_LIST:Ljava/lang/String; = "/v3/effects"

.field public static final ROUTE_FAVORITE:Ljava/lang/String; = "/v3/effect/favorite"

.field public static final ROUTE_FAVORITE_LIST:Ljava/lang/String; = "/v3/effect/my"

.field public static final ROUTE_FILTER_LIST:Ljava/lang/String; = "/filters"

.field public static final ROUTE_LIST:Ljava/lang/String; = "/v3/effect/list"

.field public static final ROUTE_PANEL_INFO:Ljava/lang/String; = "/panel/info"

.field public static final ROUTE_PROVIDER_LIST:Ljava/lang/String; = "/stickers/recommend"

.field public static final ROUTE_SEARCH_PROVIDER_LIST:Ljava/lang/String; = "/stickers/search"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
