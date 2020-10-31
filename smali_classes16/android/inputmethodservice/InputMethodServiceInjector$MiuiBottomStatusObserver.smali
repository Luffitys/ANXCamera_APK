.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiBottomStatusObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const-string v0, "InputMethodService"

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_5
    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$100()Z

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->isMiuiBottomEnabled(Landroid/content/Context;)Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$200(Landroid/content/Context;)Z

    move-result v2

    # setter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$102(Z)Z

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->isNavigationBarFullScreen(Landroid/content/Context;)Z
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$300(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineSupport(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineEnable(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$400(Landroid/content/Context;)V

    if-nez v1, :cond_3b

    # getter for: Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "Add miui bottom view."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$500(Landroid/content/Context;)V

    :cond_3b
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$600(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_56

    :catch_41
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to read user miui bottom choice, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method
