.class public final synthetic Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;->INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$IXXeurR2RYGE-SGrj5Hv6VG1UF4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->lambda$sms_receive$15(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
