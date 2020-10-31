.class public final synthetic Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$RawqPImrGiEy8dXqjapbiFcFS9w;

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

    check-cast p2, [Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method
