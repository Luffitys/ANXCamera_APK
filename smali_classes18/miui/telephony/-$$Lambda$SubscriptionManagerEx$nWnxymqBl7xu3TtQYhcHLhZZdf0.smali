.class public final synthetic Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;

    invoke-direct {v0}, Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;-><init>()V

    sput-object v0, Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;->INSTANCE:Lmiui/telephony/-$$Lambda$SubscriptionManagerEx$nWnxymqBl7xu3TtQYhcHLhZZdf0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p2}, Lmiui/telephony/SubscriptionManagerEx;->lambda$static$0(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method
