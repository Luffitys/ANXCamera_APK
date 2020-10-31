.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILConstants$zIAjDPNpW8a5C22QbMmMwM64vD8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/telephony/RILConstants;->lambda$static$0(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
