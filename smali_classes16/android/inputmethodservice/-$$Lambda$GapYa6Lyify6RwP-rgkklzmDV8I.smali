.class public final synthetic Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$GapYa6Lyify6RwP-rgkklzmDV8I;

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

    check-cast p1, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->toggleSoftInput(II)V

    return-void
.end method
