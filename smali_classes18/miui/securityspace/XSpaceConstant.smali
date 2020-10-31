.class public Lmiui/securityspace/XSpaceConstant;
.super Ljava/lang/Object;
.source "XSpaceConstant.java"


# static fields
.field public static final GMS_RELATED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIAL_APPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final XSPACE_PACKAGES_SHARED_GID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final XSPACE_WHITELIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_PACKAGES_SHARED_GID:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.carrot.iceworld"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.szgd.UltraManRunawayWar.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.kiloo.subwaysurf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.duowan.groundhog.mctools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.DBGame.DiabloLOL.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.pingan.pinganwifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.sitech.ac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "cmb.pb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.cib.qdzg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.rxcq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.sfpay.mobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tongbanjie.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.webank.wemoney"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.lcwx.xm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.cmbchina.ccd.pluto.cmbActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.carrot3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "org.cocos2d.fishingjoy3.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.yodo1.skisafari2.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.game.rhythmmaster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.wequiz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.gamehelper.nz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.soulgame.bubble"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.qjnn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.WeFire"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.Mtown"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.imangi.templerun2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.halfbrick.fruitninja"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.peng"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.game.SSGame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.Alice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.RunGame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.ttx5.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.brianbaek.popstar.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.inputmethod.hindi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.inputmethod.pinyin"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.mi.globalbrowser"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.mi.global.shop"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.duokan.phone.remotecontroller"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.miui.player"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "cn.wps.moffice_eng"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.inputmethod.zhuyin"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.touchtype.swiftkey"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.cleanmaster.mguard_cn"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.mi.misupport"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.tachyon"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.scanner"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.cmcm.indianews_for_oem"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.notes"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.scanner"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.email"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.compass"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.calculator"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.miui.weather2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.pass"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.miui.cleanmaster"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.miui.screenrecorder"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.yidian.xiaomi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.duokan.reader"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.youtube"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.marvin.talkback"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.videos"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.talk"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.google.android.gm"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v2, "com.miui.virtualsim"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v2, "com.android.keychain"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v2, "com.google.android.webview"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v2, "com.android.webview"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v2, "com.google.android.packageinstaller"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycore"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v4, "com.miui.analytics"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v4, "com.miui.contentcatcher"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v4, "com.miui.rom"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v4, "com.tencent.soter.soterserver"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v4, "org.ifaa.aidl.manager"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v4, "com.google.android.providers.media.module"

    if-eqz v0, :cond_2a6

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v1, "com.google.android.permissioncontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ad

    :cond_2a6
    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string v1, "com.android.permissioncontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2ad
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.packageinstaller.permission.ui.ManagePermissionsActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.miui.xspace.receiver.MediaScannerReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.xspace.receiver.InstallShortcutReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string v3, "com.google.android.gsf"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_2f0

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string v3, "com.google.android.gsf.login"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f0
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.whatsapp"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "net.one97.paytm"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.facebook.katana"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.instagram.android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.facebook.orca"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.phonepe.app"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.gbwhatsapp"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.mobile.legends"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.vkontakte.android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.tencent.ig"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.lenovo.anyshare.gps"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.zhiliaoapp.musically"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.nemo.vidmate"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.UCMobile.intl"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.mxtech.videoplayer.ad"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.facebook.lite"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "in.startv.hotstar"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.jio.media.jiobeats"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "video.like"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.dts.freefireth"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.truecaller"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.smile.gifmaker"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.sina.weibo"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.ss.android.ugc.aweme"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.tencent.tmgp.sgame"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.tencent.karaoke"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string v3, "com.immomo.momo"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_PACKAGES_SHARED_GID:Ljava/util/ArrayList;

    const-string v3, "com.android.providers.media.module"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_PACKAGES_SHARED_GID:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_PACKAGES_SHARED_GID:Ljava/util/ArrayList;

    const-string v3, "com.android.providers.media"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
