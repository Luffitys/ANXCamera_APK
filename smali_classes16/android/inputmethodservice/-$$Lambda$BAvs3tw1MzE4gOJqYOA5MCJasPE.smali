.class public final synthetic Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$BAvs3tw1MzE4gOJqYOA5MCJasPE;

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

    check-cast p2, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method
