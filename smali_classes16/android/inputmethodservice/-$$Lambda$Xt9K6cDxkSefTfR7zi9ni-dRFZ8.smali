.class public final synthetic Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$Xt9K6cDxkSefTfR7zi9ni-dRFZ8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    check-cast p2, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->startInputOrWindowGainedFocus(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method
