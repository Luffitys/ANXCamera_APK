.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILConstants$ODSbRKyUeaOFMcez-ZudOmaKCBw;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/internal/telephony/RILConstants;->lambda$static$1(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
