.class public final synthetic Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;

    invoke-direct {v0}, Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;-><init>()V

    sput-object v0, Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;->INSTANCE:Landroid/service/autofill/-$$Lambda$I0gCKFrBTO70VZfSZTq2fj-wyG8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/service/autofill/AutofillService;

    check-cast p2, Landroid/service/autofill/FillRequest;

    check-cast p3, Landroid/os/CancellationSignal;

    check-cast p4, Landroid/service/autofill/FillCallback;

    invoke-virtual {p1, p2, p3, p4}, Landroid/service/autofill/AutofillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V

    return-void
.end method
