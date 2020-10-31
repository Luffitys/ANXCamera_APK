.class public final Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;
.super Ljava/lang/Object;
.source "MultiClientInputMethodServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;,
        Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;
    }
.end annotation


# static fields
.field public static final INVALID_CLIENT_ID:I = -0x1

.field public static final INVALID_WINDOW_HANDLE:I = -0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.inputmethodservice.MultiClientInputMethodService"


# instance fields
.field private final mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-direct {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;-><init>(Landroid/content/Context;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;)V

    iput-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;)Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;
    .registers 3

    new-instance v0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;

    invoke-direct {v0, p0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;-><init>(Landroid/content/Context;Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ServiceCallback;)V

    return-object v0
.end method


# virtual methods
.method public acceptClient(ILandroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;Landroid/view/KeyEvent$DispatcherState;Landroid/os/Looper;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->acceptClient(ILandroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;Landroid/view/KeyEvent$DispatcherState;Landroid/os/Looper;)V

    return-void
.end method

.method public createInputMethodWindowToken(I)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->createInputMethodWindowToken(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->isUidAllowedOnDisplay(II)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public reportImeWindowTarget(IILandroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->reportImeWindowTarget(IILandroid/os/IBinder;)V

    return-void
.end method

.method public setActive(IZ)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate;->mImpl:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;->setActive(IZ)V

    return-void
.end method
