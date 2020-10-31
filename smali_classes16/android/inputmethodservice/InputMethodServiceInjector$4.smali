.class Landroid/inputmethodservice/InputMethodServiceInjector$4;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->addDisplayListener(Landroid/content/Context;)V
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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$4;->val$context:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$3200(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$4;->val$context:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$400(Landroid/content/Context;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
