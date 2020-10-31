.class public final synthetic Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$50K3nJOOPDYkhKRI6jLQ5NjnbLU;

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

    check-cast p1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    invoke-virtual {p1}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->finishSession()V

    return-void
.end method
