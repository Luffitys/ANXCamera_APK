.class public final synthetic Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$n8U3GjMW_nvrfe7Z6T3PZXOJb5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$n8U3GjMW_nvrfe7Z6T3PZXOJb5o;->f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$InlineContentCallbackImpl$n8U3GjMW_nvrfe7Z6T3PZXOJb5o;->f$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->lambda$handleOnFirstContentReceived$1$InlineSuggestion$InlineContentCallbackImpl()V

    return-void
.end method
