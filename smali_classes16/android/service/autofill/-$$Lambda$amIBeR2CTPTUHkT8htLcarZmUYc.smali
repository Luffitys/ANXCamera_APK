.class public final synthetic Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;->INSTANCE:Landroid/service/autofill/-$$Lambda$amIBeR2CTPTUHkT8htLcarZmUYc;

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

    check-cast p1, Landroid/service/autofill/AutofillService;

    invoke-virtual {p1}, Landroid/service/autofill/AutofillService;->onConnected()V

    return-void
.end method
