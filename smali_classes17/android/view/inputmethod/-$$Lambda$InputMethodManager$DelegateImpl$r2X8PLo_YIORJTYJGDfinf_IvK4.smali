.class public final synthetic Landroid/view/inputmethod/-$$Lambda$InputMethodManager$DelegateImpl$r2X8PLo_YIORJTYJGDfinf_IvK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$DelegateImpl$r2X8PLo_YIORJTYJGDfinf_IvK4;->f$0:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    iput-object p2, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$DelegateImpl$r2X8PLo_YIORJTYJGDfinf_IvK4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$DelegateImpl$r2X8PLo_YIORJTYJGDfinf_IvK4;->f$0:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    iget-object v1, p0, Landroid/view/inputmethod/-$$Lambda$InputMethodManager$DelegateImpl$r2X8PLo_YIORJTYJGDfinf_IvK4;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->lambda$startInput$0$InputMethodManager$DelegateImpl(Landroid/view/View;)V

    return-void
.end method
