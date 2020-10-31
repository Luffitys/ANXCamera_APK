.class Landroid/inputmethodservice/InputMethodServiceInjector$3;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$3;->val$context:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2900()Z

    move-result v1

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$3000(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1102(Z)Z

    return-void
.end method
