.class public Lmiui/hybrid/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private action:Ljava/lang/String;

.field private callback:Lmiui/hybrid/Callback;

.field private nativeInterface:Lmiui/hybrid/NativeInterface;

.field private pageContext:Lmiui/hybrid/PageContext;

.field private rawParams:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getCallback()Lmiui/hybrid/Callback;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->callback:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method public getNativeInterface()Lmiui/hybrid/NativeInterface;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->nativeInterface:Lmiui/hybrid/NativeInterface;

    return-object v0
.end method

.method public getPageContext()Lmiui/hybrid/PageContext;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->pageContext:Lmiui/hybrid/PageContext;

    return-object v0
.end method

.method public getRawParams()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->rawParams:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/hybrid/Request;->view:Landroid/view/View;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->action:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lmiui/hybrid/Callback;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->callback:Lmiui/hybrid/Callback;

    return-void
.end method

.method public setNativeInterface(Lmiui/hybrid/NativeInterface;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->nativeInterface:Lmiui/hybrid/NativeInterface;

    return-void
.end method

.method public setPageContext(Lmiui/hybrid/PageContext;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->pageContext:Lmiui/hybrid/PageContext;

    return-void
.end method

.method public setRawParams(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->rawParams:Ljava/lang/String;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/Request;->view:Landroid/view/View;

    return-void
.end method
