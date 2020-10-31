.class final Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;
.super Ljava/lang/Object;
.source "MultiClientInputMethodClientCallbackAdaptor.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyEventCallbackAdaptor"
.end annotation


# instance fields
.field private final mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;->mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;->mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;->mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;->mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p3}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onKeyMultiple(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/MultiClientInputMethodClientCallbackAdaptor$KeyEventCallbackAdaptor;->mLocalCallback:Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;

    invoke-interface {v0, p1, p2}, Landroid/inputmethodservice/MultiClientInputMethodServiceDelegate$ClientCallback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
