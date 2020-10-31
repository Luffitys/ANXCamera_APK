.class final Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;
.super Lcom/android/internal/view/inline/IInlineContentCallback$Stub;
.source "InlineSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineContentCallbackWrapper"
.end annotation


# instance fields
.field private final mCallbackImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onClick()V

    :cond_d
    return-void
.end method

.method public onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    :cond_d
    return-void
.end method

.method public onLongClick()V
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;->mCallbackImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->onLongClick()V

    :cond_d
    return-void
.end method
