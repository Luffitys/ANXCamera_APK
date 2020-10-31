.class public final synthetic Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/BatteryStats$IntToString;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;

    invoke-direct {v0}, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;->INSTANCE:Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsString(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
