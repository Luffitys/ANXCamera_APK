.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$CarrierAppUtils$oAca0vwfzY3MLxvgrejL5_ugnfc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierAppUtils;->lambda$disableCarrierAppsUntilPrivileged$0(Ljava/lang/Boolean;)V

    return-void
.end method
