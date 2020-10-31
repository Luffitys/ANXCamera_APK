.class public final synthetic Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;->INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$EV4LSOwY7Dsh1rJalZDLmnGJw5I;

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

    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->lambda$operator_numeric$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
