.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;->INSTANCE:Landroid/telephony/-$$Lambda$SubscriptionManager$wql9r4zMYyVpqqNWW9Wt35fzC-w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->lambda$removeSubscriptionsFromGroup$9(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
