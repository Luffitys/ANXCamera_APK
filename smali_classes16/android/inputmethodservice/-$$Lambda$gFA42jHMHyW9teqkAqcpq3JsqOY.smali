.class public final synthetic Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;

    invoke-direct {v0}, Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;-><init>()V

    sput-object v0, Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;->INSTANCE:Landroid/inputmethodservice/-$$Lambda$gFA42jHMHyW9teqkAqcpq3JsqOY;

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

    check-cast p1, Landroid/inputmethodservice/InlineSuggestionSession;

    check-cast p2, Landroid/view/autofill/AutofillId;

    check-cast p3, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-virtual {p1, p2, p3}, Landroid/inputmethodservice/InlineSuggestionSession;->handleOnInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    return-void
.end method
