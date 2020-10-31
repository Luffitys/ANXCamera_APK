.class public final synthetic Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;->INSTANCE:Landroid/service/autofill/-$$Lambda$KrOZIsyY-3lh3prHWFldsWopHBw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/service/autofill/AutofillService;

    check-cast p2, Landroid/service/autofill/SaveRequest;

    check-cast p3, Landroid/service/autofill/SaveCallback;

    invoke-virtual {p1, p2, p3}, Landroid/service/autofill/AutofillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V

    return-void
.end method
