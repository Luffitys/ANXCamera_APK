.class Landroid/inputmethodservice/InputMethodServiceInjector$2;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->setPrimaryClipChangedListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clipboardManager:Landroid/content/ClipboardManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$clipboardManager:Landroid/content/ClipboardManager;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "setPrimaryClipChangedListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;-><init>(Landroid/inputmethodservice/InputMethodServiceInjector$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
