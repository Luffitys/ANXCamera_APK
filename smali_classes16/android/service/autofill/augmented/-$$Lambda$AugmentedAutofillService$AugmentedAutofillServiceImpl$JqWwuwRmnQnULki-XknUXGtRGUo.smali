.class public final synthetic Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;

    invoke-direct {v0}, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;-><init>()V

    sput-object v0, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;

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

    invoke-static {p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->lambda$onDestroyAllFillWindowsRequest$3(Ljava/lang/Object;)V

    return-void
.end method
