.class public final synthetic Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;

    invoke-direct {v0}, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;-><init>()V

    sput-object v0, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;

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

    check-cast p1, Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->lambda$onDisconnected$1(Ljava/lang/Object;)V

    return-void
.end method
