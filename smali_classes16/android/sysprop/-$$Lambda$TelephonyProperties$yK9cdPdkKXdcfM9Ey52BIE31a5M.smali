.class public final synthetic Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;->INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$yK9cdPdkKXdcfM9Ey52BIE31a5M;

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

    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->lambda$operator_iso_country$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
