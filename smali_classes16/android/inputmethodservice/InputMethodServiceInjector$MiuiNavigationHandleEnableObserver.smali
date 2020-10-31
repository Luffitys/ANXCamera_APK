.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiNavigationHandleEnableObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineEnable(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;->mContext:Landroid/content/Context;

    # invokes: Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$400(Landroid/content/Context;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isShowNavigationHandle()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateBottomMargin(I)V

    :cond_17
    return-void
.end method
