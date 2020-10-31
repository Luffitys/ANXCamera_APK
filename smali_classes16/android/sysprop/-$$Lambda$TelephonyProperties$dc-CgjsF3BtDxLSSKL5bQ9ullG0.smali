.class public final synthetic Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;

    invoke-direct {v0}, Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;-><init>()V

    sput-object v0, Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;->INSTANCE:Landroid/sysprop/-$$Lambda$TelephonyProperties$dc-CgjsF3BtDxLSSKL5bQ9ullG0;

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

    invoke-static {p1}, Landroid/sysprop/TelephonyProperties;->lambda$icc_operator_numeric$7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
