.class public Lcom/android/internal/telephony/SmsApplicationInjector;
.super Ljava/lang/Object;
.source "SmsApplicationInjector.java"


# static fields
.field private static final IGNORE_PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "com.xiaomi.xmsf"

    const-string v1, "com.miui.cloudservice"

    const-string v2, "com.miui.networkassistant"

    const-string v3, "com.miui.yellowpage"

    const-string v4, "com.miui.securitycenter"

    const-string v5, "com.xiaomi.simactivate.service"

    const-string v6, "com.android.mms"

    const-string v7, "com.xiaomi.finddevice"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isIgnoreSmsStorageApplication(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/internal/telephony/SmsApplicationInjector;->IGNORE_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
