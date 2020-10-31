.class public final synthetic Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$m1uOlwS-mRsg9KSUY6vV9l9ksWc;

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

    check-cast p3, Landroid/os/ResultReceiver;

    invoke-virtual {p1, p2, p3}, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$CallbackImpl;->showSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method
