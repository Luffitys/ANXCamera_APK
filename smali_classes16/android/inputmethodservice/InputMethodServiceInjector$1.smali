.class Landroid/inputmethodservice/InputMethodServiceInjector$1;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V
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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$1;->val$context:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->setMiuiBottomMargin(Landroid/content/Context;)V
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$000(Landroid/content/Context;)V

    return-void
.end method
